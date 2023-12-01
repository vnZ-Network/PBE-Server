	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/13
	//		Author:???
	//		TaskName:Frozen-NPC-2024.s
	//		TaskID:??NPC
	//
	//****************************************
	
	
	function OnOption0(){
	
		$yday = GetSystemTime( "yday" )
		$line = GetServerLineID()
		if $line != 4
			BC( "dialogbox", "player", -1, "You can enter Glacier City only in Realm 4." )
			return
		endif
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		$Lost = IsFrozenFortLost( $guildid )
		if $Lost == 0
			BC( "dialogbox", "player", -1, "Your guild fountain has been destroyed. You lost the chance to enter Frozen Plain." )
			return
		endif
		$qualification = GetFrozenFortWarPos( -1 )
		if $qualification == 1
			FlyToMap( -1 , 65 , 52 , 29 )
			return
		endif
		if $qualification == 2
			FlyToMap( -1 , 65 , 80 , 31 )
			return
		endif
		if $qualification == 3
			FlyToMap( -1 , 65 , 91 , 91 )
			return
		endif
		if $qualification == 4
			FlyToMap( -1 , 65 , 43 , 96 )
			return
		endif
		if $qualification == 5
			FlyToMap( -1 , 65 , 28 , 91 )
			return
		endif
		if $qualification == 6
			FlyToMap( -1 , 65 , 35 , 28 )
			return
		endif
		BC( "dialogbox", "player", -1, "Battlefield has been closed" )
		
	}
	function OnOption1(){
	
		FlyToMap( -1 , 475 , 100 , 64 )
		
	}