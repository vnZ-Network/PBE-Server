function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
    	
    	--????TD????
    	if nIndex == 0 then
    		tdresult = AI:IsEctypeTdFailure()
    		if tdresult == true then
    			AI:Say("Hooray,  Latamantis! ")
               		AI:SelfMurder()
    		end
    	end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	 a = AI:GetArray(1)
	 if a == 0 then
	 	--????TD??AI
	 	AI:SetTimer( 0 , 1000 , 65535 )
	 	AI:SetArray( 1 , 1 )
	 end
	 
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
	
	--?????????????????
    	--????4????,????????
    	--??113,112  ??113,87   ??113,137   ?88,112   ??138,112

    	AI:AddSeekPos( 228 , 77 , 112 )
    	AI:AddSeekPos( 228 , 104 , 112 )

end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 104 ) and ( PosY == 112 )) then
               	AI:Say("Your death looms near!")
        	--?????
        	AI:SelfMurder()
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    	
    	isArrive = AI:IsArriveLastSeekPos()
    	if isArrive == true then
    		--??????????
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    	else
    		--???????????
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    	end
end