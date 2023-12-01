	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:NPC-23.s
	//		TaskID:23 ???
	//
	//****************************************
	
	function OnRequest(){
		//DisableNpcOption(0)
		$Line = GetServerLineID()
		if $Line != 6
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "The event is available only in Realm 6." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			BC( "dialogbox", "player", -1, "You are not LV60 yet." )
			return
		endif
		
		$Info = GetPlayerInfo( -1, "item", 63244 )
		if $Info > 0
			$Sub0 = SubPlayerInfo( -1, "item", 63244, 1 )
			if $Sub0 != 0
				return
			endif
			FlyToMap( -1, 170, 37, 51 )
			return
		else
			BC( "dialogbox", "player", -1, "You don't have Proof of Penance." )
			return
		endif
		
	}