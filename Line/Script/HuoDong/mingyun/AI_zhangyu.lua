
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
end


function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)

		posx = AI:GetPosX()
		posy = AI:GetPosY()

		AI:SummonMonsterByPos(11978,posx,posy)
		
end