	----------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2010/03/11
	--		Author��˾�Ĳ�
	--		Class:	.Lua
	--		AIName��swb-Quest-2533.lua
	--		Remark��
	----------------------------------------------------

function OnTaskFailedDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	local KillCount = AI:GetKillMonsterCount(unPlayerID)
	local a = ( KillCount ^ 0.2 )* 30170
	
	if a < 100000 then
		AI:AddMoney(unPlayerID, 0 )
	elseif a > 200000 then
		AI:AddMoney(unPlayerID, 200000)
	else
		AI:AddMoney(unPlayerID, a )
	end
end

function OnTaskDone(nAI, unTaskID, unPlayerID)
	local AI = GetTaskAI(nAI)
	
end


--if((ɱ����^0.2)*30170<100000,0,if((ɱ����^0.2)*30170>200000,200000,(ɱ����^0.2)*30170))

	