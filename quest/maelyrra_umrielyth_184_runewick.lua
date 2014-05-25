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
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (184, 'quest.maelyrra_umrielyth_184_runewick');

require("base.common")
module("quest.maelyrra_umrielyth_184_runewick", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Die Forscher"
Title[ENGLISH] = "The Researcher"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}

Description[GERMAN][1] = "T�te 4 Schleime, du  brauchst noch 4 weitere."
Description[GERMAN][2] = "T�te 4 Schleime, du  brauchst noch 3 weitere."
Description[GERMAN][3] = "T�te 4 Schleime, du  brauchst noch 3 weitere."
Description[GERMAN][4] = "T�te 4 Schleime, du  brauchst noch 1 weitere."
Description[GERMAN][5] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][6] = "T�te 8 Schleime, du  brauchst noch 8 weitere."
Description[GERMAN][7] = "T�te 8 Schleime, du  brauchst noch 7 weitere."
Description[GERMAN][8] = "T�te 8 Schleime, du  brauchst noch 6 weitere."
Description[GERMAN][9] = "T�te 8 Schleime, du  brauchst noch 5 weitere."
Description[GERMAN][10] = "T�te 8 Schleime, du  brauchst noch 4 weitere."
Description[GERMAN][11] = "T�te 8 Schleime, du  brauchst noch 3 weitere."
Description[GERMAN][12] = "T�te 8 Schleime, du  brauchst noch 2 weitere."
Description[GERMAN][13] = "T�te 8 Schleime, du  brauchst noch 1 weitere."
Description[GERMAN][14] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][15] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][16] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][17] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][18] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][19] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][20] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][21] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][22] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][23] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][24] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][25] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][26] = "T�te 12 Schleime, du  brauchst noch 12 weitere."
Description[GERMAN][27] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][28] = "T�te 4 Hunde, du  brauchst noch 4 weitere."
Description[GERMAN][29] = "T�te 4 Hunde, du  brauchst noch 3 weitere."
Description[GERMAN][30] = "T�te 4 Hunde, du  brauchst noch 2 weitere."
Description[GERMAN][31] = "T�te 4 Hunde, du  brauchst noch 1 weitere."
Description[GERMAN][32] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][33] = "T�te 8 Hunde, du  brauchst noch 8 weitere."
Description[GERMAN][34] = "T�te 8 Hunde, du  brauchst noch 7 weitere."
Description[GERMAN][35] = "T�te 8 Hunde, du  brauchst noch 6 weitere."
Description[GERMAN][36] = "T�te 8 Hunde, du  brauchst noch 5 weitere."
Description[GERMAN][37] = "T�te 8 Hunde, du  brauchst noch 4 weitere."
Description[GERMAN][38] = "T�te 8 Hunde, du  brauchst noch 3 weitere."
Description[GERMAN][39] = "T�te 8 Hunde, du  brauchst noch 2 weitere."
Description[GERMAN][40] = "T�te 8 Hunde, du  brauchst noch 1 weitere."
Description[GERMAN][41] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][42] = "T�te 12 Hunde, du  brauchst noch 12 weitere."
Description[GERMAN][43] = "T�te 12 Hunde, du  brauchst noch 11 weitere."
Description[GERMAN][44] = "T�te 12 Hunde, du  brauchst noch 10 weitere."
Description[GERMAN][45] = "T�te 12 Hunde, du  brauchst noch 9 weitere."
Description[GERMAN][46] = "T�te 12 Hunde, du  brauchst noch 8 weitere."
Description[GERMAN][47] = "T�te 12 Hunde, du  brauchst noch 7 weitere."
Description[GERMAN][48] = "T�te 12 Hunde, du  brauchst noch 6 weitere."
Description[GERMAN][49] = "T�te 12 Hunde, du  brauchst noch 5 weitere."
Description[GERMAN][50] = "T�te 12 Hunde, du  brauchst noch 4 weitere."
Description[GERMAN][51] = "T�te 12 Hunde, du  brauchst noch 3 weitere."
Description[GERMAN][52] = "T�te 12 Hunde, du  brauchst noch 2 weitere."
Description[GERMAN][53] = "T�te 12 Hunde, du  brauchst noch 1 weitere."
Description[GERMAN][54] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][55] = "T�te 4 W�lfe, du  brauchst noch 4 weitere."
Description[GERMAN][56] = "T�te 4 W�lfe, du  brauchst noch 3 weitere."
Description[GERMAN][57] = "T�te 4 W�lfe, du  brauchst noch 2 weitere."
Description[GERMAN][58] = "T�te 4 W�lfe, du  brauchst noch 1 weitere."
Description[GERMAN][59] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][60] = "T�te 8 W�lfe, du  brauchst noch 8 weitere."
Description[GERMAN][61] = "T�te 8 W�lfe, du  brauchst noch 7 weitere."
Description[GERMAN][62] = "T�te 8 W�lfe, du  brauchst noch 6 weitere."
Description[GERMAN][63] = "T�te 8 W�lfe, du  brauchst noch 5 weitere."
Description[GERMAN][64] = "T�te 8 W�lfe, du  brauchst noch 4 weitere."
Description[GERMAN][65] = "T�te 8 W�lfe, du  brauchst noch 3 weitere."
Description[GERMAN][66] = "T�te 8 W�lfe, du  brauchst noch 2 weitere."
Description[GERMAN][67] = "T�te 8 W�lfe, du  brauchst noch 1 weitere."
Description[GERMAN][68] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][69] = "T�te 12 W�lfe, du  brauchst noch 12 weitere."
Description[GERMAN][70] = "T�te 12 W�lfe, du  brauchst noch 11 weitere."
Description[GERMAN][71] = "T�te 12 W�lfe, du  brauchst noch 10 weitere."
Description[GERMAN][72] = "T�te 12 W�lfe, du  brauchst noch 9 weitere."
Description[GERMAN][73] = "T�te 12 W�lfe, du  brauchst noch 8 weitere."
Description[GERMAN][74] = "T�te 12 W�lfe, du  brauchst noch 7 weitere."
Description[GERMAN][75] = "T�te 12 W�lfe, du  brauchst noch 6 weitere."
Description[GERMAN][76] = "T�te 12 W�lfe, du  brauchst noch 5 weitere."
Description[GERMAN][77] = "T�te 12 W�lfe, du  brauchst noch 4 weitere."
Description[GERMAN][78] = "T�te 12 W�lfe, du  brauchst noch 3 weitere."
Description[GERMAN][79] = "T�te 12 W�lfe, du  brauchst noch 2 weitere."
Description[GERMAN][80] = "T�te 12 W�lfe, du  brauchst noch 1 weitere."
Description[GERMAN][81] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][82] = "T�te 4 B�rin, du  brauchst noch 4 weitere."
Description[GERMAN][83] = "T�te 4 B�rin, du  brauchst noch 3 weitere."
Description[GERMAN][84] = "T�te 4 B�rin, du  brauchst noch 2 weitere."
Description[GERMAN][85] = "T�te 4 B�rin, du  brauchst noch 1 weitere."
Description[GERMAN][86] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][87] = "T�te 8 B�rin, du  brauchst noch 8 weitere."
Description[GERMAN][88] = "T�te 8 B�rin, du  brauchst noch 7 weitere."
Description[GERMAN][89] = "T�te 8 B�rin, du  brauchst noch 6 weitere."
Description[GERMAN][90] = "T�te 8 B�rin, du  brauchst noch 5 weitere."
Description[GERMAN][91] = "T�te 8 B�rin, du  brauchst noch 4 weitere."
Description[GERMAN][92] = "T�te 8 B�rin, du  brauchst noch 3 weitere."
Description[GERMAN][93] = "T�te 8 B�rin, du  brauchst noch 2 weitere."
Description[GERMAN][94] = "T�te 8 B�rin, du  brauchst noch 1 weitere."
Description[GERMAN][95] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][96] = "T�te 12 B�rin, du  brauchst noch 12 weitere."
Description[GERMAN][97] = "T�te 12 B�rin, du  brauchst noch 11 weitere."
Description[GERMAN][98] = "T�te 12 B�rin, du  brauchst noch 10 weitere."
Description[GERMAN][99] = "T�te 12 B�rin, du  brauchst noch 9 weitere."
Description[GERMAN][100] = "T�te 12 B�rin, du  brauchst noch 8 weitere."
Description[GERMAN][101] = "T�te 12 B�rin, du  brauchst noch 7 weitere."
Description[GERMAN][102] = "T�te 12 B�rin, du  brauchst noch 6 weitere."
Description[GERMAN][103] = "T�te 12 B�rin, du  brauchst noch 5 weitere."
Description[GERMAN][104] = "T�te 12 B�rin, du  brauchst noch 4 weitere."
Description[GERMAN][105] = "T�te 12 B�rin, du  brauchst noch 3 weitere."
Description[GERMAN][106] = "T�te 12 B�rin, du  brauchst noch 2 weitere."
Description[GERMAN][107] = "T�te 12 B�rin, du  brauchst noch 1 weitere."
Description[GERMAN][108] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][109] = "T�te 4 Menschen, du  brauchst noch 4 weitere."
Description[GERMAN][110] = "T�te 4 Menschen, du  brauchst noch 3 weitere."
Description[GERMAN][111] = "T�te 4 Menschen, du  brauchst noch 2 weitere."
Description[GERMAN][112] = "T�te 4 Menschen, du  brauchst noch 1 weitere."
Description[GERMAN][113] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][114] = "T�te 8 Menschen, du  brauchst noch 8 weitere."
Description[GERMAN][115] = "T�te 8 Menschen, du  brauchst noch 7 weitere."
Description[GERMAN][116] = "T�te 8 Menschen, du  brauchst noch 6 weitere."
Description[GERMAN][117] = "T�te 8 Menschen, du  brauchst noch 5 weitere."
Description[GERMAN][118] = "T�te 8 Menschen, du  brauchst noch 4 weitere."
Description[GERMAN][119] = "T�te 8 Menschen, du  brauchst noch 3 weitere."
Description[GERMAN][120] = "T�te 8 Menschen, du  brauchst noch 2 weitere."
Description[GERMAN][121] = "T�te 8 Menschen, du  brauchst noch 1 weitere."
Description[GERMAN][122] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][123] = "T�te 12 Menschen, du  brauchst noch 12 weitere."
Description[GERMAN][124] = "T�te 12 Menschen, du  brauchst noch 11 weitere."
Description[GERMAN][125] = "T�te 12 Menschen, du  brauchst noch 10 weitere."
Description[GERMAN][126] = "T�te 12 Menschen, du  brauchst noch 9 weitere."
Description[GERMAN][127] = "T�te 12 Menschen, du  brauchst noch 8 weitere."
Description[GERMAN][128] = "T�te 12 Menschen, du  brauchst noch 7 weitere."
Description[GERMAN][129] = "T�te 12 Menschen, du  brauchst noch 6 weitere."
Description[GERMAN][130] = "T�te 12 Menschen, du  brauchst noch 5 weitere."
Description[GERMAN][131] = "T�te 12 Menschen, du  brauchst noch 4 weitere."
Description[GERMAN][132] = "T�te 12 Menschen, du  brauchst noch 3 weitere."
Description[GERMAN][133] = "T�te 12 Menschen, du  brauchst noch 2 weitere."
Description[GERMAN][134] = "T�te 12 Menschen, du  brauchst noch 1 weitere."
Description[GERMAN][135] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][136] = "T�te 4 Diebe, du  brauchst noch 4 weitere."
Description[GERMAN][137] = "T�te 4 Diebe, du  brauchst noch 3 weitere."
Description[GERMAN][138] = "T�te 4 Diebe, du  brauchst noch 2 weitere."
Description[GERMAN][139] = "T�te 4 Diebe, du  brauchst noch 1 weitere."
Description[GERMAN][140] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][141] = "T�te 8 Diebe, du  brauchst noch 8 weitere."
Description[GERMAN][142] = "T�te 8 Diebe, du  brauchst noch 7 weitere."
Description[GERMAN][143] = "T�te 8 Diebe, du  brauchst noch 6 weitere."
Description[GERMAN][144] = "T�te 8 Diebe, du  brauchst noch 5 weitere."
Description[GERMAN][145] = "T�te 8 Diebe, du  brauchst noch 4 weitere."
Description[GERMAN][146] = "T�te 8 Diebe, du  brauchst noch 3 weitere."
Description[GERMAN][147] = "T�te 8 Diebe, du  brauchst noch 2 weitere."
Description[GERMAN][148] = "T�te 8 Diebe, du  brauchst noch 1 weitere."
Description[GERMAN][149] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][150] = "T�te 12 Diebe, du  brauchst noch 12 weitere."
Description[GERMAN][151] = "T�te 12 Diebe, du  brauchst noch 11 weitere."
Description[GERMAN][152] = "T�te 12 Diebe, du  brauchst noch 10 weitere."
Description[GERMAN][153] = "T�te 12 Diebe, du  brauchst noch 9 weitere."
Description[GERMAN][154] = "T�te 12 Diebe, du  brauchst noch 8 weitere."
Description[GERMAN][155] = "T�te 12 Diebe, du  brauchst noch 7 weitere."
Description[GERMAN][156] = "T�te 12 Diebe, du  brauchst noch 6 weitere."
Description[GERMAN][157] = "T�te 12 Diebe, du  brauchst noch 5 weitere."
Description[GERMAN][158] = "T�te 12 Diebe, du  brauchst noch 4 weitere."
Description[GERMAN][159] = "T�te 12 Diebe, du  brauchst noch 3 weitere."
Description[GERMAN][160] = "T�te 12 Diebe, du  brauchst noch 2 weitere."
Description[GERMAN][161] = "T�te 12 Diebe, du  brauchst noch 1 weitere."
Description[GERMAN][162] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][163] = "T�te 4 Zombies, du  brauchst noch 4 weitere."
Description[GERMAN][164] = "T�te 4 Zombies, du  brauchst noch 3 weitere."
Description[GERMAN][165] = "T�te 4 Zombies, du  brauchst noch 2 weitere."
Description[GERMAN][166] = "T�te 4 Zombies, du  brauchst noch 1 weitere."
Description[GERMAN][167] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][168] = "T�te 8 Zombies, du  brauchst noch 8 weitere."
Description[GERMAN][169] = "T�te 8 Zombies, du  brauchst noch 7 weitere."
Description[GERMAN][170] = "T�te 8 Zombies, du  brauchst noch 6 weitere."
Description[GERMAN][171] = "T�te 8 Zombies, du  brauchst noch 5 weitere."
Description[GERMAN][172] = "T�te 8 Zombies, du  brauchst noch 4 weitere."
Description[GERMAN][173] = "T�te 8 Zombies, du  brauchst noch 3 weitere."
Description[GERMAN][174] = "T�te 8 Zombies, du  brauchst noch 2 weitere."
Description[GERMAN][175] = "T�te 8 Zombies, du  brauchst noch 1 weitere."
Description[GERMAN][176] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."
Description[GERMAN][177] = "T�te 12 Zombies, du  brauchst noch 12 weitere."
Description[GERMAN][178] = "T�te 12 Zombies, du  brauchst noch 11 weitere."
Description[GERMAN][179] = "T�te 12 Zombies, du  brauchst noch 10 weitere."
Description[GERMAN][180] = "T�te 12 Zombies, du  brauchst noch 9 weitere."
Description[GERMAN][181] = "T�te 12 Zombies, du  brauchst noch 8 weitere."
Description[GERMAN][182] = "T�te 12 Zombies, du  brauchst noch 7 weitere."
Description[GERMAN][183] = "T�te 12 Zombies, du  brauchst noch 6 weitere."
Description[GERMAN][184] = "T�te 12 Zombies, du  brauchst noch 5 weitere."
Description[GERMAN][185] = "T�te 12 Zombies, du  brauchst noch 4 weitere."
Description[GERMAN][186] = "T�te 12 Zombies, du  brauchst noch 3 weitere."
Description[GERMAN][187] = "T�te 12 Zombies, du  brauchst noch 2 weitere."
Description[GERMAN][188] = "T�te 12 Zombies, du  brauchst noch 1 weitere."
Description[GERMAN][189] = "Kehre zu Maelyrra Umrielyth zur�ck, um deine Belohnung zu erhalten."

