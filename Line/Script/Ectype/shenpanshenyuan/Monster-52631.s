//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2012/6/28
//	--		Author:???
//	--		Class:	Monster-52631.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//????NPC
		AddNPC( 2053 , $ectype_ID )
		
		
		$n = 0
		while $n < 5
			$n = $n + 1
			$ran = RandomNumber( 0 , 5 )
			$luckid = GetTeamMemberID( -1 , $ran )
			
			if $luckid  > 0
				$len = GetPlayerDistance( -1 , $luckid )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04646000000" , $len , "GUID:04646000001" , $ran )
				if $len >= 0
					if $len <= 2000
						DropMonsterItems( $luckid , 90056 )
						//AddPlayerInfo( $luckid , "item" , 59151 , 1 )
						#name = GetPlayerInfo( $luckid , "name" )
						BC( "screen" , "map" , $ectype_ID , #name , " obtained a piece of Soul Gear!" )
						$n = 5
					endif
				endif
			endif
		endwhile

	
	}