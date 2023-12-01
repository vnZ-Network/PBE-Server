	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-Npc-381.s
	//		TaskID: ?? ?????????
	//
	//****************************************
	//42 ??????
	//43 ???????
	//44 383NPC??
	//45 385NPC??
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 130 )
		$Done = IsTaskDone( -1 , 130 )
		if $Accept != 0
			if $Done != 0
				DisableNpcOption(0)
			endif
		endif
		$ectype_id = GetEctypeID( -1 , 242 )
		if $ectype_id <= 0
			DisableNpcOption(1)
		endif
		
	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 130 )
		$Done = IsTaskDone( -1 , 130 )
		if $Accept != 0
			if $Done != 0
				return
			endif
		endif
	
		$succeed = FlyToEctype( -1 , 242 , 83, 29 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 242 )
			$ectype_uid = GetEctypeUniqueID( -1 , 242 )
			
			$a = GetPlayerVar( -1 , 42 )
			$b = GetPlayerVar( -1 , 43 )
			$c = GetPlayerVar( -1 , 44 )
			$d = GetPlayerVar( -1 , 45 )
			SetEctypeVar( $ectype_id , 0 ,$a )
			SetEctypeVar( $ectype_id , 1 ,$b )
			SetEctypeVar( $ectype_id , 7 ,$c )
			SetEctypeVar( $ectype_id , 8 ,$d )
			
			StartEctypeTimer( $ectype_id , 1 )
			
			BC( "screen" , "player" , -1 , "You have entered the Crypt of the Arch Priestess instance in single mode." )
		else
			BC( "dialogbox", "player", -1, "The Crypt of the Arch Priestess Instance is full, please change realms or try again later." )
			return
		endif
		
	}
	
		//-------????-----------------
	function OnOption1(){
		
		$ectype_id = GetEctypeID( -1 , 242 )
		if $ectype_id > 0
			BC( "dialogbox", "player", -1, "Reset [Crypt of the Arch Priestess] instance successfully" )
			ReleaseEctype ( -1 , 242 )
		endif
		
	}
	