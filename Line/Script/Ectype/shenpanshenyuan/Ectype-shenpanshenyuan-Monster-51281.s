   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Ectype-yilonghuangu-Monster-51281.s
	//		TaskID:??????BOSS
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//????NPC
		AddNPC( 2053 , $ectype_ID )
		
		
		$n = 0
		while $n < 15
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04632000000" , $len , "GUID:04632000001" , $ran )
				if $len >= 0
					if $len <= 2000
						DropMonsterItems( $luckid , 90056 )
						//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
						#name = GetPlayerInfo( $luckid , "name" )
						BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
						$n = 15
					endif
				endif
			endif
		endwhile
		
	}