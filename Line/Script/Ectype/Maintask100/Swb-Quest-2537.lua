	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/03/11
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：swb-Quest-2536.lua
	--		Remark：
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local a = ( KillCount ^ 0.2 )* 77062
	
	if a < 200000 then
		AI:AddMoney(unPlayerID, 0 )
	elseif a > 400000 then
		AI:AddMoney(unPlayerID, 400000)
	else
		AI:AddMoney(unPlayerID, a )
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


--if((杀怪数^0.18)*77062<200000,0,if((杀怪数^0.18)*77062>400000,400000,(杀怪数^0.18)*77062))

	