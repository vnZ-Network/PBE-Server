	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/04
	//		Author:??
	//		TaskName:ITEM-qianqianmofamao64268.s
	//		TaskID:????64268
	//
	//****************************************
	
	function OnUseItem(){
	
		
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "chat", "player", -1, "Insufficient bag slots!" )
			return
		endif

		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 64268, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		$random_item_1 =  RandomNumber(1 , 10000)
	
		//-0---------------------------------------------0---------

		$random_item_2 = RandomNumber(1 , 9026)
		
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
		if $random_item_2 <= 500
			AddPlayerInfo( -1, "item", 61000, 1 )
		endif
		if $random_item_2 > 500
			if $random_item_2 <= 1000
				AddPlayerInfo( -1, "item", 61038 , 1 )
			endif
		endif
		if $random_item_2 > 1000
			if $random_item_2 <= 1500
				AddPlayerInfo( -1, "item", 61039, 1 )
			endif
		endif
		if $random_item_2 > 1500
			if $random_item_2 <= 2000
				AddPlayerInfo( -1, "item", 61040, 1 )
			endif
		endif
		if $random_item_2 > 2000
			if $random_item_2 <= 2500
				AddPlayerInfo( -1, "item", 61041, 1 )
			endif
		endif
		if $random_item_2 > 2500
			if $random_item_2 <= 3000
				AddPlayerInfo( -1, "item", 61007, 1 )
			endif
		endif
		if $random_item_2 > 3000
			if $random_item_2 <= 3500
				AddPlayerInfo( -1, "item", 61008, 1 )
			endif
		endif
		
		if $random_item_2 > 3500
			if $random_item_2 <= 4300
				AddPlayerInfo( -1, "item", 6012, 1 )
			endif
		endif
		if $random_item_2 > 4300
			if $random_item_2 <= 5100
				AddPlayerInfo( -1, "item", 6016, 1 )
			endif
		endif
		if $random_item_2 > 5100
			if $random_item_2 <= 5600
				AddPlayerInfo( -1, "item", 36532, 1 )
			endif
		endif
		if $random_item_2 > 5600
			if $random_item_2 <= 6100
				AddPlayerInfo( -1, "item", 64411, 1 )
			endif
		endif
		if $random_item_2 > 6100
			if $random_item_2 <= 6600
				AddPlayerInfo( -1, "item", 64412, 1 )
			endif
		endif
		if $random_item_2 > 6600
			if $random_item_2 <= 7100
				AddPlayerInfo( -1, "item", 64413, 1 )
			endif
		endif
		if $random_item_2 > 7100
			if $random_item_2 <= 7600
				AddPlayerInfo( -1, "item", 64414, 1 )
			endif
		endif
		if $random_item_2 > 7600
			if $random_item_2 <= 7900
				AddPlayerInfo( -1, "item", 63065, 1 )
			endif
		endif
		
		if $random_item_2 > 7900
			if $random_item_2 <= 8200
				AddPlayerInfo( -1, "item", 63066, 1 )
			endif
		endif
		
		if $random_item_2 > 8200
			if $random_item_2 <= 8500
				AddPlayerInfo( -1, "item", 63067, 1 )
			endif
		endif
	
		if $random_item_2 > 8500
			if $random_item_2 <= 8501
				AddPlayerInfo( -1, "item", 62101, 1 )
			endif
		endif
		if $random_item_2 > 8501
			if $random_item_2 <= 8516
				AddPlayerInfo( -1, "item", 36251, 1 )
			endif
		endif
		if $random_item_2 > 8516
			if $random_item_2 <= 9026
				AddPlayerInfo( -1, "item", 64268, 1 )
			endif
		endif
		
		
		}