 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/28
	//		Author:???
	//		TaskName:Ectype-yijiwaiwei-monster-55197.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
			
			$ectype_id = GetEctypeID( -1 , 237 )
			BC( "screen" , "map" , $ectype_id , "The Lost Ruins event has ended. Please leave the instance." )
			BC( "chat" , "map" , $ectype_id , "The Lost Ruins event has ended. Please leave the instance." )
			
			$fieldlevel = GetEctypeVar( -1 , 90 )
			if $fieldlevel > 0
				//??????,???????0,????
				//?????
				//????? = ????^2+0.6*????+1000
				//????? = ????? * 150
				$godexp = $fieldlevel * $fieldlevel
				$b = $fieldlevel * 6
				$b = $b / 10
				$godexp = $godexp + $b
				$godexp = $godexp + 1000
				$godexp = $godexp * 150
		//			AddFieldExp( -1 , $godexp )	
				
				$t  = 0
				while $t < 5
					$Mem = GetTeamMemberID( -1, $t )
					if  $Mem > 0
						AddFieldExp($Mem , $godexp )			
					endif
					$t  = $t  + 1
				endwhile
			endif
			
	  //???????
		//		$playerid = GetPlayerID()
		//		$dropitemDbase1 = 90174
		//		$dropitemDbase2 = 90175
		//		$dropitemDbase3 = 90176
		//		$Cid = 0
		//		while $Cid < 6
		//		$teamplayer_id = GetTeamMemberID( $playerid, $Cid )
		//		$level = GetPlayerInfo( $teamplayer_id, "level" )
		//		$lenD = GetPlayerDistance( $playerid, $teamplayer_id )
		//		if $teamplayer_id > 0
		//			 if $lenD < 25
		//			    if $level >= 70
		//			       if $level <= 99
		//					   DropMonsterItems( $teamplayer_id, $dropitemDbase1 )
		//					   endif
		//				  endif
		//				  if $level >= 100
		//			       if $level <= 119
		//					   DropMonsterItems( $teamplayer_id, $dropitemDbase2 )
		//					   endif
		//				  endif
		//				  if $level >= 120
		//					   DropMonsterItems( $teamplayer_id, $dropitemDbase3 )
		//					endif
		//			  endif
		//		  endif
		//			$Cid = $Cid + 1
		//		endwhile

	} 