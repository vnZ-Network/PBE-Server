----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2011/08
--		Author��������
--		TaskName����-����-��
--		TaskID��
-----------------------------------------------------
--6	���Ӽ���
--7	����X����*10
--8	����Y����*10
--9	��������
--1	���״̬	0-���룬1-��ʼ��2-��ɣ�3-����ȡ
--52354	v3.60	�ڰ�
--52355	v3.60	������
--52356	v3.60	ʥ��
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		PlayerID=AI:GetEctypeVarInteger(mapid,110)
		Distance=AI:GetPlayerDistance(PlayerID)
--AI:Say("Distance = "..tostring(Distance))
		if Distance < 3 then
			count=AI:GetEctypeVarShort(mapid,6)
			maxcount=AI:GetEctypeVarShort(mapid,9)
			count=count+1
			AI:SetEctypeVarShort(mapid,6,count)
			if count == maxcount then
				AI:SetEctypeVarShort(mapid,1,2)
				AI:Exit()
			end
			ox,oy=184,129
			randx,randy=ox+AI:GetRand(24),oy+AI:GetRand(38)
			player_posx=AI:GetPlayerX(PlayerID)
			player_posy=AI:GetPlayerY(PlayerID)
			Distance2=(randy-player_posy)*(randy-player_posy)+(randx-player_posx)*(randx-player_posx)
			if Distance2 < 64 then
				randx,randy=ox+AI:GetRand(24),oy+AI:GetRand(38)
			end	
			AI:SummonMonsterByPos(52356,randx,randy,0)
			AI:SetEctypeVarShort(mapid,7,randx)
			AI:SetEctypeVarShort(mapid,8,randy)
			monstx,monsty=AI:GetPosX(),AI:GetPosY()
			AI:SummonMonsterByPos(52354,monstx,monsty,0)
			AI:Exit()
		end


	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			AI:AddSeekPos(mapid,xx,yy)
		end

	end