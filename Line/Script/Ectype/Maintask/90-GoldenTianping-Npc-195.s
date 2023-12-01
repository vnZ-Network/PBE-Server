	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-GoldenTianping-Npc-195.s
	//		TaskID: ?? ????
	//
	//****************************************

	function OnRequest(){
		
		NPCAction( -1 , 195 , specialidle , 0 )
		$Accept = IsTaskAccept( -1 , 148 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
		
		$Done = IsTaskDone( -1 , 145 )
		if $Done != 0
			DisableNpcOption(1)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 148 )
		if $Accept != 0
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 12743 )
		if $a > 0
			BC( "dialogbox", "player", -1, "You already have a Proof of Trial." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12743 ,1 )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "dialogbox", "player", -1, "You have passed the judgment of Gold Libra." )
		
	}
	
	function OnOption1(){
	
		
		
		$Done = IsTaskDone( -1 , 145 )
		if $Done != 0
			return
		endif
		
		$succeed = FlyToEctype( -1 , 244 , 31, 80 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 244 )
			$ectype_uid = GetEctypeUniqueID( -1 , 244 )
			$Accept = IsTaskAccept( -1 , 145 )
			StartEctypeTimer ( $ectype_id ,1  )
			StartEctypeTimer ( $ectype_id ,2  )
			BC( "screen" , "player" , -1 , "You have entered the Styx instance in single mode." )
		else
			BC( "dialogbox", "player", -1, "The Styx instance is full, please change realms or try again later." )
			return
		endif
	}
	
	
	