Description[ENGLISH][1] = "Kill 4 slimes you still need 4."
Description[ENGLISH][2] = "Kill 4 slimes you still need 3."
Description[ENGLISH][3] = "Kill 4 slimes you still need 2."
Description[ENGLISH][4] = "Kill 4 slimes you still need 1."
Description[ENGLISH][5] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][6] = "Kill 8 slimes you still need 8."
Description[ENGLISH][7] = "Kill 8 slimes you still need 7."
Description[ENGLISH][8] = "Kill 8 slimes you still need 6."
Description[ENGLISH][9] = "Kill 8 slimes you still need 5."
Description[ENGLISH][10] = "Kill 8 slimes you still need 4."
Description[ENGLISH][11] = "Kill 8 slimes you still need 3."
Description[ENGLISH][12] = "Kill 8 slimes you still need 2."
Description[ENGLISH][13] = "Kill 8 slimes you still need 1."
Description[ENGLISH][14] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][15] = "Kill 12 slimes you still need 12."
Description[ENGLISH][16] = "Kill 12 slimes you still need 11."
Description[ENGLISH][17] = "Kill 12 slimes you still need 10."
Description[ENGLISH][18] = "Kill 12 slimes you still need 9."
Description[ENGLISH][19] = "Kill 12 slimes you still need 8."
Description[ENGLISH][20] = "Kill 12 slimes you still need 7."
Description[ENGLISH][21] = "Kill 12 slimes you still need 6."
Description[ENGLISH][22] = "Kill 12 slimes you still need 5."
Description[ENGLISH][23] = "Kill 12 slimes you still need 4."
Description[ENGLISH][24] = "Kill 12 slimes you still need 3."
Description[ENGLISH][25] = "Kill 12 slimes you still need 2."
Description[ENGLISH][26] = "Kill 12 slimes you still need 1."
Description[ENGLISH][27] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][28] = "Kill 4 dogs you still need 4."
Description[ENGLISH][29] = "Kill 4 dogs you still need 3."
Description[ENGLISH][30] = "Kill 4 dogs you still need 2."
Description[ENGLISH][31] = "Kill 4 dogs you still need 1."
Description[ENGLISH][32] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][33] = "Kill 8 dogs you still need 8."
Description[ENGLISH][34] = "Kill 8 dogs you still need 7."
Description[ENGLISH][35] = "Kill 8 dogs you still need 6."
Description[ENGLISH][36] = "Kill 8 dogs you still need 5."
Description[ENGLISH][37] = "Kill 8 dogs you still need 4."
Description[ENGLISH][38] = "Kill 8 dogs you still need 3."
Description[ENGLISH][39] = "Kill 8 dogs you still need 2."
Description[ENGLISH][40] = "Kill 8 dogs you still need 1."
Description[ENGLISH][41] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][42] = "Kill 12 dogs you still need 12."
Description[ENGLISH][43] = "Kill 12 dogs you still need 11."
Description[ENGLISH][44] = "Kill 12 dogs you still need 10."
Description[ENGLISH][45] = "Kill 12 dogs you still need 9."
Description[ENGLISH][46] = "Kill 12 dogs you still need 8."
Description[ENGLISH][47] = "Kill 12 dogs you still need 7."
Description[ENGLISH][48] = "Kill 12 dogs you still need 6."
Description[ENGLISH][49] = "Kill 12 dogs you still need 5."
Description[ENGLISH][50] = "Kill 12 dogs you still need 4."
Description[ENGLISH][51] = "Kill 12 dogs you still need 3."
Description[ENGLISH][52] = "Kill 12 dogs you still need 2."
Description[ENGLISH][53] = "Kill 12 dogs you still need 1."
Description[ENGLISH][54] = "Return to  Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][55] = "Kill 4 wolves you still need 4."
Description[ENGLISH][56] = "Kill 4 wolves you still need 3."
Description[ENGLISH][57] = "Kill 4 wolves you still need 2."
Description[ENGLISH][58] = "Kill 4 wolves you still need 1."
Description[ENGLISH][59] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][60] = "Kill 8 wolves you still need 8."
Description[ENGLISH][61] = "Kill 8 wolves you still need 7."
Description[ENGLISH][62] = "Kill 8 wolves you still need 6."
Description[ENGLISH][63] = "Kill 8 wolves you still need 5."
Description[ENGLISH][64] = "Kill 8 wolves you still need 4."
Description[ENGLISH][65] = "Kill 8 wolves you still need 3."
Description[ENGLISH][66] = "Kill 8 wolves you still need 2."
Description[ENGLISH][67] = "Kill 8 wolves you still need 1."
Description[ENGLISH][68] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][69] = "Kill 12 wolves you still need 12."
Description[ENGLISH][70] = "Kill 12 wolves you still need 11."
Description[ENGLISH][71] = "Kill 12 wolves you still need 10."
Description[ENGLISH][72] = "Kill 12 wolves you still need 9."
Description[ENGLISH][73] = "Kill 12 wolves you still need 8."
Description[ENGLISH][74] = "Kill 12 wolves you still need 7."
Description[ENGLISH][75] = "Kill 12 wolves you still need 6."
Description[ENGLISH][76] = "Kill 12 wolves you still need 5."
Description[ENGLISH][77] = "Kill 12 wolves you still need 4."
Description[ENGLISH][78] = "Kill 12 wolves you still need 3."
Description[ENGLISH][79] = "Kill 12 wolves you still need 2."
Description[ENGLISH][80] = "Kill 12 wolves you still need 1."
Description[ENGLISH][81] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][82] = "Kill 4 bears you still need 4."
Description[ENGLISH][83] = "Kill 4 bears you still need 3."
Description[ENGLISH][84] = "Kill 4 bears you still need 2."
Description[ENGLISH][85] = "Kill 4 bears you still need 1."
Description[ENGLISH][86] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][87] = "Kill 8 bears you still need 8."
Description[ENGLISH][88] = "Kill 8 bears you still need 7."
Description[ENGLISH][89] = "Kill 8 bears you still need 6"
Description[ENGLISH][90] = "Kill 8 bears you still need 5."
Description[ENGLISH][91] = "Kill 8 bears you still need 4."
Description[ENGLISH][92] = "Kill 8 bears you still need 3."
Description[ENGLISH][93] = "Kill 8 bears you still need 2."
Description[ENGLISH][94] = "Kill 8 bears you still need 1."
Description[ENGLISH][95] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][96] = "Kill 12 bears you still need 12."
Description[ENGLISH][97] = "Kill 12 bears you still need 11."
Description[ENGLISH][98] = "Kill 12 bears you still need 10."
Description[ENGLISH][99] = "Kill 12 bears you still need 9."
Description[ENGLISH][100] = "Kill 12 bears you still need 8."
Description[ENGLISH][101] = "Kill 12 bears you still need 7."
Description[ENGLISH][102] = "Kill 12 bears you still need 6."
Description[ENGLISH][103] = "Kill 12 bears you still need 5."
Description[ENGLISH][104] = "Kill 12 bears you still need 4."
Description[ENGLISH][105] = "Kill 12 bears you still need 3."
Description[ENGLISH][106] = "Kill 12 bears you still need 2."
Description[ENGLISH][107] = "Kill 12 bears you still need 1."
Description[ENGLISH][108] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][109] = "Kill 4 humans you still need 4."
Description[ENGLISH][110] = "Kill 4 humans you still need 3."
Description[ENGLISH][111] = "Kill 4 humans you still need 2."
Description[ENGLISH][112] = "Kill 4 humans you still need 1."
Description[ENGLISH][113] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][114] = "Kill 8 humans you still need 8."
Description[ENGLISH][115] = "Kill 8 humans you still need 7."
Description[ENGLISH][116] = "Kill 8 humans you still need 6."
Description[ENGLISH][117] = "Kill 8 humans you still need 5."
Description[ENGLISH][118] = "Kill 8 humans you still need 4."
Description[ENGLISH][119] = "Kill 8 humans you still need 3."
Description[ENGLISH][120] = "Kill 8 humans you still need 2."
Description[ENGLISH][121] = "Kill 8 humans you still need 1."
Description[ENGLISH][122] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][123] = "Kill 12 humans you still need 12."
Description[ENGLISH][124] = "Kill 12 humans you still need 11."
Description[ENGLISH][125] = "Kill 12 humans you still need 10."
Description[ENGLISH][126] = "Kill 12 humans you still need 9."
Description[ENGLISH][127] = "Kill 12 humans you still need 8."
Description[ENGLISH][128] = "Kill 12 humans you still need 7."
Description[ENGLISH][129] = "Kill 12 humans you still need 6."
Description[ENGLISH][130] = "Kill 12 humans you still need 5."
Description[ENGLISH][131] = "Kill 12 humans you still need 4."
Description[ENGLISH][132] = "Kill 12 humans you still need 3."
Description[ENGLISH][133] = "Kill 12 humans you still need 2."
Description[ENGLISH][134] = "Kill 12 humans you still need 1."
Description[ENGLISH][135] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][136] = "Kill 4 thieves you still need 4."
Description[ENGLISH][137] = "Kill 4 thieves you still need 3."
Description[ENGLISH][138] = "Kill 4 thieves you still need 2."
Description[ENGLISH][139] = "Kill 4 thieves you still need 1."
Description[ENGLISH][140] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][141] = "Kill 8 thieves you still need 8."
Description[ENGLISH][142] = "Kill 8 thieves you still need 7."
Description[ENGLISH][143] = "Kill 8 thieves you still need 6."
Description[ENGLISH][144] = "Kill 8 thieves you still need 5."
Description[ENGLISH][145] = "Kill 8 thieves you still need 4."
Description[ENGLISH][146] = "Kill 8 thieves you still need 3."
Description[ENGLISH][147] = "Kill 8 thieves you still need 2."
Description[ENGLISH][148] = "Kill 8 thieves you still need 1."
Description[ENGLISH][149] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][150] = "Kill 12 thieves you still need 12."
Description[ENGLISH][151] = "Kill 12 thieves you still need 11."
Description[ENGLISH][152] = "Kill 12 thieves you still need 10."
Description[ENGLISH][153] = "Kill 12 thieves you still need 9."
Description[ENGLISH][154] = "Kill 12 thieves you still need 8."
Description[ENGLISH][155] = "Kill 12 thieves you still need 7."
Description[ENGLISH][156] = "Kill 12 thieves you still need 6."
Description[ENGLISH][157] = "Kill 12 thieves you still need 5."
Description[ENGLISH][158] = "Kill 12 thieves you still need 4."
Description[ENGLISH][159] = "Kill 12 thieves you still need 3."
Description[ENGLISH][160] = "Kill 12 thieves you still need 2."
Description[ENGLISH][161] = "Kill 12 thieves you still need 1."
Description[ENGLISH][162] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][163] = "Kill 4 zombies you still need 4."
Description[ENGLISH][164] = "Kill 4 zombies you still need 3."
Description[ENGLISH][165] = "Kill 4 zombies you still need 2."
Description[ENGLISH][166] = "Kill 4 zombies you still need 1."
Description[ENGLISH][167] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][168] = "Kill 8 zombies you still need 8."
Description[ENGLISH][169] = "Kill 8 zombies you still need 7."
Description[ENGLISH][170] = "Kill 8 zombies you still need 6."
Description[ENGLISH][171] = "Kill 8 zombies you still need 5."
Description[ENGLISH][172] = "Kill 8 zombies you still need 4."
Description[ENGLISH][173] = "Kill 8 zombies you still need 3."
Description[ENGLISH][174] = "Kill 8 zombies you still need 2."
Description[ENGLISH][175] = "Kill 8 zombies you still need 1."
Description[ENGLISH][176] = "Return to Maelyrra Umrielyth to claim your reward."
Description[ENGLISH][177] = "Kill 12 zombies you still need 12."
Description[ENGLISH][178] = "Kill 12 zombies you still need 11."
Description[ENGLISH][179] = "Kill 12 zombies you still need 10."
Description[ENGLISH][180] = "Kill 12 zombies you still need 9."
Description[ENGLISH][181] = "Kill 12 zombies you still need 8."
Description[ENGLISH][182] = "Kill 12 zombies you still need 7."
Description[ENGLISH][183] = "Kill 12 zombies you still need 6."
Description[ENGLISH][184] = "Kill 12 zombies you still need 5."
Description[ENGLISH][185] = "Kill 12 zombies you still need 4."
Description[ENGLISH][186] = "Kill 12 zombies you still need 3."
Description[ENGLISH][187] = "Kill 12 zombies you still need 2."
Description[ENGLISH][188] = "Kill 12 zombies you still need 1."
Description[ENGLISH][189] = "Return to Maelyrra Umrielyth to claim your reward."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {861, 809, 0}

