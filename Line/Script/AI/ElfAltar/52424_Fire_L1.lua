----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2012/08
--		Author�����쳽
--		TaskName����-�����̳��BOSS1 ��������Lv0-��
--		TaskID��52424_Fire_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--ͨ��ִ��
			a = AI:GetArray(1)
			if a == 1 then
				AI:AddSkill(2376,2)
				AI:UseSkill(2376,2)
			end										
			
		end--ͨ��ִ�н���
		
		if nIndex == 2 then --Ѱ��start
			a = AI:GetArray(2)
			if a == 1 then
				AI:UpdateSeekPath(1)
			end
		end -- Ѱ��end

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --
--					AI:ChangeFaction(11)
--					AI:SetAIState(7)
					AI:SetTimer(1,500,30)
					AI:SetArray(1,1)
			end	
			
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,1000,1)
				AI:SetArray(2,1)
			end


			----------------------------------------------------------normal end
		

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--����AI����
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == PosX1) and ( PosY == PosY1 )) then	
			AI:AddSkill(2376,2)
			AI:UseSkill(2376,2)
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			for tp = 1 , 12 , 1 do
				PosX1,PosY1 = math.random(PosX-20,PosX+20),math.random(PosY-20,PosY+20)
			end
			AI:AddSeekPos(mapid,PosX1,PosY1)
		end
		
	end





	
	
	
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
				AI:DelTimer(1)
				AI:DelTimer(2)

	end
