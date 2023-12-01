	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3/6
	//		Author:???
	//		TaskName:
	//		TaskID:44362	????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44362, 1 )
		//??????????
		
		if $del_count == 0
			//?????
			AddPlayerInfo( -1, "item", 59323, 1 )
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????
			
			//7	59303	3????	50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59303,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//8	63558	???????	50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63558,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//9	59304	???(??????100???)	200
			$giftbuff = $giftbuffpre + 200
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59304,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//10	2131	2??????	300
			$giftbuff = $giftbuffpre + 300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2131,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//11	63383	????	300
			$giftbuff = $giftbuffpre + 300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63383,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//1	62125   ????????
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",62125,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive the beautiful mount Obsidian Turtle!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive the beautiful mount Obsidian Turtle!")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//12	2449	???????	500
			$giftbuff = $giftbuffpre + 500
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2449,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//2	110	??? 2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",110,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a Stardust Coin!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a Stardust Coin!")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//13	60097	????????	500
			$giftbuff = $giftbuffpre + 500
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60097,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//3	44158	????????	3
			$giftbuff = $giftbuffpre + 3
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",44158,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV10 Odin's Soul Jade!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV10 Odin's Soul Jade!")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//14	60028	???*4	800
			$giftbuff = $giftbuffpre + 800
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60028,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//4	53325	????????	5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",53325,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a Starword - Silence!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a Starword - Silence!")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//15	63422	?????	1800
			$giftbuff = $giftbuffpre + 1800
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63422,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//5	64247	4????	10
			$giftbuff = $giftbuffpre + 10
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",64247,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV4 Gem Chest!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV4 Gem Chest!")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//16	5	??????	5469
			$giftbuff = $giftbuffpre + 5469
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//6	44149	10??????
			$giftbuff = $giftbuffpre + 10
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",44149,1)
					BC("screen","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV10 Chalice Coupon!")
					BC("chat","servergroup",-1,"The hero ",#name," used a Coldjade of the North, and was lucky enough to receive a LV10 Chalice Coupon!")
				endif
			endif
			$giftbuffpre = $giftbuff
//			BC("screen","player",-1,"giftbuff = ",$giftbuff)
			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
		endif
		
	}