-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[2] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[3] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[4] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[5] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[6] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[7] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[8] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[9] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[10] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[11] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[12] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[13] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[14] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[15] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[16] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[17] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[18] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[19] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[20] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[21] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[22] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[23] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[24] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[25] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[26] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[27] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[28] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[29] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[30] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[31] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[32] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[33] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[34] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[35] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[36] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[37] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[38] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[39] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[40] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[41] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[42] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[43] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[44] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[45] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[46] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[47] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[48] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[49] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[50] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[51] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[52] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[53] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[54] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[55] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[56] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[57] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[58] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[59] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[60] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[61] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[62] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[63] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[64] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[65] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[66] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[67] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[68] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[69] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[70] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[71] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[72] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[73] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[74] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[75] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[76] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[77] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[78] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[79] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[80] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[81] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[82] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[83] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[84] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[85] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[86] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[87] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[88] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[89] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[90] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[91] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[92] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[93] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[94] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[95] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[96] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[97] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[98] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[99] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[100] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[101] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[102] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[103] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[104] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[105] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[106] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[107] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[108] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[109] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[110] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[111] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[112] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[113] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[114] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[115] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[116] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[117] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[118] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[119] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[120] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[121] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[122] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[123] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[124] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[125] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[126] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[127] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[128] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[129] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[130] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[131] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[132] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[133] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[134] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[135] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[136] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[137] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[138] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[139] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[140] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[141] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[142] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[143] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[144] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[145] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[146] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[147] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[148] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[149] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[150] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[151] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[152] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[153] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[154] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[155] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[156] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[157] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[158] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[159] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[160] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[161] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[162] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[163] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[164] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[165] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[166] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[167] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[168] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[169] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[170] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[171] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[172] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[173] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[174] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[175] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[176] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[177] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[178] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[179] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[180] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[181] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[182] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[183] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[184] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[185] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[186] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[187] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[188] = {position(861, 809, 0)} -- Maelyrra
QuestTarget[189] = {position(861, 809, 0)} -- Maelyrra

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 0


function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return base.common.GetNLS(user, german, english)
end

function QuestStart()
    return Start
end

function QuestTargets(user, status)
    return QuestTarget[status]
end

function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

function QuestAvailability(user, status)
	-- only available if cooldown
    if status == 0 and user:getQuestProgress(186) == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end