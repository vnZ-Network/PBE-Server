	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:Monster-51248.s
	//		TaskID: ?????
	//
	//****************************************
	
	function OnDead(){
		
		
		//??boss??????????
		$mapid = GetPlayerInfo( -1 , mapid )
		$playerid = GetPlayerID()
		
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			
			if $teamplayer_id != -1

  //2011????????????
         $now_day = GetSystemTime( "yday" )
         SetPlayerVar( $teamplayer_id, 4045, $now_day )
  //????

			
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
				$bosssilvercard = GetEctypeVar($ectype_id,51)
				if $bosssilvercard >= 20
					$ishave = HaveTarot($teamplayer_id,12522)
					if $ishave == 0
						$oldtime = GetPlayerVar( $teamplayer_id, 4094 )
						$yday = GetSystemTime( "yday" )
						if $oldtime <= 0
							SetPlayerVar( $teamplayer_id, 3543 ,1)
						else
							$chazhi = $yday - $oldtime
							if $chazhi < 1
								SetPlayerVar( $teamplayer_id, 3543 ,1)
							else
								$plus = GetPlayerVar( $teamplayer_id, 3543 )
								$plus = $plus + 2
								$plus = $plus - $chazhi
								if $plus > 0
									SetPlayerVar( $teamplayer_id, 3543 ,$plus)
								else
									SetPlayerVar( $teamplayer_id, 3543 ,1)
								endif
							endif
						endif
						$plus = GetPlayerVar( $teamplayer_id, 3543 )
						if $plus > 30
							AddTarotCard($teamplayer_id,12522)
						endif
						SetPlayerVar( $teamplayer_id, 4094, $yday)
					endif
				endif
				//??????
				
			endif
			
		endwhile
		
		$itemid = 90023
		$masteritem1 = 90023
		$masteritem2 = 90108
		$masteritem3 = 90109
		$masteritem4 = 90110
		$masteritem5 = 90111
		$masteritem6 = 90112
		
		AddNPC(880 , -1)
		$ectype_id = GetEctypeID( -1 , 233 )
		BC( "screen" , "map" , $ectype_id , "You defeated the Trial Adjudicator! Now you can receive some mysterious treasure from the Goddess of Fate!" )
		
		//2011???????
		$Now_Year =  GetSystemTime( "year" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_day =  GetSystemTime( "mday" )
		if $Now_Year == 2011
			if $Now_Month == 10
				if $Now_day >= 1
					if $Now_day <= 7
						$itemid = 90024
						$masteritem1 = 90024
						$masteritem2 = 90108
						$masteritem3 = 90109
						$masteritem4 = 90110
						$masteritem5 = 90111
						$masteritem6 = 90112
					endif
				endif
			endif
		endif
		
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
//----???????????------			
//----?????????????????-------
	
		if $Men1 != -1
			if $Men1 != $headerID
				$mapid0 = GetPlayerInfo( $Men1 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men1 )
					if $lenD < 99
						DropMonsterItems( $Men1 , $itemid )
					endif
				endif
			endif
		endif
		
		if $Men2 != -1
			if $Men2 != $headerID
				$mapid0 = GetPlayerInfo( $Men2 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men2 )
					if $lenD < 99
						DropMonsterItems( $Men2 , $itemid )
					endif
				endif
			endif
		endif
		
		if $Men3 != -1
			if $Men3 != $headerID
				$mapid0 = GetPlayerInfo( $Men3 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men3 )
					if $lenD < 99
						DropMonsterItems( $Men3 , $itemid )
					endif
				endif
			endif
		endif
		
		if $Men4 != -1
			if $Men4 != $headerID
				$mapid0 = GetPlayerInfo( $Men4 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men4 )
					if $lenD < 99
						DropMonsterItems( $Men4 , $itemid )
					endif
				endif
			endif
		endif
		
		if $Men5 != -1
			if $Men5 != $headerID
				$mapid0 = GetPlayerInfo( $Men5 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men5 )
					if $lenD < 99
						DropMonsterItems( $Men5 , $itemid )
					endif
				endif
			endif
		endif
		
		if $Men6 != -1
			if $Men6 != $headerID
				$mapid0 = GetPlayerInfo( $Men6 , "mapid" )
				if $mapid0 == $mapid
					$lenD = GetPlayerDistance($playerid,$Men6 )
					if $lenD < 99
						DropMonsterItems( $Men6 , $itemid )
					endif
				endif
			endif
		endif
		
			
		//----???????????,?????-------
		$mapid0 = GetPlayerInfo( $headerID , "mapid" )
		if $headerID > 0
			$lenD = GetPlayerDistance($playerid,$headerID )
			if $lenD < 99
				if $a == 0
					DropMonsterItems( $headerID , $masteritem1 )
				endif
				if $a == 1
					DropMonsterItems( $headerID , $masteritem1 )
					DropMonsterItems( $headerID , $masteritem2 )
				endif
				if $a == 2
					DropMonsterItems( $headerID , $masteritem1 )
					DropMonsterItems( $headerID , $masteritem3 )
				endif
				if $a == 3
					DropMonsterItems( $headerID , $masteritem1 )
					DropMonsterItems( $headerID , $masteritem4 )
				endif
				if $a == 4
					DropMonsterItems( $headerID , $masteritem1 )
					DropMonsterItems( $headerID , $masteritem5 )
				endif
				if $a == 5
					DropMonsterItems( $headerID , $masteritem1 )
					DropMonsterItems( $headerID , $masteritem6 )
				endif
			endif
		endif		
		
////2012-???
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//		if $Now_Year == 2012
//			$randombuff = RandomNumber(0,99)
//			if $randombuff < 30
//				$monthadd = $Now_Month * 100
//				$dayadd = $monthadd + $Now_Mday
////				if $dayadd >= 417
//					if $dayadd <= 529
//						$ectype_id = GetEctypeID( -1 , 233 )
//						$lv = GetEctypeVar( $ectype_id , 110 )
//						$type = GetEctypeVar( $ectype_id , 11 )
//						$monster_fieldlevel = GetEctypeVar(-1 ,90)
//						$addposx = 15500 / 256
//						$addposy = 17400 / 256
//						if $monster_fieldlevel > 0
//							AddLevelFieldMonster(32291,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
//						else
//							AddLevelMonster(32291,215,$lv,1,$ectype_id,$addposx,$addposy,1)
//						endif
//					endif
////				endif
//			endif
//		endif
////2012-?????
//
////2012-??
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
//			if $dayadd >= 925
//				if $dayadd <= 928
//					$ectype_id = GetEctypeID( -1 , 233 )
//					$lv = GetEctypeVar( $ectype_id , 110 )
//					$type = GetEctypeVar( $ectype_id , 11 )
//					$monster_fieldlevel = GetEctypeVar(-1 ,90)
//					$addposx = 15500 / 256
//					$addposy = 17400 / 256
//					if $monster_fieldlevel > 0
//						AddLevelFieldMonster(32291,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
//					else
//						AddLevelMonster(32291,215,$lv,1,$ectype_id,$addposx,$addposy,1)
//					endif
//				endif
//			endif
//			if $dayadd >= 929
//				if $dayadd <= 930
//					$ectype_id = GetEctypeID( -1 , 233 )
//					$lv = GetEctypeVar( $ectype_id , 110 )
//					$type = GetEctypeVar( $ectype_id , 11 )
//					$monster_fieldlevel = GetEctypeVar(-1 ,90)
//					$addposx = 15500 / 256
//					$addposy = 17400 / 256
//					if $monster_fieldlevel > 0
//						AddLevelFieldMonster(32292,215,$lv,215,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
//					else
//						AddLevelMonster(32292,215,$lv,1,$ectype_id,$addposx,$addposy,1)
//					endif
//				endif
//			endif
//		endif
////2012-????

//2012-X'mas
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		if $Now_Year == 2012
				$monthadd = $Now_Month * 100
				$dayadd = $monthadd + $Now_Mday
				if $dayadd >= 1224
					if $dayadd <= 1227
						$ectype_id = GetEctypeID( -1 , 233 )
						$lv = GetEctypeVar( $ectype_id , 110 )
						$type = GetEctypeVar( $ectype_id , 11 )
						$monster_fieldlevel = GetEctypeVar(-1 ,90)
						$addposx = 15500 / 256
						$addposy = 17400 / 256
						if $type == 0
							$statusid = 215
						else
							$statusid = 53
						endif
						if $monster_fieldlevel > 0
							AddLevelFieldMonster(32361,$statusid,$lv,$statusid,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
						else
							AddLevelMonster(32361,$statusid,$lv,1,$ectype_id,$addposx,$addposy,1)
						endif
					endif
				endif
		endif
//2012-X'mas??

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
//???????
//		  $playerid = GetPlayerID()
//			$dropitemDbase1 = 90174
//			$dropitemDbase2 = 90175
//			$dropitemDbase3 = 90176
//			$Cid = 0
//			while $Cid < 6
//			 $teamplayer_id = GetTeamMemberID( $playerid, $Cid )
//			 $level = GetPlayerInfo( $teamplayer_id, "level" )
//			 $lenD = GetPlayerDistance( $playerid, $teamplayer_id )
//				 if $teamplayer_id > 0
//					  if $lenD < 25
//					     if $level >= 70
//					        if $level <= 99
//							    DropMonsterItems( $teamplayer_id, $dropitemDbase1 )
//							    endif
//						   endif
//						   if $level >= 100
//					        if $level <= 119
//							    DropMonsterItems( $teamplayer_id, $dropitemDbase2 )
//							    endif
//						   endif
//						   if $level >= 120
//							    DropMonsterItems( $teamplayer_id, $dropitemDbase3 )
//							 endif
//					   endif
//				   endif
//				$Cid = $Cid + 1
//			endwhile
		
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
  
//	//2011?????
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//		if $Now_Year == 2011
//			if $Now_Month == 12
//				if $Now_Mday >= 20
//					if $Now_Mday <= 25
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
//  //2011???????
  
//		//2010????~~~~~~~~~~~~~~~~~
//		//?????? ??11  0 ??  1 ??
//		
//		$ectype_id = GetEctypeID( -1 , 233 )
//		$type = GetEctypeVar( $ectype_id , 11 )
//		$monster_level = GetEctypeVar( -1 , 110 )
//		
//		//???????????
//		if $type == 1
//			return
//		endif
//		
//		//???? ?????????? ??,?????? ? 2?3??4??5?	2?17?
//
//		//??
//		$Now_Mday =  GetSystemTime( "mday" )	
//		//??
//		$Now_Month =  GetSystemTime( "month" )
//		
//		if $Now_Month == 1
//			if $Now_Mday == 15
//				//?????????? 15?,???????????
//					StartEctypeTimer( $ectype_id , 6 )
//					AddMonsterByFloat( 32246, 1, $ectype_id, 163, 152, 1 )
//					AddMonsterByFloat( 32247, 1, $ectype_id, 157, 176, 1 )
//					BC( "dialogbox" , "map" , $ectype_id , "GUID:07963000001" )
//			endif
//		endif
//		
//		
//		
//		if $Now_Month == 2
//			if $Now_Mday < 3
//				return
//			else
//				if $Now_Mday < 6
//					//?????????? 15?,???????????
//					StartEctypeTimer( $ectype_id , 6 )
//					AddMonsterByFloat( 32246, 1, $ectype_id, 163, 152, 1 )
//					AddMonsterByFloat( 32247, 1, $ectype_id, 157, 176, 1 )
//					BC( "dialogbox" , "map" , $ectype_id , "GUID:07963000002" )
//				endif
//				
//				//???????
//				if $Now_Mday == 17
//					//?????????? 15?,???????????
//					StartEctypeTimer( $ectype_id , 6 )
//					AddMonsterByFloat( 32246, 1, $ectype_id, 163, 152, 1 )
//					AddMonsterByFloat( 32247, 1, $ectype_id, 157, 176, 1 )
//					BC( "dialogbox" , "map" , $ectype_id , "GUID:07963000003" )
//				endif
//			endif
//		endif
//			
//	
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
					$dropitemD1 = 90221
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
		
	