	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/08/3
	--		Author:???
	--		Class:	AI_longjiang.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("Frozen Storm")
				AI:AddSkill(2261,1)
				AI:UseSkill(2261,1)
			end
			
		end
		
			
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:AddSkill(2261,1)
						AI:UseSkill(2261,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				

				if a == 1 then
					if HP < HPMAX * 0.4 then
						AI:AddSkill(2261,1)
						AI:UseSkill(2261,1)
					  AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.2 then
						AI:AddSkill(2264,1)
						AI:UseSkill(2264,1)
						AI:SetArray(1,3)
					end
				end
			end
		end