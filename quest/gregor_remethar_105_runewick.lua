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
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (105, 'quest.gregor_remethar_105_runewick');

local common = require("base.common")
local factions = require("base.factions")
local M = {}

local GERMAN = Player.german
local ENGLISH = Player.english


-- Insert the quest title here, in both languages

local Title = {}
Title[GERMAN] = "Ein Licht am Ende des Tunnels"
Title[ENGLISH] = "A light at the end of the tunnel"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Gehe in die Gruft und entz�nde mindestens eines der Ehrenlichter, dann kehre zu Gregor Remethar zur�ck."
Description[ENGLISH][1] = "Go to the crypt and light at least one of the lamps in front of the urns, then return to Gregor Remethar."
Description[GERMAN][2] = "Gehe in die Gruft und entz�nde mindestens eines der Ehrenlichter erneut, dann kehre zu Gregor Remethar zur�ck."
Description[ENGLISH][2] = "Go to the crypt and light at least one of the lamps in front of the urns again, then return to Gregor Remethar."


-- Insert the position of the quest start here (probably the position of an NPC or item)
local Start = {862, 789, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[1] = {position(862, 789, 0), position(873, 796, -3), position(873, 798, -3)} -- Lights
QuestTarget[2] = {position(862, 789, 0), position(873, 796, -3), position(873, 798, -3)} -- Lights



-- Insert the quest status which is reached at the end of the quest
local FINAL_QUEST_STATUS = 2


function M.QuestTitle(user)
    return common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function M.QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return common.GetNLS(user, german, english)
end

function M.QuestStart()
    return Start
end

function M.QuestTargets(user, status)
    return QuestTarget[status]
end

function M.QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

function M.QuestAvailability(user, status)
    if factions.isRunewickCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end

return M
