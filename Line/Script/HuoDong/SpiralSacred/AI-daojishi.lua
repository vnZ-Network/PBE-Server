	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:AI-daojishi.lua
	--		Remark:?????????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		mapid = AI:GetMapID()
		huihe = AI:GetEctypeVarShort(mapid,90)
		AI:ScreenText("Player "..tostring(huihe).."`s turn will start soon!", 2)
		AI:SetTimer(1,2000,1)
	end
	
	if nIndex == 1 then
		AI:SetTimer(2,1000,8)
		AI:SetArray(10,7)
	end
	
	if nIndex == 2 then
		--???
		daojishi = AI:GetArray(10)
		if daojishi > 0 then
			AI:SetArray(10,daojishi-1)
			AI:ScreenText("Roll your dice now! Time left:"..tostring(daojishi), 2)
		else
			AI:ScreenText(" ", 2)
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:ScreenText("The Pursuit of Rapture event is starting soon! Please find the Guide and receive an Exalted Dice!", 2)
		AI:SetArray(0,1)
	end
	
	mapid = AI:GetMapID()
	huihe = AI:GetEctypeVarShort(mapid,90)
	b = AI:GetArray(1)
	if huihe > b then
		AI:SetArray(1,huihe)
		AI:SetTimer(0,8000,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	
end