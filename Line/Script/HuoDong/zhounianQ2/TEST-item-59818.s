	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??
	//		TaskID:
	//****************************************
	function OnUseItem(){


		$a = GetPlayerInfo(-1,"battleranklist")
		BC("screen","player",-1,"Ranking = ",$a)
//		$mapid = GetPlayerInfo(-1,"mapid")
//		$playerid = GetPlayerID()
//		$posx = GetPlayerInfo(-1,"mapposx")
//		$posy = GetPlayerInfo(-1,"mapposy")
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		$hour = GetSystemTime("hour")
//		$minute = GetSystemTime("minute")
//		$week = GetSystemTime("week")
//		$yday = GetSystemTime("yday")
//		$yweek = GetNowWeek()
//		$second = GetSystemTime("second")
//		$level = GetPlayerInfo(-1,"level")
//		$FLDlevel = GetFieldLevel($playerid)
//		$ExpPT = GetPlayerInfo($playerid,"exp")
//		$fExpPT = GetFieldLevel($playerid)
//		$guildid = GetPlayerInfo($playerid,"guildid")
//		$ectype_id = $mapid
//
////		BC("chat","player",-1," - - - - - - - ")
//		BC("chat","player",-1," - <time> - "," | ",$hour," : ",$minute," : ",$second," |")
//		BC("screen","player",-1,$year,"-",$month,"-",$mday," | ",$hour," : ",$minute," : ",$second," | week = ",$week," | yday = ",$yday," | yweek = ",$yweek)
//		BC("screen","player",-1,"mapid = ",$mapid," | playerid = ",$playerid," | guildid = ",$guildid)
//		//---------------------------------------------------------??
//			
//			
//			
//			
//			
//			
//			
//			
////			$stage = GetPlayerVar(-1,4000)
////			$stage += 1
////			SetPlayerVar(-1,4000,$stage)
////			call GetPos()
////			$succ = FlyToEctype($playerid,568,$posx,$posy)
////			BC("chat","player",-1,"  playerid=",$playerid,"  mapid=",$mapid,"  posx=",$posx,"  posy=",$posy)
////			BC("chat","player",-1,"FlyToMap=",$stage,"  succ=",$succ)
//			
//
////						BC("screen", "servergroup", -1 , "GUID:05316000001")
////						BC("scrollbar", "servergroup", -1 , "GUID:05316000002")
//			
////		$a[1] = 999
////		$v1 = getarray($a,1)
////		$v2 = $a[1]
////		BC("chat","player",-1,"arrayvar=",$v1)
////		BC("chat","player",-1,"arrayvar=",$v2)
//		
////		$mapid = GetPlayerInfo(-1,"mapid")
////		$playerid = GetPlayerID()
////		$posx = GetPlayerInfo(-1,"mapposx")
////		$posy = GetPlayerInfo(-1,"mapposy")
////		$year = GetSystemTime("year")
////		$month = GetSystemTime("month")
////		$mday = GetSystemTime("mday")
////		$hour = GetSystemTime("hour")
////		$minute = GetSystemTime("minute")
////		$monthadd = $month * 100
////		$dayadd = $monthadd + $mday
////		$hour = $hour * 100
////		$time = $hour + $minute
//		
////		if $year > 2012
////			if $dayadd > 115
////				return
////			endif
////		endif
////		if $year == 2012
////			if $dayadd < 1228
////				return
////			endif
////		endif
////		
//		
//		$mapid = GetPlayerInfo(-1,"mapid")
//		$playerid = GetPlayerID()
//		$posx = GetPlayerInfo(-1,"mapposx")
//		$posy = GetPlayerInfo(-1,"mapposy")
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		$hour = GetSystemTime("hour")
//		$minute = GetSystemTime("minute")
//		$monthadd = $month * 100
//		$dayadd = $monthadd + $mday
//		$hour = $hour * 100
//		$time = $hour + $minute
//		
//		if $year > 2012
//			if $dayadd > 115
//				return
//			endif
//		endif
//		if $year == 2012
//			if $dayadd < 1228
//				return
//			endif
//		endif
//		
//		$race_result_index = 291
//		$playerindex = 286
//		$win = 0
//		$match = 0
//		while $race_result_index <= 298
//			$sysg = GetGlobalVar($race_result_index)
//			$playerg = GetPlayerVar(-1,$playerindex)
//			$playindex = $race_result_index - 290
//			if $sysg > 0
//				$match += 1
//				if $playerg == 1
//					$win += 1
//					BC("chat","player",-1,"GUID:05316000003",$playindex,"GUID:05316000004")
//					$result = 1
//					call textresult()
//				else
//					BC("chat","player",-1,"GUID:05316000005",$playindex,"GUID:05316000006")
//					$result = 2
//					call textresult()
//				endif
//			else
//					BC("chat","player",-1,"GUID:05316000007",$playindex,"GUID:05316000008")
//					$result = 0
//					call textresult()
//			endif
//			$race_result_index += 1
//			$playerindex += 1
//		endwhile
//		
//		$playercoin = GetPlayerVar(-1,4049)
//		$playergift = GetPlayerVar(-1,4050)
//		$lastjoin = GetPlayerVar(-1,3436)
//		$lastrace = GetGlobalVar(299)
//		$chipQ = GetPlayerVar(-1,4076)
//		$chipB = GetPlayerVar(-1,4077)
//		$chipZ = GetPlayerVar(-1,4079)
//		$chipX = GetPlayerVar(-1,4080)
//		
//		BC("chat","player",-1,"match=",$match)
//		BC("chat","player",-1,"win=",$win)
//		BC("chat","player",-1,"playercoin=",$playercoin)
//		BC("chat","player",-1,"playergift=",$playergift)
//		BC("chat","player",-1,"lastjoin=",$lastjoin)
//		BC("chat","player",-1,"lastrace=",$lastrace)
//
//		$win100 = $win * 100
//		$winra = $win100 / $match
//		
//
//		BC("dialogbox","player",-1,"GUID:05316000009",#res1,#res2,#res3,#res4,#res5,#res6,#res7,#res8)
//
////			$indexW = 291
////			while $indexW <= 299
////				SetGlobalVar($indexW,0)
////				BC("chat","player",-1,"indexW=",$indexW)
////				$indexW += 1
////			endwhile
////			$indexW = 286
////			while $indexW <= 293
////				SetPlayerVar(-1,$indexW,0)
////				$indexW += 1
////			endwhile
////			SetPlayerVar(-1,4049,0)
////			SetPlayerVar(-1,4050,0)
////			SetPlayerVar(-1,3436,0)
////			SetPlayerVar(-1,4076,0)
////			SetPlayerVar(-1,4077,0)
////			SetPlayerVar(-1,4079,0)
////			SetPlayerVar(-1,4080,0)
////			BC("chat","player",-1,"clear success!")
//
//
//
//		//---------------------------------------------------------??
////		$key = 3393
////		$getvar = GetPlayerVar(-1,$key)
////		if $getvar > 0
////			BC("chat","player",-1,"PlayerVar(",$key,")= ",$getvar)
////		endif
//		//---------------------------------------------------------
//
//
//		
////--------------------------------------????
////		$key = 10
////		while $key <= 25
////			$getvar = GetGuildVar($guildid,$key)
////			if $getvar > 0
////				BC("chat","player",-1,"Guildvar(",$key,")= ",$getvar)
////			endif
////			$key += 1
////		endwhile
////		$key = 300
////		while $key <= 340
////			$getvar = GetServerVar($key)
////			if $getvar > 0
////				BC("chat","player",-1,"Servervar(",$key,")= ",$getvar)
////			endif
////			$key += 1
////		endwhile
////--------------------------------------
//		//-----------------------------------------------------------??
//		$getitem = GetPlayerInfo($playerid,"item",39113)
//		if $getitem < 1
//			AddPlayerInfo($playerid,"item",39113,1)
//		endif
////		$getitem = GetPlayerInfo($playerid,"item",39104)
////		if $getitem < 1
////			AddPlayerInfo($playerid,"item",39104,1)
////		endif
////		$getitem = GetPlayerInfo($playerid,"item",39108)
////		if $getitem < 1
////			AddPlayerInfo($playerid,"item",39108,1)
////		endif
////		$getitem = GetPlayerInfo($playerid,"item",39109)
////		if $getitem < 1
////			AddPlayerInfo($playerid,"item",39109,1)
////		endif
//		$getitem = GetPlayerInfo($playerid,"item",39111)
//		if $getitem < 1
//			AddPlayerInfo($playerid,"item",39111,1)
//		endif
//		//-----------------------------------------------------------??
//		$max_hp = GetPlayerInfo( -1, "maxhp")
//		$max_mp = GetPlayerInfo( -1, "maxmp")
//		$hp = GetPlayerInfo( -1, "hp")
//		$mp = GetPlayerInfo( -1, "mp")
//		$add_hp = $max_hp - $hp
//		$add_mp = $max_mp - $mp
// 		AddPlayerInfo( -1, "hp", $add_hp)
//		AddPlayerInfo( -1, "mp", $add_mp)
//		//-----------------------------------------------------------??
//		if $mapid > 10000
////			SetEctypeVar($mapid,99,1)
//			$key = 0
//			while $key <= 99
//				$getvar = GetEctypeVar($mapid,$key)
//				if $getvar > 0
//					BC("chat","player",-1,"EctypeVar(",$key,")=",$getvar)
//				endif
//				$key = $key + 1
//			endwhile
//			$key = 110
//			while $key <= 119
//				$getvar = GetEctypeVar($mapid,$key)
//				if $getvar > 0
//					BC("chat","player",-1,"EctypeVar(",$key,")=",$getvar)
//				endif
//				$key = $key + 1
//			endwhile
////			$key = 100
////			while $key <= 109
////				#gettext = GetEctypeVar($mapid,$key)
////				if #gettext != " "
////					BC("chat","player",-1,"EctypeVar(",$key,")=",#gettext)
////				endif
////				$key = $key + 1
////			endwhile
//		//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-???
//		
////--------------------------------------????
////			SetGlobalVar(137,9)
////--------------------------------------
////			DeleteMonster($mapid,52489)
////			DeleteMonster($mapid,52511)
////			DeleteMonster($mapid,52512)
////			DeleteMonster($mapid,52513)
////			AddMonsterByFloat(52489,1,$mapid,75,264,0)
////			SetEctypeVar($mapid,50,0)
////			SetEctypeVar($mapid,51,0)
//			
////			ReleaseEctype($ectype_id)
//			
//			
//		else
//		//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-???
////			AddStatus( -1, 10414 , 10 )
////			AddStatus( -1, 10418 , 15 )
////			AddStatus( -1, 11080 , 2 )
////			AddStatus( -1, 4085 , 1 )
////			AddStatus( -1, 11651 , 1 )
////			AddStatus( -1, 11652 , 1 )
////			AddStatus( -1, 11653 , 1 )
////			AddStatus( -1, 11654 , 1 )
////			RemoveStatusByID(-1,6451)
////			RemoveStatusByID(-1,6458)
////			RemoveStatusByID(-1,6459)
////			RemoveStatusByID(-1,6460)
////			RemoveStatusByID(-1,6461)
////			$itr = GetEctypeID(-1,1090)
////			ReleaseEctype($itr)
////			$x = 98
////			$y = 59
////			$fly = FlyToEctype(-1 ,1090 , $x ,$y )
//			
////--------------------------------------????
////			SetGuildVar($guildid,22,7)
////			$key = 301
////			while $key <= 340
////		  	SetServerVar($key,$var)
////				$key = $key + 1
////			endwhile
////			SetGlobalVar(137,0)
////			SetServerVar(300,0)
////			$ectype_id = GetEctypeID(-1,545)
////			$suc = ReleaseEctype($ectype_id)
////			BC("chat","player",-1,"suc=",$suc)
////--------------------------------------??
////			$succ = FlyToEctype($playerid,233,64,64)
////			$succ = FlyToEctype($playerid,566,29,105)
//			
////--------------------------------------??
////			$team_headerID = $playerid
////			$temp_level = 100
////			$monster_fieldlevel = 20
////			$succ = FlyToEctype( $team_headerID, 187, 53, 67 )
////			if $succ > 0
////				BC( "screen", "player", $team_headerID, "GUID:05316000010" )
////				$ectype_ID = GetEctypeID( $team_headerID, 187 )
////				StartEctypeTimer( $team_headerID , 187, 0 )
////				SetEctypeVar( $ectype_ID, 117, $temp_level )
////				SetEctypeVar( $ectype_ID, 90, $monster_fieldlevel )
////				SetEctypeVar( $ectype_ID, 0, 1 )
////			else
////				BC( "dialogbox", "player", -1, "GUID:05316000011" )
////				return
////			endif
//
//
////			BC("chat","player",-1,"succ=",$succ)
//		
//		
//		endif
//
//
//
//	}
//	
//	
//	function GetPos(){
//
//
//if $stage == 1	
//$posx = 18	
//$posy = 109	
//endif
//if $stage == 2	
//$posx = 14	
//$posy = 91	
//endif
//if $stage == 3	
//$posx = 8	
//$posy = 64	
//endif
//if $stage == 4	
//$posx = 14	
//$posy = 36	
//endif
//if $stage == 5	
//$posx = 20	
//$posy = 19	
//endif
//if $stage == 6	
//$posx = 36	
//$posy = 9	
//endif
//if $stage == 7	
//$posx = 61	
//$posy = 7	
//endif
//if $stage == 8	
//$posx = 91	
//$posy = 10	
//endif
//if $stage == 9	
//$posx = 109	
//$posy = 19	
//endif
//if $stage == 10	
//$posx = 114	
//$posy = 37	
//endif
//if $stage == 11	
//$posx = 118	
//$posy = 63	
//endif
//if $stage == 12	
//$posx = 113	
//$posy = 91	
//endif
//if $stage == 13	
//$posx = 107	
//$posy = 109	
//endif
//if $stage == 14	
//$posx = 92	
//$posy = 115	
//endif
//if $stage == 15	
//$posx = 63	
//$posy = 119	
//endif
//if $stage == 16	
//$posx = 35	
//$posy = 115	
//endif
//if $stage == 17	
//$posx = 26	
//$posy = 101	
//endif
//if $stage == 18	
//$posx = 18	
//$posy = 79	
//endif
//if $stage == 19	
//$posx = 24	
//$posy = 64	
//endif
//if $stage == 20	
//$posx = 18	
//$posy = 48	
//endif
//if $stage == 21	
//$posx = 25	
//$posy = 27	
//endif
//if $stage == 22	
//$posx = 50	
//$posy = 21	
//endif
//if $stage == 23	
//$posx = 64	
//$posy = 25	
//endif
//if $stage == 24	
//$posx = 78	
//$posy = 19	
//endif
//if $stage == 25	
//$posx = 102	
//$posy = 26	
//endif
//if $stage == 26	
//$posx = 109	
//$posy = 50	
//endif
//if $stage == 27	
//$posx = 102	
//$posy = 64	
//endif
//if $stage == 28	
//$posx = 109	
//$posy = 80	
//endif
//if $stage == 29	
//$posx = 102	
//$posy = 101	
//endif
//if $stage == 30	
//$posx = 79	
//$posy = 109	
//endif
//if $stage == 31	
//$posx = 63	
//$posy = 104	
//endif
//if $stage == 32	
//$posx = 46	
//$posy = 110	
//endif
//if $stage == 33	
//$posx = 39	
//$posy = 88	
//endif
//if $stage == 34	
//$posx = 40	
//$posy = 39	
//endif
//if $stage == 35	
//$posx = 87	
//$posy = 40	
//endif
//if $stage == 36	
//$posx = 88	
//$posy = 88	
//endif
//if $stage == 37	
//$posx = 63	
//$posy = 90	
//endif
//if $stage == 38	
//$posx = 49	
//$posy = 78	
//endif
//if $stage == 39	
//$posx = 46	
//$posy = 65	
//endif
//if $stage == 40	
//$posx = 49	
//$posy = 49	
//endif
//if $stage == 41	
//$posx = 63	
//$posy = 47	
//endif
//if $stage == 42	
//$posx = 79	
//$posy = 49	
//endif
//if $stage == 43	
//$posx = 81	
//$posy = 64	
//endif
//if $stage == 44	
//$posx = 77	
//$posy = 81	
//endif
//if $stage == 45	
//$posx = 63	
//$posy = 82	
//endif
//if $stage == 46	
//$posx = 64	
//$posy = 67	
//endif


		
	}

	
