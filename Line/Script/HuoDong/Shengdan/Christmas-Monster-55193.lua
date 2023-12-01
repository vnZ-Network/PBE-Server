	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/12/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Christmas-Monster-55193.lua
	--		Remark:????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
			a = AI:GetArray(2)
			if a == 0 then
				AI:ScreenText("New Year's Snow Bear: Happy New Year! I am here to give gifts!",2)
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:ScreenText("New Year's Snow Bear: Follow me closely. I have a lot of gifts to give away!",2)
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:ScreenText("New Year's Snow Bear: I will start my tour in Atlantis. During the tour, I will give away a New Year's Pack!",2)
				AI:SetAIState(0)
				AI:SetArray(2,3)
				AI:SetArray(5,1)
			end
		end
		if nIndex == 1 then
		--	
			AI:ScreenText("New Year's Snow Bear: Follow me closely. I have a lot of gifts to give away!",2)
			AI:Say("Follow me closely. I have a lot of gifts to give away!")
			AI:PlayEffect("common\\Yanhua\\tx_ptyanhua\\tx_hhyanhua_02.ini")
		end
		
		--??????
		if nIndex == 3 then
		--	
			AI:Say("Come and take a New Year's Pack!" )
			AI:ScreenText("New Year's Snow Bear: Come and take a New Year's Pack!",2)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			ranx = math.random( posx-6 , posx+6 )
      rany = math.random( posy-6 , posy+6 )
      
			AI:PlayEffect("common\\daxue\\tx_daxue.ini")
			AI:SummonMonsterByPos( 55194 , posx + 2 , posy - 2)
			AI:SummonMonsterByPos( 55194 , posx + 2 , posy + 2)
			AI:SummonMonsterByPos( 55194 , posx - 2 , posy + 2)
			AI:SummonMonsterByPos( 55194 , posx - 2 , posy - 2)
			AI:SummonMonsterByPos( 55194 , posx  , posy + 2)
			AI:SummonMonsterByPos( 55194 , posx  , posy - 2)
			AI:SummonMonsterByPos( 55194 , posx + 2 , posy )
			AI:SummonMonsterByPos( 55194 , posx - 2 , posy )
			AI:SummonMonsterByPos( 55194 , posx + 4 , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx + 4 , posy + 4)
			AI:SummonMonsterByPos( 55194 , posx - 4 , posy + 4)
			AI:SummonMonsterByPos( 55194 , posx - 4 , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx , posy + 4)
			AI:SummonMonsterByPos( 55194 , posx , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx + 4 , posy)
			AI:SummonMonsterByPos( 55194 , posx - 4 , posy)
			AI:SummonMonsterByPos( 55194 , posx + 6 , posy - 6)
			AI:SummonMonsterByPos( 55194 , posx + 6 , posy + 6)
			AI:SummonMonsterByPos( 55194 , posx - 6 , posy + 6)
			AI:SummonMonsterByPos( 55194 , posx - 6 , posy - 6)
			AI:SummonMonsterByPos( 55194 , posx , posy + 6)
			AI:SummonMonsterByPos( 55194 , posx , posy - 6)
			AI:SummonMonsterByPos( 55194 , posx + 6 , posy)
			AI:SummonMonsterByPos( 55194 , posx - 6 , posy)
			AI:SummonMonsterByPos( 55194 , posx + 4 , posy + 2)
			AI:SummonMonsterByPos( 55194 , posx + 4 , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx - 4 , posy - 2)
			AI:SummonMonsterByPos( 55194 , posx - 4 , posy + 2)
			AI:SummonMonsterByPos( 55194 , posx + 2 , posy + 4)
			AI:SummonMonsterByPos( 55194 , posx + 2 , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx - 2 , posy - 4)
			AI:SummonMonsterByPos( 55194 , posx - 2 , posy + 4)
			
			AI:SummonMonsterByPos( 55192 , ranx , rany )
			
		end
		
		if nIndex == 4 then
		--	
			a = AI:GetArray(3)
			if a == 0 then
				AI:ScreenText("New Year's Snow Bear: Let's call it a day.",2)
				AI:Say("Let's call it a day.")
				AI:SetArray(3,1)
			elseif a == 1 then
				AI:ScreenText("New Year's Snow Bear: We will continue tomorrow!",2)
				AI:Say("We will continue tomorrow!")
				AI:SetArray(3,2)
			elseif a == 2 then
				AI:ScreenText("New Year's Snow Bear: I will be waiting for you.",2)
				AI:Say("I will be waiting for you.")
				AI:SetArray(3,3)
				AI:SelfMurder()
			end
		end
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(5)
		if a == 1 then
			AI:Say("Follow me. There are gifts for you!")
			AI:SetTimer(1,11000,65535)
			AI:SetTimer(3,30000,20)
			AI:SetTimer(4,660000,1)
			AI:SetArray(5,2)
		end
	end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(2,150,156)
	    AI:AddSeekPos(2,144,156)
	    AI:AddSeekPos(2,144,196)
	    AI:AddSeekPos(2,110,196)
	    AI:AddSeekPos(2,110,154)
	    AI:AddSeekPos(2,87,154)
	    AI:AddSeekPos(2,87,190)
	    AI:AddSeekPos(2,102,191)
	    AI:AddSeekPos(2,102,199)
	    AI:AddSeekPos(2,107,199)
	    AI:AddSeekPos(2,102,237)
	    AI:AddSeekPos(2,112,237)
	    AI:AddSeekPos(2,112,201)
    	AI:AddSeekPos(2,147,207)
	 	  AI:AddSeekPos(2,148,252)
	 	  AI:AddSeekPos(2,153,252)
  	  AI:AddSeekPos(2,153,223)
	 	  AI:AddSeekPos(2,176,223)
	   AI:AddSeekPos(2,161,200)
	   AI:AddSeekPos(2,213,194)
	   AI:AddSeekPos(2,169,187)
	   AI:AddSeekPos(2,176,167)
	   AI:AddSeekPos(2,155,156)
	   AI:AddSeekPos(2,158,196)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 150 ) and ( PosY == 156 )) then
			AI:Say("Greetings, everyone!")
			AI:ScreenText("New Year's Snow Bear: Greetings, everyone!",2)
			AI:SetAIState(7)
			AI:SetTimer(0,5000,3)
		end
	end
	
	
	
	