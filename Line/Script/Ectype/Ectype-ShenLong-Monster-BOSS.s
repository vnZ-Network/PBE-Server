  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-ShenLong-Monster-BOSS.s
	//		TaskID:???BOSS
	//****************************************
	
	function OnDead(){
		
		//??boss??????????
		$mapid = GetPlayerInfo( -1 , mapid )
		
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			
			if $teamplayer_id != -1
			
				$gid = GetPlayerInfo( $teamplayer_id , "guildid" )
				if $gid != 0
				
					//????????????
					$mymapid = GetPlayerInfo( $teamplayer_id , "mapid" )
					if $mapid == $mymapid
					
						//??????????????,10?
						$popularity = GetPlayerInfo( $teamplayer_id , "guildmemberpopularity" )
						if $popularity < 10
							if $popularity == 9
								AddPlayerInfo( $teamplayer_id , "guildmemberpopularity" , 1 )
								AddPlayerInfo( $teamplayer_id , "guildpopularity" , 1 )
							else
								AddPlayerInfo( $teamplayer_id , "guildmemberpopularity" , 2 )
								AddPlayerInfo( $teamplayer_id , "guildpopularity" , 2 )
							endif
						endif
					
					endif
				
				endif
			
				//??????		
				$monid = GetMonsterTemplateID(-1)
				$monid = $monid - 51256
				$cardid = $monid + 12528
				$bianliang = $monid + 3429
				$ishave = HaveTarot($teamplayer_id,$cardid)
				if $ishave == 0
					$oldtime = GetPlayerVar( $teamplayer_id, 3976 )
					$yday = GetSystemTime( "yday" )
					if $oldtime <= 0
						SetPlayerVar( $teamplayer_id, $bianliang ,1)
					else
						$chazhi = $yday - $oldtime
						if $chazhi < 1
							SetPlayerVar( $teamplayer_id, $bianliang ,1)
						else
							$plus = GetPlayerVar( $teamplayer_id, $bianliang )
							$plus = $plus + 2
							$plus = $plus - $chazhi
							if $plus > 0
								SetPlayerVar( $teamplayer_id, $bianliang ,$plus)
							else
								SetPlayerVar( $teamplayer_id, $bianliang ,1)
							endif
						endif
					endif
					$plus = GetPlayerVar( $teamplayer_id, $bianliang )
					if $plus > 30
						AddTarotCard($teamplayer_id,$cardid)
					endif
					SetPlayerVar( $teamplayer_id, 3976, $yday)
				endif
				//??????
			
			endif
			
		endwhile
		
		//???????
		//	$playerid = GetPlayerID()
		//	$dropitemDbase1 = 90174
		//	$dropitemDbase2 = 90175
		//	$dropitemDbase3 = 90176
		//	$Cid = 0
		//	while $Cid < 6
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
		//		$Cid = $Cid + 1
		//	endwhile
		
//	//2012????
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//		if $Now_Year == 2012
//			if $Now_Month == 1
//				if $Now_Mday >= 21
//					if $Now_Mday <= 31
//						$playerid = GetPlayerID()
//						$dropitemDbase = 90154
//						$Cid = 0
//						while $Cid < 6
//							$teamplayer_id = GetTeamMemberID($playerid,$Cid)
//							$lenD = GetPlayerDistance($playerid,$teamplayer_id )
//							if $teamplayer_id > 0
//								if $lenD < 25
//									DropMonsterItems($teamplayer_id,$dropitemDbase)
//								endif
//							endif
//							$Cid = $Cid + 1
//						endwhile
//					endif
//				endif
//			endif
//		endif
//  //2012??????

//2012-???
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		if $Now_Year == 2012
			$randombuff = RandomNumber(0,99)
			if $randombuff < 30
				$monthadd = $Now_Month * 100
				$dayadd = $monthadd + $Now_Mday
//				if $dayadd >= 417
					if $dayadd <= 529
						$ectype_id = GetEctypeID( -1 , 187 )
						$lv = GetEctypeVar( $ectype_id , 117 )
						$type = GetEctypeVar( $ectype_id , 11 )
						$monster_fieldlevel = GetEctypeVar(-1 ,90)
						$addposx = 14200 / 256
						$addposy = 12800 / 256
						if $monster_fieldlevel > 0
							AddLevelFieldMonster(32287,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
						else
							AddLevelMonster(32287,215,$lv,1,$ectype_id,$addposx,$addposy,1)
						endif
					endif
//				endif
			endif
		endif
//2012-?????

//2012-??
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday
			if $dayadd >= 925
				if $dayadd <= 928
					$ectype_id = GetEctypeID( -1 , 187 )
					$lv = GetEctypeVar( $ectype_id , 117 )
					$type = GetEctypeVar( $ectype_id , 11 )
					$monster_fieldlevel = GetEctypeVar(-1 ,90)
					$addposx = 14200 / 256
					$addposy = 12800 / 256
					if $monster_fieldlevel > 0
						AddLevelFieldMonster(32291,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
					else
						AddLevelMonster(32291,215,$lv,1,$ectype_id,$addposx,$addposy,1)
					endif
				endif
			endif
			if $dayadd >= 929
				if $dayadd <= 930
					$ectype_id = GetEctypeID( -1 , 187 )
					$lv = GetEctypeVar( $ectype_id , 117 )
					$type = GetEctypeVar( $ectype_id , 11 )
					$monster_fieldlevel = GetEctypeVar(-1 ,90)
					$addposx = 14200 / 256
					$addposy = 12800 / 256
					if $monster_fieldlevel > 0
						AddLevelFieldMonster(32292,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
					else
						AddLevelMonster(32292,215,$lv,1,$ectype_id,$addposx,$addposy,1)
					endif
				endif
			endif
		endif
//2012-????
//2013??????????
	 $Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		if $Now_Year == 2013
				$monthadd = $Now_Month * 100
				$dayadd = $monthadd + $Now_Mday
				if $dayadd >= 219
					if $dayadd <= 225
		         $playerid = GetPlayerID()
			        $dropitemDbase = 90261
			        $Cid = 0
			        while $Cid < 6
			         $teamplayer_id = GetTeamMemberID( $playerid, $Cid )
			         $lenD = GetPlayerDistance( $playerid, $teamplayer_id )
			        	 if $teamplayer_id > 0
			        		  if $lenD < 25
			        				DropMonsterItems( $teamplayer_id, $dropitemDbase )		
			        	   endif
			        	 endif
			        	$Cid = $Cid + 1
			        endwhile
			    endif
			  endif
		endif
//2013??????????
//2012-???
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		if $Now_Year == 2012
			$randombuff = RandomNumber(0,99)
			if $randombuff < 100
				$monthadd = $Now_Month * 100
				$dayadd = $monthadd + $Now_Mday
				if $dayadd >= 1224
					if $dayadd <= 1227
						$ectype_id = GetEctypeID( -1 , 187 )
						$lv = GetEctypeVar( $ectype_id , 117 )
						$monster_fieldlevel = GetEctypeVar(-1 ,90)
						$addposx = 14200 / 256
						$addposy = 12800 / 256
						if $monster_fieldlevel > 0
							AddLevelFieldMonster(32361,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
						else
							AddLevelMonster(32361,215,$lv,1,$ectype_id,$addposx,$addposy,1)
						endif
					endif
				endif
			endif
		endif
//2012-?????

		$ectype_ID = GetEctypeID( -1, 187 )
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		AddMonster( 51262, 1, $ectype_ID, $playerX, $playerY , 0 )
		BC("screen", "map", $ectype_ID, "Your might has been validated by the ancient dragons. From here on, they will consider you a great ally.")
		
		$masteritem2 = 90108
		$masteritem3 = 90109
		$masteritem4 = 90110
		$masteritem5 = 90111
		$masteritem6 = 90112
		
		$headerID = GetTeamHeaderID(-1 )
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$id = GetPlayerID()
		
//---?????????,?????,????75??????,????---------------	
		$a = 0
		if $Men1 != -1
			if $headerID != $Men1
				$lv = GetPlayerInfo( $Men1 , "level")
				$mapid0 = GetPlayerInfo( $Men1 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men1)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
		
		if $Men2 != -1
			if $headerID != $Men2
				$lv = GetPlayerInfo( $Men2 , "level")
				$mapid0 = GetPlayerInfo( $Men2 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men2)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
		
		if $Men3 != -1
			if $headerID != $Men3
				$lv = GetPlayerInfo( $Men3 , "level")
				$mapid0 = GetPlayerInfo( $Men3 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men3)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
		
		if $Men4 != -1
			if $headerID != $Men4
				$lv = GetPlayerInfo( $Men4 , "level")
				$mapid0 = GetPlayerInfo( $Men4 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men4)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
		
		if $Men5 != -1
			if $headerID != $Men5
				$lv = GetPlayerInfo( $Men5 , "level")
				$mapid0 = GetPlayerInfo( $Men5 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men5)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
		
		if $Men6 != -1
			if $headerID != $Men6
				$lv = GetPlayerInfo( $Men6 , "level")
				$mapid0 = GetPlayerInfo( $Men6 , "mapid" )
				if $mapid0 == $mapid
					//if $lv <= 75
						$Rc = CheckRelation($headerID ,$Men6)
						if $Rc == 2
							$a = $a + 1
						endif
					//endif
				endif
			endif
		endif
//----???????????,?????-------
		$mapid0 = GetPlayerInfo( $headerID , "mapid" )
		if $headerID > 0
			if $mapid0 == $mapid
				if $a == 1
					DropMonsterItems( $headerID , $masteritem2 )
				endif	
				if $a == 2
					DropMonsterItems( $headerID , $masteritem3 )
				endif	
				if $a == 3
					DropMonsterItems( $headerID , $masteritem4 )
				endif	
				if $a == 4
					DropMonsterItems( $headerID , $masteritem5 )
				endif	
				if $a == 5
					DropMonsterItems( $headerID , $masteritem6 )
				endif
			endif
		endif
	//2012?11???????
	//?????12?11??12?31?
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		
		$monthadd = $Now_Month * 100
		$Time = $monthadd + $Now_Mday
		
		if $Now_Year == 2012
			if $Time >= 1211
				if $Time <= 1231
					$playerid = GetPlayerID()
					$dropitemD1 = 90223
					$dropitemD2 = 90224
					$Cid = 0
					while $Cid < 6
						$teamplayer_id = GetTeamMemberID($playerid,$Cid)
						$lenD = GetPlayerDistance($playerid,$teamplayer_id )
						if $teamplayer_id > 0
							if $lenD < 25
								$Luck1 = RandomNumber(1,100)
								if $Luck1 <= 15 
									DropMonsterItems($teamplayer_id,$dropitemD1)
								endif
								$Luck2 = RandomNumber(1,100)
								if $Luck2 == 1 
									DropMonsterItems($teamplayer_id,$dropitemD2)
								endif								
							endif
						endif
						$Cid = $Cid + 1
					endwhile
				endif
			endif
		endif
  //2012?11???????		
		
	}