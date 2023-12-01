	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-quest-145.s
	//		TaskID: ?? ?????
	//
	//****************************************
	
	function OnTaskDone(){
	
		$succeed = FlyToEctype( -1 , 244 , 31, 80 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 244 )
			$ectype_uid = GetEctypeUniqueID( -1 , 244 )
			$Done = IsTaskDone( -1 , 146 )
			StartEctypeTimer( -1 , 244 , 1 )
			StartEctypeTimer( -1 , 244 , 2 )
			if $Done != 0
				AcceptTask( -1 , 146 )
			endif
			BC( "screen" , "player" , -1 , "You have entered the Styx instance in single mode." )
		else
			BC( "dialogbox", "player", -1, "The Styx instance is full, please change realms or try again later. Talk to Gold Libra to enter again!" )
			return
		endif
		
	}