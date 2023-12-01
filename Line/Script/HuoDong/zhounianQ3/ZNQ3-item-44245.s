
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-4-11
	//		Author:???
	//		TaskName:??3?????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$del_count = SubPlayerInfo( -1, "item", 44245, 1 )
		
		if $del_count == 0
			$randombuff = RandomNumber(1,100)
			$giftbuffpre = 0
			
			//44246	???	40
			$giftbuff = $giftbuffpre + 40
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44246,1)
				endif
			endif
			$giftbuffpre = $giftbuff

			//44093	???????	20
			$giftbuff = $giftbuffpre + 20
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44093,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//59218	?????(120?)	20
			$giftbuff = $giftbuffpre + 20
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59218,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//9	????	5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",9,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//44248	??????	10
			$giftbuff = $giftbuffpre + 10
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44248,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//44247	??????	5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44247,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
		endif
	}