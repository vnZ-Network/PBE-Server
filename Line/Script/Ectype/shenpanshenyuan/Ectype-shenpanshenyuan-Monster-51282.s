   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Ectype-yilonghuangu-Monster-51282.s
	//		TaskID:?????????
	//****************************************
	
	
	//113  ??????????
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//XXXX?????3
		
		
		//AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 120 , 0 , 0 )
		//AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 130 , 0 , 0 )
		//AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 140 , 0 , 0 )
		//AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 150 , 0 , 0 )
		
		
		//AddMonsterByFloat( 51290 , 1 , $ectype_ID , 147 , 108 , 0 , 90 )
		//AddMonsterByFloat( 51290 , 1 , $ectype_ID , 177 , 110 , 0 , 90 )
		//AddMonsterByFloat( 51290 , 1 , $ectype_ID , 165 , 108 , 0 , 90 )
		//AddMonsterByFloat( 51290 , 1 , $ectype_ID , 183 , 110 , 0 , 90 )
		//AddMonsterByFloat( 51290 , 1 , $ectype_ID , 155 , 108 , 0 , 90 )
		
		
		//AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 120 , 0 , 180 )
		//AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 130 , 0 , 180 )
		//AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 140 , 0 , 180 )
		//AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 150 , 0 , 180 )
		
		
		//AddMonsterByFloat( 51292 , 1 , $ectype_ID , 155 , 114 , 0 , 270 )
		//AddMonsterByFloat( 51292 , 1 , $ectype_ID , 147 , 114 , 0 , 270 )
		//AddMonsterByFloat( 51292 , 1 , $ectype_ID , 165 , 114 , 0 , 270 )
		
		BC( "screen" , "map" , $ectype_ID , "Go talk to Orpheus, and he will tell you what to do next." )
		BC( "screen" , "map" , $ectype_ID , "Go talk to Orpheus, and he will tell you what to do next." )
		
		OpenMask( 3 , $ectype_ID )
		
		//??NPC2055
		AddNPC( 2055 , $ectype_ID )
		
		
		//???????,?????????
		SetEctypeVar( -1 , 113 , 1 )
		
		OpenMask( 4 , $ectype_ID )
		
		//??????,?15?
		$n = 0
		while $n < 15
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04633000002" , $len , "GUID:04633000003" , $ran )
				if $len >= 0
					if $len <= 2000
						DropMonsterItems( $luckid , 90057 )
						//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
						#name = GetPlayerInfo( $luckid , "name" )
						BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
						$n = 15
					endif
				endif
			endif
		endwhile
		
		
	}