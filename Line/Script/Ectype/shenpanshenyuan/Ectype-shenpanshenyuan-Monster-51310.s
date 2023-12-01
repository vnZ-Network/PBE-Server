   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Ectype-yilonghuangu-Monster-51310.s
	//		TaskID:????????
	//****************************************
	
	//??BOSS???       112 
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		
		//???2?
		$n = 0
		$recid = 0
		$number = 0
		
		while $n < 30
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04637000000" , $len , "GUID:04637000001" , $ran )
				if $len >= 0
					if $len <= 2000
						if $recid != $luckid
							DropMonsterItems( $luckid , 90060 )
							//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
							#name = GetPlayerInfo( $luckid , "name" )
							BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
							$recid = $luckid
							
							//??2????
							$number = $number + 1
							if $number >= 2
								return
							endif
						endif
					endif
				endif
			endif
		endwhile
		
			
	}