	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/08/09
	--		Author:???
	--		Class: Lua
	--		AIName:AI_longdichuansong02.lua
	--		Backup:?????
	--****************************************


	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
--------------??????-------------------------------------------------    	
    if nIndex == 0 then
--?1??14?11962 
			AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
				AI:SummonMonsterByPos(11962, 115,160)
				AI:SummonMonsterByPos(11962, 115,162)
				AI:SummonMonsterByPos(11962, 115,164)
				AI:SummonMonsterByPos(11962, 115,168)

				AI:SummonMonsterByPos(11962, 117,160)
				AI:SummonMonsterByPos(11962, 117,162)
				AI:SummonMonsterByPos(11962, 127,164)
				AI:SummonMonsterByPos(11962, 117,168)

				AI:SummonMonsterByPos(11962, 119,160)
				AI:SummonMonsterByPos(11962, 119,162)
				AI:SummonMonsterByPos(11962, 119,164)
				AI:SummonMonsterByPos(11962, 119,168)

				AI:SummonMonsterByPos(11962, 121,162)
				AI:SummonMonsterByPos(11962, 121,164)
				
				AI:SetTimer(1,70000,1)
				AI:SetArray(9,70)
				AI:SetTimer(9,10000,9999)
		end
---------------------------------------------------------------------------
    if nIndex == 1 then
--?2??14?11962 
			AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
				AI:SummonMonsterByPos(11962, 100,160)
				AI:SummonMonsterByPos(11962, 100,162)
				AI:SummonMonsterByPos(11962, 100,164)
				AI:SummonMonsterByPos(11962, 100,168)

				AI:SummonMonsterByPos(11962, 102,160)
				AI:SummonMonsterByPos(11962, 102,162)
				AI:SummonMonsterByPos(11962, 102,164)
				AI:SummonMonsterByPos(11962, 102,168)

				AI:SummonMonsterByPos(11962, 104,160)
				AI:SummonMonsterByPos(11962, 104,162)
				AI:SummonMonsterByPos(11962, 104,164)
				AI:SummonMonsterByPos(11962, 104,168)

				AI:SummonMonsterByPos(11962, 106,162)
				AI:SummonMonsterByPos(11962, 106,164)
				
				AI:SetTimer(2,70000,1)
				AI:SetArray(9,70)
				AI:SetTimer(9,10000,9999)
		end		
---------------------------------------------------------------------------  		
    if nIndex == 2 then
--?3??14?11962 
				AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
				AI:SummonMonsterByPos(11962, 100,145)
				AI:SummonMonsterByPos(11962, 100,147)
				AI:SummonMonsterByPos(11962, 100,149)
				AI:SummonMonsterByPos(11962, 100,151)

				AI:SummonMonsterByPos(11962, 102,145)
				AI:SummonMonsterByPos(11962, 102,147)
				AI:SummonMonsterByPos(11962, 102,149)
				AI:SummonMonsterByPos(11962, 102,151)
			
				AI:SummonMonsterByPos(11962, 104,145)
				AI:SummonMonsterByPos(11962, 104,147)
				AI:SummonMonsterByPos(11962, 104,149)
				AI:SummonMonsterByPos(11962, 104,151)

				AI:SummonMonsterByPos(11962, 106,147)
				AI:SummonMonsterByPos(11962, 106,149)
				
				AI:SetTimer(3,70000,1)
				AI:SetArray(9,70)
				AI:SetTimer(9,10000,9999)
		end		
---------------------------------------------------------------------------  				
    if nIndex == 3 then
--?4??14?11962 
			AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
				AI:SummonMonsterByPos(11962, 115,145)
				AI:SummonMonsterByPos(11962, 115,147)
				AI:SummonMonsterByPos(11962, 115,149)
				AI:SummonMonsterByPos(11962, 115,151)

				AI:SummonMonsterByPos(11962, 117,145)
				AI:SummonMonsterByPos(11962, 117,147)
				AI:SummonMonsterByPos(11962, 117,149)
				AI:SummonMonsterByPos(11962, 117,151)

				AI:SummonMonsterByPos(11962, 119,145)
				AI:SummonMonsterByPos(11962, 119,147)
				AI:SummonMonsterByPos(11962, 119,149)
				AI:SummonMonsterByPos(11962, 119,151)

				AI:SummonMonsterByPos(11962, 121,147)
				AI:SummonMonsterByPos(11962, 121,149)
				
				AI:SetTimer(4,70000,1)
				AI:SetArray(9,70)
				AI:SetTimer(9,10000,9999)
		end
---------------------------------------------------------------------------  				
    if nIndex == 4 then
--?5??14?11962 
			AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
				AI:SummonMonsterByPos(11962, 110,152)
				AI:SummonMonsterByPos(11962, 110,154)
				AI:SummonMonsterByPos(11962, 110,156)
				AI:SummonMonsterByPos(11962, 110,158)

				AI:SummonMonsterByPos(11962, 112,152)
				AI:SummonMonsterByPos(11962, 112,154)
				AI:SummonMonsterByPos(11962, 112,156)
				AI:SummonMonsterByPos(11962, 112,158)

				AI:SummonMonsterByPos(11962, 114,152)
				AI:SummonMonsterByPos(11962, 114,154)
				AI:SummonMonsterByPos(11962, 114,156)
				AI:SummonMonsterByPos(11962, 114,158)

				AI:SummonMonsterByPos(11962, 116,154)
				AI:SummonMonsterByPos(11962, 116,156)
				AI:SetArray(9,140)
				AI:SetTimer(9,10000,9999)
		end

---------------------------------------------------------------------------
    if nIndex == 8 then
--?1?11972 
			AI:SummonMonsterByPos(11972, 112,156)
			AI:ScreenText("The Dragon Emperor has once again returned! Tremble in my presence!",2)
		end

		if nIndex == 9 then
			timeleft = AI:GetArray(9)
--			print(tostring(timeleft))
			if timeleft > 10 then
				timeleft = timeleft - 10
				AI:SetArray(9,timeleft)
				if timeleft <= 10 then
					AI:DelTimer(9)
				end
				msg = "Next wave of Dragon Emperor Legion: "..timeleft.." sec. "
				AI:ScreenText(msg,2)
			end
		end
		
	end
		

---------------------------------------------------------------------------
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)

        a = AI:GetArray(1)
        if a == 0 then
        
				AI:ScreenText("The Dragon Emperor's legion has retreated back through the portal to the catacombs, but don't relax just yet - there's sure to be more troops coming very soon!",2)
					AI:SummonMonsterByPos(11962, 115,160)
					AI:SummonMonsterByPos(11962, 115,162)
					AI:SummonMonsterByPos(11962, 115,164)
					AI:SummonMonsterByPos(11962, 115,168)
	
					AI:SummonMonsterByPos(11962, 117,160)
					AI:SummonMonsterByPos(11962, 117,162)
					AI:SummonMonsterByPos(11962, 127,164)
					AI:SummonMonsterByPos(11962, 117,168)
	
					AI:SummonMonsterByPos(11962, 119,160)
					AI:SummonMonsterByPos(11962, 119,162)
					AI:SummonMonsterByPos(11962, 119,164)
					AI:SummonMonsterByPos(11962, 119,168)
	
					AI:SummonMonsterByPos(11962, 121,162)
					AI:SummonMonsterByPos(11962, 121,164)
				
					AI:SetTimer(0,420000,4)
					AI:SetTimer(8,1820000,1)
					AI:SetArray(9,70)
					AI:SetTimer(9,10000,9999)
 					AI:SetArray(1,1)
        end
    end