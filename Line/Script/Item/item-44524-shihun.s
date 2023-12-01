
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/01/31
	//		Author:???
	//		TaskName:ITEM-disi-44159.s
	//		TaskID:?????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 64266 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Starwish Charm to activate this!" )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44524, 1 )
		//??????????
		
		if $del_count == 0
//			$Num = GetPlayerVar( -1, 3991 )
//			$Num = $Num + 1
//			if $Num <= 60000
//				SetPlayerVar( -1, 3991, $Num )
//			endif
			
//			$Charge = GetCharge( -1 )
//			$Number = GetPlayerVar( -1, 3991 )
			//?????2?
			AddPlayerInfo( -1, "item", 59323, 2 )
			
////			if $Charge >= 1000000
//				if $Number >= 200
//					call Random1()
//					return
//				else
//					call Random1()
//					return
//				endif
////			else
////				call Random1()
////				return
////			endif
			
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			$playerid = GetPlayerID()
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????,?????
			
//60031	????????	2?		700
			$giftbuff = $giftbuffpre + 700
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60031,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//59812	?????(1000?)			2000
			$giftbuff = $giftbuffpre + 2000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59812,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//5	?????? 2?			6294
			$giftbuff = $giftbuffpre + 6294
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5,2)
				endif
			endif
			$giftbuffpre = $giftbuff
//44467	??????????			1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44467,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," has used the Source of Chaos card and luckily acquired a Holy Fortification Stone Fragment!")
					BC("chat","servergroup",-1,"Player",#name," has used the Source of Chaos card and luckily acquired a Holy Fortification Stone Fragment!")
				endif
			endif
			$giftbuffpre = $giftbuff
//63381	???????????			700
			$giftbuff = $giftbuffpre + 700
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63381,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//18	99???			100
			$giftbuff = $giftbuffpre + 100
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",18,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//59287	?????????			5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59287,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//64247	?????			25
			$giftbuff = $giftbuffpre + 25
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",64247,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Gem Chest!")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Gem Chest!")
				endif
			endif
			$giftbuffpre = $giftbuff
//5564	????(4?)			10
			$giftbuff = $giftbuffpre + 10
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5564,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Charmstone!")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Charmstone!")
				endif
			endif
			$giftbuffpre = $giftbuff
//53381	????????			5
			$giftbuff = $giftbuffpre + 5
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",53381,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive the Starword - Health.")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive the Starword - Health.")
				endif
			endif
			$giftbuffpre = $giftbuff
//2135	???????			50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2135,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//62619	????????????			2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",62619,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive the Phantom Lord.")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive the Phantom Lord.")
				endif
			endif
			$giftbuffpre = $giftbuff
//64181	????????			1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",64181,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card, and was lucky enough to receive a Pet Skill Removal Charm!")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card, and was lucky enough to receive a Pet Skill Removal Charm!")
				endif
			endif
			$giftbuffpre = $giftbuff
//5384	4????			3
			$giftbuff = $giftbuffpre + 3
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",5384,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Critical Strike Stone!")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card and was luck enough to receive a LV4 Critical Strike Stone!")
				endif
			endif
			$giftbuffpre = $giftbuff
//60099	13??????			2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",60099,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used a Soul Eater card, and was lucky enough to receive a LV13 Chalice Exchange Ticket!")
					BC("chat","servergroup",-1,"Player",#name," used a Soul Eater card, and was lucky enough to receive a LV13 Chalice Exchange Ticket!")
				endif
			endif
			$giftbuffpre = $giftbuff
//63789	??????			50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",63789,1)
				endif
			endif
			$giftbuffpre = $giftbuff
//44084	?????			2
			$giftbuff = $giftbuffpre + 2
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",44084,1)
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the Soul Eater card, and was luck enough to receive a Dimensional Core!")
					BC("chat","servergroup",-1,"Player",#name," used the Soul Eater card, and was luck enough to receive a Dimensional Core!")
				endif
			endif
			$giftbuffpre = $giftbuff
//61092	?????			50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",61092,1)
				endif
			endif
			$giftbuffpre = $giftbuff


//			BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)
//			BC("screen","player",-1,"randombuff_PLUS = ",$randombuff_PLUS," | giftbuff_PLUS = ",$giftbuff_PLUS)

			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			
			
		endif
		
	}
	
	