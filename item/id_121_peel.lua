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
-- UPDATE items SET itm_script='item.id_121_peel' WHERE itm_id IN (121);

local baking = require("craft.final.baking")
local wood = require("item.general.wood")

local M = {}

M.LookAtItem = wood.LookAtItem

function M.UseItem(User, SourceItem, ltstate)
    baking.baking:showDialog(User, SourceItem)
end

return M