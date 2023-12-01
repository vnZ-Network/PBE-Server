	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/08
	//		Author:???
	//		TaskName:44057-Item-HarryPotterMofamao.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
	//???? ?? 172 	

	$exclusive = GetPlayerVar(-1, 172)
	$item_id = 44057
	$pet_id = 62583	
		
		if $exclusive == 1
			BC( "screen", "player", -1, "You have used the Magic Hat already. Its power has been used up for now." )
			BC( "chat", "player", -1, "You have used the Magic Hat already. Its power has been used up for now." )
			return
		endif			
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You must have at least 3 free bag spaces." )
			BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", $item_id , 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		$random_item_1 = RandomNumber(1 , 10000)
	
		//-0---------------------------------------------0---------

		$random_item_2 = RandomNumber(1 , 10000)
		
		if $random_item_1 <= 1000
			AddPlayerInfo( -1, "item", 6205, 1 )
		endif
		if $random_item_1 > 1000
			if $random_item_1 <= 2000
				AddPlayerInfo( -1, "item", 6215 , 1 )
			endif
		endif
		if $random_item_1 > 2000
			if $random_item_1 <= 3000
				AddPlayerInfo( -1, "item", 6235, 1 )
			endif
		endif
		if $random_item_1 > 3000
			if $random_item_1 <= 4000
				AddPlayerInfo( -1, "item", 6250, 1 )
			endif
		endif
		if $random_item_1 > 4000
			if $random_item_1 <= 5000
				AddPlayerInfo( -1, "item", 6257, 1 )
			endif
		endif
		if $random_item_1 > 5000
			if $random_item_1 <= 7000
				AddPlayerInfo( -1, "item", 60029, 1 )
			endif
		endif
		if $random_item_1 > 7000
			if $random_item_1 <= 10000
				AddPlayerInfo( -1, "item", 63293, 1 )
			endif
		endif
		//------------------------------------------------------------------------
//		if $random_item_2 <= 1000
//			AddPlayerInfo( -1, "item", 17408, 1 )
//		endif
//		if $random_item_2 > 1000
//			if $random_item_2 <= 2000
//				AddPlayerInfo( -1, "item", 17401 , 1 )
//			endif
//		endif
//		if $random_item_2 > 2000
//			if $random_item_2 <= 3000
//				AddPlayerInfo( -1, "item", 17418, 1 )
//			endif
//		endif
//		if $random_item_2 > 3000
//			if $random_item_2 <= 4000
//				AddPlayerInfo( -1, "item", 17425, 1 )
//			endif
//		endif
//		if $random_item_2 > 4000
//			if $random_item_2 <= 5000
//				AddPlayerInfo( -1, "item", 17416, 1 )
//			endif
//		endif
//		if $random_item_2 > 5000
//			if $random_item_2 <= 6000
//				AddPlayerInfo( -1, "item", 17415, 1 )
//			endif
//		endif
//		if $random_item_2 > 6000
//			if $random_item_2 <= 7000
//				AddPlayerInfo( -1, "item", 17420, 1 )
//			endif
//		endif
//		
//		if $random_item_2 > 7000
//			if $random_item_2 <= 8000
//				AddPlayerInfo( -1, "item", 17405, 1 )
//			endif
//		endif
//		if $random_item_2 > 8000
//			if $random_item_2 <= 8400
//				AddPlayerInfo( -1, "item", 5610, 1 )
//			endif
//		endif
//		if $random_item_2 > 8400
//			if $random_item_2 <= 8800
//				AddPlayerInfo( -1, "item", 5620, 1 )
//			endif
//		endif
//		if $random_item_2 > 8800
//			if $random_item_2 <= 9200
//				AddPlayerInfo( -1, "item", 5611, 1 )
//			endif
//		endif
//		if $random_item_2 > 9200
//			if $random_item_2 <= 9600
//				AddPlayerInfo( -1, "item", 5621, 1 )
//			endif
//		endif
		if $random_item_2 > 9600
			if $random_item_2 <= 10000
				AddPlayerInfo( -1, "item", 59838, 1 )
			endif
		endif

		//-----------------------------------------------------------------
		AddPlayerInfo(-1, "item", $pet_id, 1)
		BC("screen", "player",-1, "Congratulations, you have obtained an Arcane Elder pet.")
		BC("chat", "player",-1, "Congratulations, you have obtained an Arcane Elder pet.")
		
		AddPlayerInfo(-1, "item", 36694, 1)
		BC("screen", "player",-1, "Congratulations, you have obtained an Academy Robe MADE BY SGCQ.")
		BC("chat", "player",-1, "Congratulations, you have obtained an Academy Robe MADE BY SGCQ.")

	SetPlayerVar(-1 ,172 , 1)
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
				
}