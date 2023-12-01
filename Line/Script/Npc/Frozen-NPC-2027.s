	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-2027.s
	//		TaskID: ??
	//
	//****************************************
	
	function OnRequest(){
	
		$line = GetServerLineID()
		if $line != 4
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
	}
	
	function OnOption0(){
	
		$line = GetServerLineID()
		if $line != 4
			return
		endif
		$guildid = GetPlayerInfo( -1 , "guildid" )
		$yday = GetSystemTime( "yday" )
		$nowtime = GetGuildVar( $guildid , 6 )
		$guildrank = GetPlayerInfo( -1 , "guildrank" )
		if $guildrank != 0
			BC( "dialogbox", "player", -1, "You are not the guild leader." )
			return
		endif
		$Fort = FrozenFortAccess ( -1 )
		if $Fort != 0
			BC( "dialogbox", "player", -1, "Only the occupiers of Glacier City have the rights to taxes." )
			return
		endif
		if $nowtime != $yday
			AddPlayerInfo ( -1 , "guildmoney" , 225000 )
			SetGuildVar( $guildid , 6 , $yday )
			BC( "dialogbox", "player", -1, "Tax payment received! Check your Guild Funds." )
		else
			BC( "dialogbox", "player", -1, "The guild tax has already been taken today." )
		endif
	}
	
	function OnOption1(){
		
		$line = GetServerLineID()
		if $line != 4
			return
		endif
		$Access = FrozenFortAccess( -1 )
		if $Access != 0
			BC( "dialogbox", "player", -1, "You are not the owner of Glacier City. You cannot acquire Glacier Chest." )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$opp = GetPlayerInfo( -1 , "guildlevel" )
		$opp = $opp + 2
		$offer = GetPlayerInfo( -1 , "guildtotaloffer" )
		if $offer < 60
			BC( "dialogbox", "player", -1, "You need a max Contribution of 60 to be qualified to receive a Glacier Chest. Each Glacier Chest costs 2 Contribution." )
			return
		endif
		$offer = GetPlayerInfo( -1 , "guildoffer" )
		if $offer < 2
			BC( "dialogbox", "player", -1, "You need at least 2 Contribution to receive a Glacier Chest!" )
			return
		endif
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3726 )
		if $nowtime != $lasttime
			$info = SubPlayerInfo( -1 , "guildoffer" , 2 )
			if $info != 0
				return
			endif
			AddPlayerInfo( -1 , "item" , 63473 , $opp )
			SetPlayerVar( -1 , 3726 , $nowtime )
			return
		else
			BC( "dialogbox", "player", -1, "You have already received a Glacier Chest today." )
		endif
		
	}
	
