	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/03/11
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：swb-Quest-2535.lua
	--		Remark：
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local a = ( KillCount ^ 0.2 )* 41731
	
	if a < 150000 then
		AI:AddMoney(unPlayerID, 0 )
	elseif a > 300000 then
		AI:AddMoney(unPlayerID, 300000)
	else
		AI:AddMoney(unPlayerID, a )
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


--if((杀怪数^0.2)*41731<150000,0,if((杀怪数^0.2)*41731>300000,300000,(杀怪数^0.2)*41731))

	