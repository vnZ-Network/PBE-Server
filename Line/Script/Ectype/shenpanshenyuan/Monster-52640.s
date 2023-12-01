   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Monster-52640.s
	//		TaskID:??????????
	//****************************************
	
	//??BOSS???       112 
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		
		//???2?
		$n = 0
		$recid = 0
		$number = 0
		
		while $n < 5
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04650000000" , $len , "GUID:04650000001" , $ran )
				if $len >= 0
					if $len <= 2000
						if $recid != $luckid
							$sui = RandomNumber(0,100)
							if $sui > 70
								DropMonsterItems( $luckid , 90060 )
								//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
								#name = GetPlayerInfo( $luckid , "name" )
								BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
								$recid = $luckid
								$n = 5				
							endif			
						endif
					endif
				endif
			endif
		endwhile
		
			
	}