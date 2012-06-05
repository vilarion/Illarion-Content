--------------------------------------------------------------------------------
-- NPC Name: Henry Cunnigan                                              None --
-- NPC Job:  Tutor                                                            --
--                                                                            --
-- NPC Race: human                      NPC Position:  38, 21, 100            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Authors:  Rincewind                                                        --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: June 05, 2012                           easyNPC Parser v1.02 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 38, 21, 100, 6, 'Henry Cunnigan', 'npc.henry_cunnigan', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.quest")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.henry_cunnigan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lektion wiederholen");
talkEntry:addResponse("Sss, hasst dir wohl den Kopf gesto�en? Ich werde dir erkl�ren, wie du fl�sterst, rufst und deine Handlungen darstellst. - Um zu fl�stern schreibe '#w und deine Nachricht' in die Sprechkonsole, best�tige mit der Entertaste.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 0));
talkEntry:addResponse("Sss, hasst dir wohl den Kopf gesto�en? Ich werde dir erkl�ren, wie du fl�sterst, rufst und deine Handlungen darstellst. - Um zu fl�stern schreibe '#w und deine Nachricht' in die Sprechkonsole, best�tige mit der Entertaste.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 1));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("#w.*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 1));
talkEntry:addResponse("Gro�artig. Wenn du fl�sterst k�nnen dich nur diejenigen Personen h�ren, die sich deiner unmittelbaren N�he aufhalten. - Um laut zu rufen schreibe '#s und deine Nachricht' in die Sprechkonsole, best�tige mit der Entertaste.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 2));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 1));
talkEntry:addResponse("Um zu fl�stern schreibe '#w und deine Nachricht' in die Sprechkonsole, best�tige mit der Entertaste.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("#s.*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 2));
talkEntry:addResponse("Ausgezeichnet. Wenn du rufst h�rt man dich in einem viel gr��eren Umkreis. - Versuche als n�chstes eine deiner Handlungen zu beschreiben. Schreibe zum Beispiel '#me krazt sich an der Nase.' in die Sprechkonsole.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 3));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 2));
talkEntry:addResponse("Um laut zu rufen schreibe '#s und deine Nachricht' in die Sprechkonsole, best�tige mit der Entertaste.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("#me.*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 3));
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Ist die Sprachkonsole leer, kannst du sie mit erneutem dr�cken der Entertaste schlie�en."));
talkEntry:addResponse("Toll gemacht, Sss. Wenn du das Bishergesagte sehen m�chtest �ffne das Journal mit der Taste 'J', bei geschlossener Sprachkonsole. Folge nun weiter der Stra�e und sprich mit den Leuten auf deinem Weg.");
talkEntry:addConsequence(npc.base.consequence.quest.quest(310, "=", 4));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 3));
talkEntry:addResponse("Versuche als n�chstes eine deiner Handlungen zu beschreiben. Schreibe zum Beispiel '#me krazt sich an der Nase.' in die Sprechkonsole und dr�cke Enter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.quest.quest(310, "=", 4));
talkEntry:addResponse("Folge nun weiter der Stra�e und sprich mit den Leuten auf deinem Weg. Sss, auf wiedersehen Fremdling. M�ge die G�ttin den Regen der auf dein Haupt f�llt segnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me winkt dir freundlich zu und zischelt. 'Sss, komm n�her Fremdling. Ich kann dir helfen. Ss.'", "#me waves to you and hisses friendly: 'Sss, come closer. I may help you. Ss.'");
mainNPC:addLanguage(0);
mainNPC:addLanguage(4);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("This is your tutorial guide Henry Cunnigan.", "Das ist dein Tutor Henry Cunnigan.");
mainNPC:setUseMessage("Finger weg!", "Do not touch me!");
mainNPC:setConfusedMessage("Du musst schon in einer Sprache sprechen die ich verstehe. Entweder die gemeinsame oder die rassenspezifische Sprache.", "You have to talk to me in a language which I understand. Either the common or the race specific language.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 101);
mainNPC:setEquipment(11, 2419);
mainNPC:setEquipment(5, 323);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 366);
mainNPC:setEquipment(10, 53);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(texttype, message, speaker) mainNPC:receiveText(speaker, message); end;
function nextCycle() mainNPC:nextCycle(); end;
function lookAtNpc(char, mode) mainNPC:lookAt(char, mode); end;
function useNPC(char, counter, param) mainNPC:use(char); end;
initNpc();
initNpc = nil;
-- END