	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/27
	//		Author:??
	//		TaskName:ITEM-shanzhaibaoxiang-64250.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 64250, 1 )
		//??????????
		if $del_count == 0
			//????
			//$random_item_1 =  RandomNumber(1 , 100)
			
			
			//-0---------------------------------------------0---------
	
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 500
				AddPlayerInfo( -1, "item", 60028, 4 )
			endif
			if $random_item_2 > 500
				if $random_item_2 <= 3498
					AddPlayerInfo( -1, "item", 60030, 2 )
				endif
			endif
			if $random_item_2 > 3498
				if $random_item_2 <= 3500
					AddPlayerInfo( -1, "item", 62503, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest and has acquired the Martial Panda Pet." )
					BC("chat", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest and has acquired the Martial Panda Pet." )
				endif
			endif
			if $random_item_2 > 3500
				if $random_item_2 <= 7495
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			if $random_item_2 > 7495
				if $random_item_2 <= 7500
				//??????
					AddPlayerInfo( -1, "item", 63269, 1 )
				endif
			endif
			if $random_item_2 > 7500
				if $random_item_2 <= 7700
					AddPlayerInfo( -1, "item", 60509, 1 )
				endif
			endif

			if $random_item_2 > 7700
				if $random_item_2 <= 7702
					AddPlayerInfo( -1, "item", 62012, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest and has acquired the Mammoth Mount." )
					BC("chat", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest and has acquired the Mammoth Mount." )
				endif
			endif
			
			if $random_item_2 > 7702
				if $random_item_2 <= 7902
					AddPlayerInfo( -1, "item", 61001, 1 )
				endif
			endif
			if $random_item_2 > 7902
				if $random_item_2 <= 8102
					AddPlayerInfo( -1, "item", 61002, 1 )
				endif
			endif
			
			if $random_item_2 > 8102
				if $random_item_2 <= 8152
					AddPlayerInfo( -1, "item", 6056, 1 )
				endif
			endif
			
			if $random_item_2 > 8152
				if $random_item_2 <= 8202
					AddPlayerInfo( -1, "item", 2313, 1 )
				endif
			endif
			
			if $random_item_2 > 8202
				if $random_item_2 <= 8252
					AddPlayerInfo( -1, "item", 2314, 1 )
				endif
			endif
			
			if $random_item_2 > 8252
				if $random_item_2 <= 8452
					AddPlayerInfo( -1, "item", 60038, 1 )
				endif
			endif
			
			if $random_item_2 > 8452
				if $random_item_2 <= 8482
					AddPlayerInfo( -1, "item", 60507, 1 )
				endif
			endif
			//------------------------
			if $random_item_2 > 8482
				if $random_item_2 <= 8518
					AddPlayerInfo( -1, "item", 63206, 1 )
				endif
			endif
			
			if $random_item_2 > 8518
				if $random_item_2 <= 8554
					AddPlayerInfo( -1, "item", 63207, 1 )
				endif
			endif
			
			if $random_item_2 > 8554
				if $random_item_2 <= 8590
					AddPlayerInfo( -1, "item", 63208, 1 )
				endif
			endif
			
			if $random_item_2 > 8590
				if $random_item_2 <= 8790
					AddPlayerInfo( -1, "item", 60490, 2 )
				endif
			endif
			
			if $random_item_2 > 8790
				if $random_item_2 <= 8890
					AddPlayerInfo( -1, "item", 60491, 1 )
				endif
			endif
			
			if $random_item_2 > 8890
				if $random_item_2 <= 9291
					AddPlayerInfo( -1, "item", 2222, 1 )
				endif
			endif
			
			if $random_item_2 > 9291
				if $random_item_2 <= 9341
					AddPlayerInfo( -1, "item", 2118, 1 )
				endif
			endif
			
			if $random_item_2 > 9341
				if $random_item_2 <= 9366
					AddPlayerInfo( -1, "item", 2119, 1 )
				endif
			endif
			
			if $random_item_2 > 9366
				if $random_item_2 <= 9416
					AddPlayerInfo( -1, "item", 2131, 1 )
				endif
			endif
			
			if $random_item_2 > 9416
				if $random_item_2 <= 9426
					AddPlayerInfo( -1, "item", 6013, 1 )
				endif
			endif
			
			if $random_item_2 > 9426
				if $random_item_2 <= 9436
					AddPlayerInfo( -1, "item", 6017, 1 )
				endif
			endif
			
			if $random_item_2 > 9436
				if $random_item_2 <= 9536
					AddPlayerInfo( -1, "item", 2212, 1 )
				endif
			endif
			
			if $random_item_2 > 9536
				if $random_item_2 <= 9556
					AddPlayerInfo( -1, "item", 60024, 1 )
				endif
			endif
			
			if $random_item_2 > 9556
				if $random_item_2 <= 9656
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9656
				if $random_item_2 <= 9856
					AddPlayerInfo( -1, "item", 64244, 1 )
				endif
			endif
			
			if $random_item_2 > 9856
				if $random_item_2 <= 9936
					AddPlayerInfo( -1, "item", 64245, 1 )
				endif
			endif
			
			if $random_item_2 > 9936
				if $random_item_2 <= 9966
					AddPlayerInfo( -1, "item", 64246, 1 )
				endif
			endif
			
			
			
			if $random_item_2 > 9966
				if $random_item_2 <= 9981
					AddPlayerInfo( -1, "item", 64247, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired LV4 gem chest." )
					BC("chat", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired LV4 gem chest." )
				endif
			endif
			if $random_item_2 > 9981
				if $random_item_2 <= 9996
					AddPlayerInfo( -1, "item", 2137, 1 )
				endif
			endif
			if $random_item_2 > 9996
				if $random_item_2 <= 9997
					AddPlayerInfo( -1, "item", 36239, 1 )
				endif
			endif
			if $random_item_2 > 9997
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 36240, 1 )
				endif
			endif
			if $random_item_2 > 9998
				if $random_item_2 <= 9999
					AddPlayerInfo( -1, "item", 36227, 1 )
				endif
			endif
			if $random_item_2 > 9999
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 36228, 1 )
				endif
			endif
		endif
		
	}