//		function Rank(){
////$guildid
////$point
//		$key_id = 301
//		$temp_rank = 321
//		while $key_id <= 320
//			$rank_gid = GetServerVar($key_id)
//			if $guildid == $rank_gid
//				$temp_rank = $key_id
//			endif
//			$key_id += 1
//		endwhile
//		if $temp_rank == 301
//			$getsetpoint = GetServerVar(321)
//			if $getsetpoint < $point
//				SetServerVar(321,$point)
//			endif
//		endif
//		$key_pt = $temp_rank + 19
//		while $key_pt >= 321
//			$rank_point = GetServerVar($key_pt)
//			$key_id = $key_pt - 20
//			$rank_gid = GetServerVar($key_id)
//			if $point > $rank_point
//				SetServerVar($key_pt,$point)
//				SetServerVar($key_id,$guildid)
//				if $key_pt < 340
//					$key_set_pt = $key_pt + 1
//					$key_set_id = $key_id + 1
//					SetServerVar($key_set_pt,$rank_point)
//					SetServerVar($key_set_id,$rank_gid)
//				endif
//			else
//				if $key_pt < 340
//					$key_set_pt = $key_pt + 1
//					$getsetpoint = GetServerVar($key_set_pt)
//					if $getsetpoint < $point
//						SetServerVar($key_set_pt,$point)
//					endif
//				endif
//				$key_pt = 321
//			endif
//			$key_pt -= 1
//		endwhile
//		
//		
//	}
//	
//	
//	//		AddNPC(848,-1)
////		$mapid = 570
////		$ectype_ID = GetEctypeID(-1,$mapid)
////		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
////		$Player_UID = GetPlayerVar( -1, 3845 )
////		$player_map = GetPlayerInfo(-1,"mapid")
////
////		$playerid = GetPlayerID()
////		
////		$team = IsPlayerInTeam(-1)
////		if $team == 0
////			BC("dialogbox","player",-1,"GUID:05316000012")
////			return
////		endif
////		
////		if $player_map >= 26021
////			if $player_map <= 26120
////				BC("screen","player",-1,"GUID:05316000013")
////				return
////			endif
////		endif
////		
////		//?????????
//////		$kind = GetPlayerVar(-1,3518)
//////		if $kind > 0
//////			if $ectype_ID > 0
//////				if $Player_UID == $ectype_UID
//////					$fly = FlyToEctype(-1,568,39,63)
//////					if $fly > 0 
//////						BC( "screen" , "player" , -1, "GUID:05316000014" )
//////						return
//////					else
//////						BC( "screen" , "player" , -1, "GUID:05316000015" )
//////					endif
//////				endif
//////			endif
//////		endif	
////		
////		//????		
////		$ectype_ID = GetEctypeID(-1, 568)
////		if $ectype_ID > 0
////			ReleaseEctype(-1,568)
////		endif
////		
//////    ????		
//////		$dengji = GetPlayerInfo(-1,"level")
//////		if $dengji < 75
//////			BC("dialogbox","player",-1,"GUID:05316000016")
//////			return
//////		endif
////
//////    ?????		
////		$today = GetSystemTime("yday")
////		$lastday = GetPlayerVar(-1,4082)
//////		if $lastday == $today
//////			BC("dialogbox","player",-1,"GUID:05316000017")
//////			return
//////		endif
////		
////	  //???????????
////		$Verify_item1 = GetPlayerInfo(-1,"item",2001)
////		if $Verify_item1 < 1
////			$Verify_item2 = GetPlayerInfo(-1,"item",2002)
////				if $Verify_item2 < 1
////					$Verify_item3 = GetPlayerInfo(-1,"item",2000)
////						if $Verify_item3 < 1
////							BC("screen","player",-1,"GUID:05316000018")
////							return
////						endif
////				endif
////		endif
////		
////		$revalue1 = SubPlayerInfo(-1,"item",2001,1)
////		if $revalue1 == 0
////			SetPlayerVar(-1,3518,1)
////		else
////			$revalue2 = SubPlayerInfo(-1,"item",2002,1)
////			if $revalue2 == 0
////				SetPlayerVar(-1,3518,2)
////			else
////				$revalue3 = SubPlayerInfo(-1,"item",2000,1)
////				if $revalue3 == 0
////					SetPlayerVar(-1,3518,3)
////				else
////					BC("screen","player",-1,"GUID:05316000019")
////					return
////				endif
////			endif
////		endif			
////		
////		$fly = FlyToEctype(-1,$mapid,39,63)
////		if $fly > 0 
////			$ectype_id = GetEctypeID(-1,$mapid)
//////			SetPlayerActLog(-1,25,0)
////			$today = GetSystemTime("yday")
////			SetPlayerVar(-1,4082,$today)
////			SetPlayerVar(-1,3845,$fly)
////			SetPlayerVar(-1,3519,0)
////			$playerid = GetPlayerID()
////			SetEctypeVar($ectype_id,110,$playerid)
////			BC( "screen" , "player" , -1, "GUID:05316000020" )
////		else
////			BC( "screen" , "player" , -1, "GUID:05316000021" )
////			return
////		endif
//
//
//
//	function textresult(){
//		
////			if $sysg > 0
////				$match += 1
////				if $playerg == 1
////					$win += 1
////					BC("chat","player",-1,"GUID:05316000022",$playindex,"GUID:05316000023")
////					$result = 1
////					call textresult()
////				else
////					BC("chat","player",-1,"GUID:05316000024",$playindex,"GUID:05316000025")
////					$result = 2
////					call textresult()
////				endif
////			else
////					BC("chat","player",-1,"GUID:05316000026",$playindex,"GUID:05316000027")
////					$result = 0
////					call textresult()
////			endif
//
//		if $playindex == 1
//			if $result == 0
//				#res1 = "GUID:05316000028"
//			endif
//			if $result == 1
//				#res1 = "GUID:05316000029"
//			endif
//			if $result == 2
//				#res1 = "GUID:05316000030"
//			endif
//		endif
//		if $playindex == 2
//			if $result == 0
//				#res2 = "GUID:05316000031"
//			endif
//			if $result == 1
//				#res2 = "GUID:05316000032"
//			endif
//			if $result == 2
//				#res2 = "GUID:05316000033"
//			endif
//		endif
//		if $playindex == 3
//			if $result == 0
//				#res3 = "GUID:05316000034"
//			endif
//			if $result == 1
//				#res3 = "GUID:05316000035"
//			endif
//			if $result == 2
//				#res3 = "GUID:05316000036"
//			endif
//		endif
//		if $playindex == 4
//			if $result == 0
//				#res4 = "GUID:05316000037"
//			endif
//			if $result == 1
//				#res4 = "GUID:05316000038"
//			endif
//			if $result == 2
//				#res4 = "GUID:05316000039"
//			endif
//		endif
//		if $playindex == 5
//			if $result == 0
//				#res5 = "GUID:05316000040"
//			endif
//			if $result == 1
//				#res5 = "GUID:05316000041"
//			endif
//			if $result == 2
//				#res5 = "GUID:05316000042"
//			endif
//		endif
//		if $playindex == 6
//			if $result == 0
//				#res6 = "GUID:05316000043"
//			endif
//			if $result == 1
//				#res6 = "GUID:05316000044"
//			endif
//			if $result == 2
//				#res6 = "GUID:05316000045"
//			endif
//		endif
//		if $playindex == 7
//			if $result == 0
//				#res7 = "GUID:05316000046"
//			endif
//			if $result == 1
//				#res7 = "GUID:05316000047"
//			endif
//			if $result == 2
//				#res7 = "GUID:05316000048"
//			endif
//		endif
//		if $playindex == 8
//			if $result == 0
//				#res8 = "GUID:05316000049"
//			endif
//			if $result == 1
//				#res8 = "GUID:05316000050"
//			endif
//			if $result == 2
//				#res8 = "GUID:05316000051"
//			endif
//		endif
//
//
//		
//	}