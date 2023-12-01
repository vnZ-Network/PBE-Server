	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/06/1
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：swb-Quest-2547.lua
	--		Remark：海神的恩赐
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local level = AI:GetPlayerInfo(unPlayerID,"level", 0 )
	
	if level < 75 then
		return
	elseif level < 80 then
		local a = ( KillCount ^ 0.2 )* 30170
		if a < 100000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 200000 then
			AI:AddMoney(unPlayerID, 200000)
		else
			AI:AddMoney(unPlayerID, a )
		end
	elseif level < 90 then
		local a = ( KillCount ^ 0.2 )* 41731
		if a < 150000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 300000 then
			AI:AddMoney(unPlayerID, 300000)
		else
		AI:AddMoney(unPlayerID, a )
		end
	elseif level < 100 then
		local a = ( KillCount ^ 0.2 )* 77062
		if a < 200000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 400000 then
			AI:AddMoney(unPlayerID, 400000)
		else
			AI:AddMoney(unPlayerID, a )
		end
	else
		local a = ( KillCount ^ 0.2 )* 77062
		if a < 200000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 400000 then
			AI:AddMoney(unPlayerID, 400000)
		else
			AI:AddMoney(unPlayerID, a )
		end
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


	