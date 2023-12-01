----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-???-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a=AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
--				AI:GetRandTarget()
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:PlayAction("\\common\\shilian2\\51244-handR.ini",0,1)
--				AI:Say("")
				AI:ScreenText("Sonia: Beep, beep. I am an Ice magic robot.",2)
			end
			if a == 2 then
				AI:DelTimer(1)
				AI:SetArray(9,1)
			end
			a=a+1
			AI:SetArray(1,a)
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
--				rand = AI:GetRand(100)--(????0~100???)
--				if rand < 33 then--??1--start
					AI:AddSkill(2322,1)
					AI:UseSkill(2322,1)
--					rand = AI:GetRand(100)
--					if rand < 33 then--??1??--start
--						AI:ScreenText("",2)
						AI:Say("Controlled by Frost ")
--					else
--						if rand < 66 then
--							AI:ScreenText("",2)
--							AI:Say("")
--						else
--							AI:ScreenText("",2)
--							AI:Say("")
--						end
--					end--??2??--end
--				else--??1--end
--					if rand < 66 then--??2--start
--						AI:AddSkill(ID,lv)
--						AI:UseSkill(ID,lv)
--						rand = AI:GetRand(100)
--						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
--							AI:Say("")
--						else
--							if rand < 66 then
--								AI:ScreenText("",2)
--								AI:Say("")
--							else
--								AI:ScreenText("",2)
--								AI:Say("")
--							end
--						end--??2??--end
--					end--??2--end
--				end--??all--end
			end--????end
		end--????end

		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				AI:AddSkill(2327,1)
				AI:UseSkill(2327,1)
--				AI:ScreenText( "" , 2)
				AI:Say("You will see the true power of ice!")
			end
		end--????end
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000

 		t = AI:HaveAttackTarget()--????
		if t == false then
			a = AI:GetArray(1)
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
						AI:DelTimer(1)
						AI:DelTimer(2)
						AI:DelTimer(3)
						AI:DelTimer(9)
						AI:SetArray(1,0)
						AI:SetArray(2,0)
						AI:SetArray(3,0)
						AI:SetArray(9,0)
--						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
--				AI:Say("")
				AI:ScreenText("Magic Array Released: Robot Sonia has been activated.",2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,10000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				if hppct < 500 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			----------------------------------------------------------normal end
		end
--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

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