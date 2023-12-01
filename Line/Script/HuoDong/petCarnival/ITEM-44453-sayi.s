	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44453, 1 )
		//??????????
		
		if $del_count == 0
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????,?????

//63381	???????????	400
			$giftbuff = $giftbuffpre + 400
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63381,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//44495	?????(600?)	2150
			$giftbuff = $giftbuffpre + 2150
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44495,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//60031	????????	2300
			$giftbuff = $giftbuffpre + 2300
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60031,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//4909	????????	2000
			$giftbuff = $giftbuffpre + 2000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",4909,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//60508	?????????	1400
			$giftbuff = $giftbuffpre + 1400
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60508,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//60509	?????????	1000
			$giftbuff = $giftbuffpre + 1000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60509,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//2314	??	400
			$giftbuff = $giftbuffpre + 400
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2314,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//63789	??????	200
			$giftbuff = $giftbuffpre + 200
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63789,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//44459	???????	42
			$giftbuff = $giftbuffpre + 42
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44459,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and luckily got a Ligg's Mysterious Medicine!")
					BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and luckily got a Ligg's Mysterious Medicine!")
				endif
			endif
			$giftbuffpre = $giftbuff
//44457	?????	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44457,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ymir Holy Water!")
					BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ymir Holy Water!")
				endif
			endif
			$giftbuffpre = $giftbuff
//44463	??5?(??)	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44463,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal LV5 (Passive)!")
					BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal LV5 (Passive)!")
				endif
			endif
			$giftbuffpre = $giftbuff
//---------------------------------????
			$giftbuff = $giftbuffpre + 6
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$randombuff_PLUS = RandomNumber(1,60)
					$giftbuffpre_PLUS = 0
//44456	?????	5.5
					$giftbuff_PLUS = $giftbuffpre_PLUS + 55
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",44456,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ymir Flower!")
							BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ymir Flower!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
//44464	??6?(??)	0.5
					$giftbuff_PLUS = $giftbuffpre_PLUS + 5
					if $randombuff_PLUS > $giftbuffpre_PLUS
						if $randombuff_PLUS <= $giftbuff_PLUS
							AddPlayerInfo($playerid,"item",44464,1)
							#name = GetPlayerInfo(-1,"name")
							BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal LV6 (Passive)!")
							BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal LV6 (Passive)!")
						endif
					endif
					$giftbuffpre_PLUS = $giftbuff_PLUS
				endif
			endif
			$giftbuffpre = $giftbuff
//---------------------------------????

//44465	??(??)	50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44465,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal (Special)!")
					BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal (Special)!")
				endif
			endif
			$giftbuffpre = $giftbuff
//44466	??(??)	50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44466,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal (Attack)!")
					BC("chat","servergroup",-1,"Player ",#name," opened Sai's Gift and was lucky enough to receive: Ethereal Seal (Attack)!")
				endif
			endif
			$giftbuffpre = $giftbuff

			BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)
			BC("screen","player",-1,"randombuff_PLUS = ",$randombuff_PLUS," | giftbuff_PLUS = ",$giftbuff_PLUS)

			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
		endif
		
	}
