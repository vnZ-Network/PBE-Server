	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/15
	//		Author:???
	//		TaskName:
	//		TaskID:??????????
	//
	//****************************************
	//3743 ???
	//3245 ????
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		ReqAward(-1,24,1)
		
//		//???????
//		$nullitem = GetPlayerInfo( -1, "nullitem" , 0 )
//		if $nullitem < 1
//			BC( "screen", "player", -1, "GUID:06234000000" )
//			return
//		endif
//
//		$lv = GetPlayerInfo( -1 , "level" )
//		$result = SubPlayerInfo( -1 , "item" , 44235 , 1 )
//		if $result != 0
//			return
//		endif
//		$randombuff = RandomNumber(1,10000)
//		$giftbuffpre = 0
//		//59838	?????	20
//		$giftbuff = $giftbuffpre + 20
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",59838,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//60489	????????	30
//		$giftbuff = $giftbuffpre + 30
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",60489,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//6463	???????	100
//		$giftbuff = $giftbuffpre + 100
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",6463,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//6464	???????	100
//		$giftbuff = $giftbuffpre + 100
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",6464,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//6455	?????	150
//		$giftbuff = $giftbuffpre + 150
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",6455,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//6457	?????	150
//		$giftbuff = $giftbuffpre + 150
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",6457,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//60029	???	200
//		$giftbuff = $giftbuffpre + 200
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",60029,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//60004	????	250
//		$giftbuff = $giftbuffpre + 250
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",60004,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//44129	?????????	300
//		$giftbuff = $giftbuffpre + 300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",44129,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//44130	?????????	300
//		$giftbuff = $giftbuffpre + 300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",44130,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//44131	???????????	300
//		$giftbuff = $giftbuffpre + 300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",44131,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//44132	?????????	300
//		$giftbuff = $giftbuffpre + 300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",44132,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//44133	?????????	300
//		$giftbuff = $giftbuffpre + 300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",44133,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//63335	?????	1000
//		$giftbuff = $giftbuffpre + 1000
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",63335,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//6057	??	1200
//		$giftbuff = $giftbuffpre + 1200
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",6057,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//63328	?????	1300
//		$giftbuff = $giftbuffpre + 1300
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",63328,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//		//60051	????	4000
//		$giftbuff = $giftbuffpre + 4000
//		if $randombuff > $giftbuffpre
//			if $randombuff <= $giftbuff
//				AddPlayerInfo($playerid,"item",60051,1)
//			endif
//		endif
//		$giftbuffpre = $giftbuff
//
////		BC("screen","player",-1,"randombuff = ", $randombuff)
////		BC("screen","player",-1,"giftbuff = ", $giftbuff)



	}