   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Ectype-yilonghuangu-Monster-51283-51284.s
	//		TaskID:?????????
	//****************************************
	
	//??BOSS???       112 
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )

		AddNPC( 2056 , -1 )
		BC( "screen" , "map" , $ectype_ID , "You have successfully defeated Latamantis and saved Eurydice." )
		
		//???bug,??1?????????
		$count = GetEctypeVar( -1 , 112 )
		$count = $count + 1
		SetEctypeVar( -1 , 112 , $count )
		
		if $count >= 2
			BC( "screen" , "map" , $ectype_ID , "You will be punished if you use bugs in the game! Report to a GM at once." )
			return
		endif
		
		$n = 0
		while $n < 15
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04635000002" , $len , "GUID:04635000003" , $ran )
				if $len >= 0
					if $len <= 2000
						DropMonsterItems( $luckid , 90058 )
						//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
						#name = GetPlayerInfo( $luckid , "name" )
						BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
						$n = 15
					endif
				endif
			endif
		endwhile
		
			
	}