--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>.
]]
--Overview of queststatus:
--401 contains the ID of the god the character is devoted to
--402 contains the ID of the god the character is a priest of. MUST be equal to 401 or 0.
--403-418 contains favour (as signed int) of the corresponding god.
--419-434 contains sacrifice cumulative value of the corresponding god.

local common = require('base.common')
local globalvar = require("base.globalvar")
local class = require('base.class')
local gods_common = require("content._gods.gods_common")
local math = require("math")

local M = {}

M.BaseGod = class(
    function(self, ...)
        self:_init(...)
    end
)

function M.BaseGod:_init(ordinal)
    self.ordinal = ordinal
    self.nameDe = nil -- str, should be set in child class
    self.nameEn = nil -- str, should be set in child class
    self.descriptionDe = nil -- str, should be set in child class
    self.descriptionEn = nil -- str, should be set in child class
    self.devotionItems = nil -- array of item ids, should be set in child class
    self.sacrificeItems = {  -- array of tables defining groups of items for sacrificing
        {
            id_set = common.setFromList({ -- set of item IDs
            }),
            minimal_quality = 0, -- int in 1..9 - if present, item quality has to be greater or equal
            minimal_durability = 0, -- int in 0..99 - if present, item durability has to be greater or equal
            value_multiplier = 1, -- float -- the monetary value gets multiplied by this
        },
    }

    self._favourLevelGranularity = 50  -- name changed every X points
    self._favourLevelMax = 5
    self._favourLevelNamesEn = {}
    self._favourLevelNamesEn[-5] = "wrathful"     -- -inf .. -250
    self._favourLevelNamesEn[-4] = "very angry"   -- -249 .. -200
    self._favourLevelNamesEn[-3] = "angry"        -- -199 .. -150
    self._favourLevelNamesEn[-2] = "irritated"    -- -149 .. -100
    self._favourLevelNamesEn[-1] = "displeased"   -- -99 .. -50
    self._favourLevelNamesEn[0] = "indifferent"   -- -49 .. 49
    self._favourLevelNamesEn[1] = "pleased"       -- 50 .. 99
    self._favourLevelNamesEn[2] = "happy"         -- 100 .. 149
    self._favourLevelNamesEn[3] = "charmed"       -- 150 .. 199
    self._favourLevelNamesEn[4] = "delighted"     -- 200 .. 249
    self._favourLevelNamesEn[5] = "exalted"       -- 250 .. +inf
    self._favourLevelNamesDe = {}
    self._favourLevelNamesDe[-5] = "rasend vor Zorn"            -- -inf .. -250
    self._favourLevelNamesDe[-4] = "sehr zornig"                -- -249 .. -200
    self._favourLevelNamesDe[-3] = "w�tend"                     -- -199 .. -150
    self._favourLevelNamesDe[-2] = "entt�uscht"                 -- -149 .. -100
    self._favourLevelNamesDe[-1] = "unzufrieden"                -- -99 .. -50
    self._favourLevelNamesDe[0] = "unentschlossen"              -- -49 .. 49
    self._favourLevelNamesDe[1] = "zufrieden"                   -- 50 .. 99
    self._favourLevelNamesDe[2] = "gl�cklich"                   -- 100 .. 149
    self._favourLevelNamesDe[3] = "begeistert"                  -- 150 .. 199
    self._favourLevelNamesDe[4] = "au�erordentlich zufrieden"   -- 200 .. 249
    self._favourLevelNamesDe[5] = "�berschw�nglich vor Freude"  -- 250 .. +inf
    -- Phrases for lookAt
    local favourPhraseEn = {"%s is %s with him.", "%s is %s with her."}
    self.favourLevelPhraseEn = {}
    self.favourLevelPhraseEn[-5] = favourPhraseEn
    self.favourLevelPhraseEn[-4] = favourPhraseEn
    self.favourLevelPhraseEn[-3] = favourPhraseEn
    self.favourLevelPhraseEn[-2] = favourPhraseEn
    self.favourLevelPhraseEn[-1] = favourPhraseEn
    self.favourLevelPhraseEn[0] =  favourPhraseEn
    self.favourLevelPhraseEn[1] =  favourPhraseEn
    self.favourLevelPhraseEn[2] =  favourPhraseEn
    self.favourLevelPhraseEn[3] =  favourPhraseEn
    self.favourLevelPhraseEn[4] =  favourPhraseEn
    self.favourLevelPhraseEn[5] =  favourPhraseEn
    local favourPhraseDeUber = {"%s ist %s �ber ihn.", "%s ist %s �ber sie." }
    local favourPhraseDeMit = {"%s ist %s mit ihm.", "%s ist %s mit ihr."}
    local favourPhraseDeVon = {"%s ist %s von ihm.", "%s ist %s von ihr."}
    self.favourLevelPhraseDe = {}
    self.favourLevelPhraseDe[-5] = favourPhraseDeUber
    self.favourLevelPhraseDe[-4] = favourPhraseDeMit
    self.favourLevelPhraseDe[-3] = favourPhraseDeUber
    self.favourLevelPhraseDe[-2] = favourPhraseDeVon
    self.favourLevelPhraseDe[-1] = favourPhraseDeMit
    self.favourLevelPhraseDe[0] =  favourPhraseDeUber
    self.favourLevelPhraseDe[1] =  favourPhraseDeMit
    self.favourLevelPhraseDe[2] =  favourPhraseDeUber
    self.favourLevelPhraseDe[3] =  favourPhraseDeVon
    self.favourLevelPhraseDe[4] =  favourPhraseDeMit
    self.favourLevelPhraseDe[5] =  favourPhraseDeUber

end

function M.BaseGod:getDevotionItems(charObj)
    return self.devotionItems
end

