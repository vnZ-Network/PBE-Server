function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    PosY = AI:GetPosY()--根据资源点位置调整资源增加值
    if nIndex == 0 then
    	if PosY < 200 then
    		if PosY > 120 then
    			AI:AddBattleResource(30)
    		else    		
					AI:AddBattleResource(15)   
				end
			else
				AI:AddBattleResource(15)  
			end
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:SetTimer(0,2000,65535)
        AI:SetArray(1,1)
    end
end