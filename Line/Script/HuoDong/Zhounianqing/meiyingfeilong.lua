	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/03/15
	--		Author:???
	--		Class: Lua
	--		AIName:meiyingfeilong.lua
	--		Backup:???? 
	--****************************************


function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --???? 
            AI:SetAIState( 0 )
        end
        if nIndex == 1 then
        --?? 
            AI:SelfMurder()
        end
        if nIndex == 2 then
            
            r = AI:GetRand(1)
            	if r == 0 then
            		AI:PlayEffect("common\\huodong\\tx_zhounianyanhua1.ini")
            	end
            	if r == 1 then
            		AI:PlayEffect("common\\huodong\\tx_zhounianyanhua2.ini")
            	end
                        
            posx = AI:GetPosX()
						posy = AI:GetPosY()
						x = math.ceil(posx)
						y = math.ceil(posy)
						AI:ScreenText( "The Shadow Dragon is here in Atlantis!"..tostring(x)..","..tostring(y).." is where the Ghost Chest has been placed." , 2 )
            
            AI:SummonMonsterByPos( 32226 , posx + 1 , posy + 1)
						AI:SummonMonsterByPos( 32227 , posx + 3 , posy + 1)
            AI:SummonMonsterByPos( 32226 , posx + 2 , posy + 2)
						AI:SummonMonsterByPos( 32227 , posx + 1 , posy + 3)
            AI:SummonMonsterByPos( 32226 , posx + 3 , posy + 3)
            
						AI:SummonMonsterByPos( 32227 , posx + 1 , posy - 1)
            AI:SummonMonsterByPos( 32226 , posx + 3 , posy - 1)
						AI:SummonMonsterByPos( 32227 , posx + 2 , posy - 2)
            AI:SummonMonsterByPos( 32226 , posx + 1 , posy - 3)
						AI:SummonMonsterByPos( 32227 , posx + 3 , posy - 3)
						
            AI:SummonMonsterByPos( 32226 , posx - 1 , posy + 1)
						AI:SummonMonsterByPos( 32227 , posx - 3 , posy + 1)
            AI:SummonMonsterByPos( 32226 , posx - 2 , posy + 2)
						AI:SummonMonsterByPos( 32227 , posx - 1 , posy + 3)
            AI:SummonMonsterByPos( 32226 , posx - 3 , posy + 3)
            
						AI:SummonMonsterByPos( 32227 , posx - 1 , posy - 1)
            AI:SummonMonsterByPos( 32226 , posx - 3 , posy - 1)
						AI:SummonMonsterByPos( 32227 , posx - 2 , posy - 2)
            AI:SummonMonsterByPos( 32226 , posx - 1 , posy - 3)
						AI:SummonMonsterByPos( 32227 , posx - 3 , posy - 3)
        		
        end
        if nIndex == 3 then
        --?? 
            AI:Say("I shall be back! ")
        		AI:ScreenText("The Shadow Dragon has disappeared!",2)
        end   
end


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)

	a = AI:GetArray(4)
	if a == 0 then
       AI:SetTimer(2,17700,39)
       AI:SetTimer(1,694000,1)
       AI:SetTimer(3,694000,1)
        						
						r = AI:GetRand(1)
            	if r == 0 then
            		AI:PlayEffect("common\\huodong\\tx_zhounianyanhua1.ini")
            	end
            	if r == 1 then
            		AI:PlayEffect("common\\huodong\\tx_zhounianyanhua2.ini")
            	end
                        
            posx = AI:GetPosX()
						posy = AI:GetPosY()
						x = math.ceil(posx)
						y = math.ceil(posy)
						AI:ScreenText( "The Shadow Dragon is here in Atlantis!"..tostring(x)..","..tostring(y).." is where the Ghost Chest has been placed." , 2 )
            
            AI:SummonMonsterByPos( 32226 , posx + 1 , posy + 1)
						AI:SummonMonsterByPos( 32227 , posx + 3 , posy + 1)
            AI:SummonMonsterByPos( 32226 , posx + 2 , posy + 2)
						AI:SummonMonsterByPos( 32227 , posx + 1 , posy + 3)
            AI:SummonMonsterByPos( 32226 , posx + 3 , posy + 3)
            
						AI:SummonMonsterByPos( 32227 , posx + 1 , posy - 1)
            AI:SummonMonsterByPos( 32226 , posx + 3 , posy - 1)
						AI:SummonMonsterByPos( 32227 , posx + 2 , posy - 2)
            AI:SummonMonsterByPos( 32226 , posx + 1 , posy - 3)
						AI:SummonMonsterByPos( 32227 , posx + 3 , posy - 3)
						
            AI:SummonMonsterByPos( 32226 , posx - 1 , posy + 1)
						AI:SummonMonsterByPos( 32227 , posx - 3 , posy + 1)
            AI:SummonMonsterByPos( 32226 , posx - 2 , posy + 2)
						AI:SummonMonsterByPos( 32227 , posx - 1 , posy + 3)
            AI:SummonMonsterByPos( 32226 , posx - 3 , posy + 3)
            
						AI:SummonMonsterByPos( 32227 , posx - 1 , posy - 1)
            AI:SummonMonsterByPos( 32226 , posx - 3 , posy - 1)
						AI:SummonMonsterByPos( 32227 , posx - 2 , posy - 2)
            AI:SummonMonsterByPos( 32226 , posx - 1 , posy - 3)
						AI:SummonMonsterByPos( 32227 , posx - 3 , posy - 3)
						 
  		AI:SetArray(4,1)
  end    
	
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 2 , 149 , 161 )
    	AI:AddSeekPos( 2 , 147 , 165 )
    	AI:AddSeekPos( 2 , 147 , 180 )
    	AI:AddSeekPos( 2 , 133 , 188 )
    	AI:AddSeekPos( 2 , 128 , 200 )
    	AI:AddSeekPos( 2 , 136 , 216 )
    	AI:AddSeekPos( 2 , 151 , 222 )
    	AI:AddSeekPos( 2 , 167 , 209 )
    	AI:AddSeekPos( 2 , 171 , 191 )
    	AI:AddSeekPos( 2 , 186 , 187 )
    	AI:AddSeekPos( 2 , 206 , 182 )
    	AI:AddSeekPos( 2 , 221 , 160 )
    	AI:AddSeekPos( 2 , 255 , 160 )
    	AI:AddSeekPos( 2 , 255 , 131 )
    	AI:AddSeekPos( 2 , 250 , 118 )
    	AI:AddSeekPos( 2 , 243 , 109 )
    	AI:AddSeekPos( 2 , 193 , 109 )
    	AI:AddSeekPos( 2 , 178 , 109 )
    	AI:AddSeekPos( 2 , 178 , 130 )
    	AI:AddSeekPos( 2 , 156 , 133 )
    	AI:AddSeekPos( 2 , 140 , 138 )
    	AI:AddSeekPos( 2 , 122 , 139 )
    	AI:AddSeekPos( 2 , 122 , 165 )
    	AI:AddSeekPos( 2 , 136 , 160 )
    	AI:AddSeekPos( 2 , 149 , 161 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)  
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end