function M.BaseGod:getFavour(charObj)
    return charObj:getQuestProgress(402 + self.ordinal)
end

function M.BaseGod:setFavour(charObj, newValue)
--    debug(self.nameEn .. " favour changes from " .. self:getFavour(charObj) .. " to " .. newValue .. " for user " .. charObj.name .. "(" .. charObj.id .. ")")
    charObj:setQuestProgress(402 + self.ordinal, newValue)
end

function M.BaseGod:getSacrificeCumulativeValue(charObj)
    return charObj:getQuestProgress(418 + self.ordinal)
end

function M.BaseGod:setSacrificeCumulativeValue(charObj, newValue)
--    debug(self.nameEn .. " sacrifice cumulative value changes from " .. self:getSacrificeCumulativeValue(charObj) .. " to " .. newValue .. " for user " .. charObj.name .. "(" .. charObj.id .. ")")
    charObj:setQuestProgress(418 + self.ordinal, newValue)
end

function M.BaseGod:_getSingleRawSacrificeValue(item)
    local itemStats = world:getItemStats(item)
    local item_monetary_worth = itemStats.Worth
    local item_durability = math.fmod(item.quality, 100)
    local item_quality = (item.quality - item_durability) / 100

    if item_monetary_worth <= 0 then
        return 0
    end

    for idx_group,group in ipairs(self.sacrificeItems) do
        if (
                (item_quality >= group.minimal_quality) and
                (item_durability >= group.minimal_durability)
        ) then
            -- item fits the criteria, let's see if it's on the list
            if group.id_set[item.id] then
                return group.value_multiplier * item_monetary_worth
            end
        end
    end
    -- not found
    return 0
end

function M.BaseGod:_getRawSacrificeValue(item)
    local singleVal = self:_getSingleRawSacrificeValue(item)
    return item.number * singleVal
end

function M.BaseGod:getFavourLevel(charObj)
    local favour = self:getFavour(charObj)
    -- we now divide and truncate towards zero
    local sign = favour >= 0 and 1 or -1
    local favourLevel = sign * math.min(self._favourLevelMax, math.floor(math.abs(favour) / self._favourLevelGranularity))
    local favourLevelNameEn = self._favourLevelNamesEn[favourLevel]
    local favourLevelNameDe = self._favourLevelNamesDe[favourLevel]
    return favourLevel, favourLevelNameEn, favourLevelNameDe
end

function M.BaseGod:informBecomeDevoted(charObj)
    common.InformNLS(charObj,
        "Ihr empfangt den Segen " .. self.nameDe .. "s und weiht euer Leben dem Glaube an die Gottheit.",
        "You receive the blessing of " .. self.nameEn .. " and devote your life to the faith in the divinity."
    )
    world:gfx(globalvar.gfxRAIN, charObj.pos)
    world:makeSound(globalvar.sfxSNARING, charObj.pos)
end

function M.BaseGod:informStopBeingDevoted(charObj)
    common.HighInformNLS(charObj,
        "Du bist kein Anh�nger von " .. self.nameDe .. " mehr.",
        "You no longer feel devoted to " .. self.nameEn .. "."
    )
    world:gfx(globalvar.gfxBLITZ, charObj.pos)
    world:makeSound(globalvar.sfxTHUNDER, charObj.pos)
end

function M.BaseGod:informBecomePriest(charObj)
    common.InformNLS(charObj,
        "Du bist nun Priester von " .. self.nameDe .. ".",
        "FIXME You are now a priest of " .. self.nameEn .. ", have fun."
    )
    world:gfx(globalvar.gfxRAIN, charObj.pos)
    world:makeSound(globalvar.sfxSNARING, charObj.pos)
end

function M.BaseGod:informStopBeingPriest(charObj)
    common.HighInformNLS(charObj,
        self.nameDe .. " wei�t deine Priesterschaft zur�ck.",
        self.nameEn .. " denies your priesthood!"
    )
    world:gfx(globalvar.gfxBLITZ, charObj.pos)
    world:makeSound(globalvar.sfxTHUNDER, charObj.pos)
end

function M.BaseGod:informSacrificeAccepted(charObj, sacrificePos)
    common.InformNLS(charObj,
        self.nameDe .. " nimmt dein Opfer an.",
        self.nameEn .. " accepts your sacrifice."
    )
    world:gfx(globalvar.gfxSUN, sacrificePos)
end

function M.BaseGod:informSacrificeNotAccepted(charObj)
    common.InformNLS(charObj,
        self.nameDe .. " ignoriert deine Opfergabe.",
        self.nameEn .. " ignores your sacrifice."
    )
end

---
-- Sacrifice an item to this god
-- Favour update is not performed, to simplify implementation of god jealousy. Instead, the needed favour change is returned.
-- The item is not erased
-- @param charObj
-- @param item  - scriptItem that is donated
-- @return favour bonus
function M.BaseGod:sacrifice(charObj, item)
    local rawVal = self:_getRawSacrificeValue(item)
    if rawVal <= 0 then
        -- item not allowed for donation
        self:informSacrificeNotAccepted(charObj)
        return 0
    end
    local oldCumulativeValue = self:getSacrificeCumulativeValue(charObj) + gods_common.SACRIFICE_VALUE_OFFSET_copper
    local newCumulativeValue = oldCumulativeValue + rawVal
    local favourBonus = math.floor(gods_common.SACRIFICE_FAVOUR_COEFFICIENT * math.log(newCumulativeValue/oldCumulativeValue))
    if favourBonus <= 0 then
        self:informSacrificeNotAccepted(charObj)
        return 0
    end
    self:informSacrificeAccepted(charObj, item.pos)

    self:setSacrificeCumulativeValue(charObj, newCumulativeValue - gods_common.SACRIFICE_VALUE_OFFSET_copper)
    return favourBonus
end

return M