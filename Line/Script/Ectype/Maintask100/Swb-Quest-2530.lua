	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/03/11
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：swb-Quest-2530.lua
	--		Remark：
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local a = ( KillCount ^ 0.2 )* 15085
	
	if a < 50000 then
		AI:AddMoney(unPlayerID, 0 )
	elseif a > 100000 then
		AI:AddMoney(unPlayerID, 100000)
	else
		AI:AddMoney(unPlayerID, a )
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


--if((杀怪数^0.2)*15085<50000,0,if((杀怪数^0.2)*15085>100000,100000,(杀怪数^0.2)*15085))

	