	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:AI-baomu.lua
	--		Remark:???????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	playerid = AI:GetEctypeVarInteger(mapid, 118)
	playerweizhi = AI:GetPlayerValue(playerid, 3547)
	
	if playerweizhi == 1  then
		AI:ScreenText("1. The Origin", 1)
	end
	if playerweizhi == 2  then
		AI:ScreenText("2. Vault", 1)
	end
	if playerweizhi == 3  then
		AI:ScreenText("3. Weeping Wall", 1)
	end
	if playerweizhi == 4  then
		AI:ScreenText("4. Mermaids Bay", 1)
	end
	if playerweizhi == 5  then
		AI:ScreenText("5. Black Flag", 1)
	end
	if playerweizhi == 6  then
		AI:ScreenText("6. Safe Journey", 1)
	end
	if playerweizhi == 7  then
		AI:ScreenText("7. Naraku's Cave", 1)
	end
	if playerweizhi == 8  then
		AI:ScreenText("8. Seaside Cliffs", 1)
	end
	if playerweizhi == 9  then
		AI:ScreenText("9. Gates of Hell", 1)
	end
	if playerweizhi == 10 then
		AI:ScreenText("10. Post House", 1)
	end
	if playerweizhi == 11 then
		AI:ScreenText("11. Rescue Plan", 1)
	end
	if playerweizhi == 12 then
		AI:ScreenText("12. Magic Table", 1)
	end
	if playerweizhi == 13 then
		AI:ScreenText("13. Cursed Round Table", 1)
	end
	if playerweizhi == 14 then
		AI:ScreenText("14. The Hanging Guy", 1)
	end
	if playerweizhi == 15 then
		AI:ScreenText("15. Equivalent Exchange", 1)
	end
	if playerweizhi == 16 then
		AI:ScreenText("16. Bandits Union", 1)
	end
	if playerweizhi == 17 then
		AI:ScreenText("17. Dragon Cave", 1)
	end
	if playerweizhi == 18 then
		AI:ScreenText("18. Royal Garden", 1)
	end
	if playerweizhi == 19 then
		AI:ScreenText("19. Weeping Wall", 1)
	end
	if playerweizhi == 20 then
		AI:ScreenText("20. Kick Down the Ladder", 1)
	end
	if playerweizhi == 21 then
		AI:ScreenText("21. Four Leaf Clover", 1)
	end
	if playerweizhi == 22 then
		AI:ScreenText("22. Kick Down the Ladder", 1)
	end
	if playerweizhi == 23 then
		AI:ScreenText("23. Naraku's Cave", 1)
	end
	if playerweizhi == 24 then
		AI:ScreenText("24. Tower of Ivory", 1)
	end
	if playerweizhi == 25 then
		AI:ScreenText("25. Evan's House", 1)
	end
	if playerweizhi == 26 then
		AI:ScreenText("26. Wall of Rose", 1)
	end
	if playerweizhi == 27 then
		AI:ScreenText("27. Rescue Plan", 1)
	end
	if playerweizhi == 28 then
		AI:ScreenText("28. Horsepond", 1)
	end
	if playerweizhi == 29 then
		AI:ScreenText("29. Circus Troup", 1)
	end
	if playerweizhi == 30 then
		AI:ScreenText("30. Giants Slaughter", 1)
	end
	if playerweizhi == 31 then
		AI:ScreenText("31. Equivalent Exchange", 1)
	end
	if playerweizhi == 32 then
		AI:ScreenText("32. Santa Claus", 1)
	end
	if playerweizhi == 33 then
		AI:ScreenText("33. Mini Chariot", 1)
	end
	if playerweizhi == 34 then
		AI:ScreenText("34. Nepenthes", 1)
	end
	if playerweizhi == 35 then
		AI:ScreenText("35. Magic Defense", 1)
	end
	if playerweizhi == 36 then
		AI:ScreenText("36. Ammunition Depot", 1)
	end
	if playerweizhi == 37 then
		AI:ScreenText("37. King's Treasure House", 1)
	end
	if playerweizhi == 38 then
		AI:ScreenText("38. Rebound Barrier", 1)
	end
	if playerweizhi == 39 then
		AI:ScreenText("39. Wasteland", 1)
	end
	if playerweizhi == 40 then
		AI:ScreenText("40. Clown Box", 1)
	end
	if playerweizhi == 41 then
		AI:ScreenText("41. Victory Banner", 1)
	end
	if playerweizhi == 42 then
		AI:ScreenText("42. Bear Trap", 1)
	end
	if playerweizhi == 43 then
		AI:ScreenText("43. Death Swamp", 1)
	end
	if playerweizhi == 44 then
		AI:ScreenText("44. Altar", 1)
	end
	if playerweizhi == 45 then
		AI:ScreenText("45. Last Step", 1)
	end
	if playerweizhi == 46 then
		AI:ScreenText("46. Heart of Spiral", 1)
	end
	
	AI:Exit()
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end