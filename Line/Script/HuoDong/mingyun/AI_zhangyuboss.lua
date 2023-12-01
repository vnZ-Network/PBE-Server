--?????AI

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
    if nIndex == 1 then
        AI:AddSkill(8613,6)
        AI:UseSkill(8613,6)
    end
    if nIndex == 2 then
        --??
        AI:AddSkill(8616,3)
        AI:UseSkill(8616,3)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Haha! The sea will soon be mine!")
								AI:ScreenText("Overlord Octopus: Haha! The sea will soon be mine!",2)
                AI:SetTimer(1,5000,65535)
                AI:SetArray(4,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Stop! You must follow the rules!")
								AI:ScreenText("Overlord Octopus: Stop! You must follow the rules!",2)
                --??,?????
                AI:AddSkill(8616,3)
                AI:UseSkill(8616,3)

		            posx = AI:GetPosX()
								posy = AI:GetPosY()

		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx + 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx + 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 3)

		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx - 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx - 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 3)

								AI:SummonMonsterByPos( 11977 , posx + 4 , posy)
		            AI:SummonMonsterByPos( 11977 , posx , posy - 4)
								AI:SummonMonsterByPos( 11977 , posx , posy)
		            AI:SummonMonsterByPos( 11977 , posx - 4 , posy)
								AI:SummonMonsterByPos( 11977 , posx , posy + 4)

                AI:SetTimer(2,8000,65535)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Where are my citizens?")
								AI:ScreenText("Overlord Octopus: Where are my citizens?",2)
                --????90%,??15?
                AI:AddSkill(2364,1)
                AI:UseSkill(2364,1)

		            posx = AI:GetPosX()
								posy = AI:GetPosY()

		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx + 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx + 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 3)

		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx - 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx - 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 3)

								AI:SummonMonsterByPos( 11977 , posx + 4 , posy)
		            AI:SummonMonsterByPos( 11977 , posx , posy - 4)
								AI:SummonMonsterByPos( 11977 , posx , posy)
		            AI:SummonMonsterByPos( 11977 , posx - 4 , posy)
								AI:SummonMonsterByPos( 11977 , posx , posy + 4)

                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.35 then
                AI:Say("You will live under my rule! Now kneel!")
								AI:ScreenText("Overlord Octopus: You will live under my rule! Now kneel!",2)
                --????,??120??????????,???DOT
                AI:AddSkill(8765,1)
                AI:UseSkill(8765,1)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("This... is unforgivable!")
								AI:ScreenText("Overlord Octopus: This... is unforgivable!",2)
                --??,???????
                AI:AddSkill(8767,1)
                AI:UseSkill(8767,1)

		            posx = AI:GetPosX()
								posy = AI:GetPosY()

		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx + 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx + 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 3)

		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 1)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 1)
		            AI:SummonMonsterByPos( 11977 , posx - 2 , posy + 2)
								AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 3)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 3)

								AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 1)
		            AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 1)
								AI:SummonMonsterByPos( 11977 , posx - 2 , posy - 2)
		            AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 3)
								AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 3)

								AI:SummonMonsterByPos( 11977 , posx + 4 , posy)
		            AI:SummonMonsterByPos( 11977 , posx , posy - 4)
								AI:SummonMonsterByPos( 11977 , posx , posy)
		            AI:SummonMonsterByPos( 11977 , posx - 4 , posy)
								AI:SummonMonsterByPos( 11977 , posx , posy + 4)

                AI:SetArray(4,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.1 then
                AI:Say("Behold my power!")
								AI:ScreenText("Overlord Octopus: Behold my power!",2)
                --??
                AI:AddSkill(2363,1)
                AI:UseSkill(2363,1)
                AI:SetArray(4,6)
            end
        end

end


function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)

	 posx = AI:GetPosX()
	 posy = AI:GetPosY()

		AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 1)
		AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 1)
		AI:SummonMonsterByPos( 11977 , posx + 2 , posy + 2)
		AI:SummonMonsterByPos( 11977 , posx + 1 , posy + 3)
		AI:SummonMonsterByPos( 11977 , posx + 3 , posy + 3)

		AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 1)
		AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 1)
		AI:SummonMonsterByPos( 11977 , posx + 2 , posy - 2)
		AI:SummonMonsterByPos( 11977 , posx + 1 , posy - 3)
		AI:SummonMonsterByPos( 11977 , posx + 3 , posy - 3)

		AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 1)
		AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 1)
		AI:SummonMonsterByPos( 11977 , posx - 2 , posy + 2)
		AI:SummonMonsterByPos( 11977 , posx - 1 , posy + 3)
		AI:SummonMonsterByPos( 11977 , posx - 3 , posy + 3)

		AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 1)
		AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 1)
		AI:SummonMonsterByPos( 11977 , posx - 2 , posy - 2)
		AI:SummonMonsterByPos( 11977 , posx - 1 , posy - 3)
		AI:SummonMonsterByPos( 11977 , posx - 3 , posy - 3)

		AI:SummonMonsterByPos( 11977 , posx + 4 , posy)
		AI:SummonMonsterByPos( 11977 , posx , posy - 4)
		AI:SummonMonsterByPos( 11977 , posx , posy)
		AI:SummonMonsterByPos( 11977 , posx - 4 , posy)
		AI:SummonMonsterByPos( 11977 , posx , posy + 4)
		AI:Say("How could it be! I will return! You'll see!")
		AI:ScreenText("Overlord Octopus: How could it be! I will return! You'll see!",2)
		
end