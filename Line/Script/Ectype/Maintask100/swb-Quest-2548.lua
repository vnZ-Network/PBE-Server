	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2010/06/1
	--		Author£ºË¾ÎÄ²©
	--		Class:	.Lua
	--		AIName£ºswb-Quest-2548.lua
	--		Remark£º×êÊ¯VIP
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local level = AI:GetPlayerInfo(unPlayerID,"level", 0 )
	
	if level < 60 then
		local a = ( KillCount ^ 0.2 )* 10000
		if a < 30000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 70000 then
			AI:AddMoney(unPlayerID, 70000)
		else
			AI:AddMoney(unPlayerID, a )
		end
	elseif level < 70 then
		local a = ( KillCount ^ 0.2 )* 15085
		if a < 50000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 100000 then
			AI:AddMoney(unPlayerID, 100000)
		else
			AI:AddMoney(unPlayerID, a )
		end
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
	else
		local a = ( KillCount ^ 0.2 )* 77062
		if a < 200000 then
			AI:AddMoney(unPlayerID, 0 )
		elseif a > 4000000 then
			AI:AddMoney(unPlayerID, 400000)
		else
		AI:AddMoney(unPlayerID, a )
		end
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


	