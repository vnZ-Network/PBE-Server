	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/04
	//		Author:???
	//		TaskName:SY-NPC-1.s
	//		TaskID:???
	//
	//****************************************
	
	function OnRequest(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		
		if $Now_Year != 2009
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $Now_Month != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $Now_Mday != 12
			if $Now_Mday != 13
				if $Now_Mday != 14
					DisableNpcOption(0)
					DisableNpcOption(1)
				endif	
			endif	
		endif
		
		if $Now_Hour < 20
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $Now_Hour > 22
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value != 0
			DisableNpcOption(1)
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $TaskVar == $time0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		
		if $Now_Year != 2009
			BC( "dialogbox", "player", -1, "N/A???!???2009?6?12?13?14??????????" )
			return
		endif
		
		if $Now_Month != 6
			BC( "dialogbox", "player", -1, "N/A???!???2009?6?12?13?14??????????" )
			return
		endif
		
		if $Now_Mday != 12
			if $Now_Mday != 13
				if $Now_Mday != 14
					BC( "dialogbox", "player", -1, "N/A???!???2009?6?12?13?14??????????" )
					return
				endif	
			endif	
		endif
		
		if $Now_Hour < 20
			BC( "dialogbox", "player", -1, "You can only receive a Probe during 20:00-22:00." )
			return
		endif
		
		if $Now_Hour > 22
			BC( "dialogbox", "player", -1, "You can only receive a Probe during 20:00-22:00." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $TaskVar == $time0
			BC( "dialogbox", "player", -1, "You have already taken the Treasure Probe." )
			return
		endif
		
		$ItemID = 63392
		
		$level = GetPlayerInfo( -1, "level" )
		if $level <= 10
			SetPlayerVar( -1, 3681, $time0 )
			AddPlayerInfo( -1, "item", $ItemID, 1 )
			return
		endif
		if $level > 10
			if $level <= 20
				SetPlayerVar( -1, 3681, $time0 )
				AddPlayerInfo( -1, "item", $ItemID, 5 )
				return
			endif	
		endif
		if $level > 20
			if $level <= 30
				SetPlayerVar( -1, 3681, $time0 )
				AddPlayerInfo( -1, "item", $ItemID, 10 )
				return
			endif	
		endif
		if $level > 30
			SetPlayerVar( -1, 3681, $time0 )
			AddPlayerInfo( -1, "item", $ItemID, 20 )
			return
		endif
	}
	
	function OnOption1(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		
		if $Now_Year != 2009
			BC( "dialogbox", "player", -1, "You can only recharge the Probe on 12th, 13th and 14th of June in 2009." )
			return
		endif
		
		if $Now_Month != 6
			BC( "dialogbox", "player", -1, "You can only recharge the Probe on 12th, 13th and 14th of June in 2009." )
			return
		endif
		
		if $Now_Mday != 12
			if $Now_Mday != 13
				if $Now_Mday != 14
					BC( "dialogbox", "player", -1, "You can only recharge the Probe on 12th, 13th and 14th of June in 2009." )
					return
				endif	
			endif	
		endif
		
		if $Now_Hour < 20
			BC( "dialogbox", "player", -1, "You can only recharge the Probe during 20:00-22:00." )
			return
		endif
		
		if $Now_Hour > 22
			BC( "dialogbox", "player", -1, "You can only recharge the Probe during 20:00-22:00." )
			return
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value != 0
			BC( "dialogbox", "player", -1, "You already have a recharged Treasure Probe." )
			return
		endif
		
		$ItemID = 63392
		$item_num = GetPlayerInfo( -1, "item", $ItemID )

		if $item_num == 0
			BC( "dialogbox", "player", -1, "What should I recharge while you don't have a probe?" )
			return
		endif
		
//		$money = GetPlayerInfo( -1, "money")
//		if $money < 100
//			BC( "dialogbox", "player", -1, "GUID:08247000013" )
//			return
//		endif
//??
//		SubPlayerInfo(-1 "money" , 100 )

		$n = RandomNumber ( 1, 3 )
		if $n == 1
			SetPlayerVar( -1, 3680 , 128 )
			BC( "chat", "player", -1, "I have prepared the Probe for you. According to its readings, the treasure should be around the Expedition Camp." )
			BC( "dialogbox", "player", -1, "I have prepared the Probe for you. According to its readings, the treasure should be around the Expedition Camp." )
		endif
		if $n == 2
			SetPlayerVar( -1, 3680 , 129 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Scorpion Lord's Crypt." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Scorpion Lord's Crypt." )
		endif
		if $n == 3
			SetPlayerVar( -1, 3680 , 119 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
		endif
			
	}