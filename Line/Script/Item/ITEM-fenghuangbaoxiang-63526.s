	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/10
	//		Author:??
	//		TaskName:ITEM-fenghuangbaoxiang-63526.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63526, 1 )
		//??????????
		if $del_count == 0
			
			
			//----------------------------------------------------------------------------------------??????
			
			
			
			
			//??
			$use_number_mengma = GetServerVar(208)
			//??
			$give_number_mengma = GetServerVar(209)
			
		
			if $give_number_mengma == 0
				$give_number_mengma = RandomNumber(1 , 20000)
				SetServerVar(209 , $give_number_huaxianzi)
			endif
			

			
			//
			$use_number_mengma = $use_number_mengma + 1
			if $use_number_mengma == $give_number_mengma
				AddPlayerInfo( -1, "item", 62046, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, " has activated Phoenix Feather, and has fortunately acquired the mount Phoenix!" )
				BC("chat", "servergroup", -1, "The hero ",#name, " has activated Phoenix Feather, and has fortunately acquired the mount Phoenix!" )
				SetServerVar(208 , $use_number_mengma)
				return
			endif
			
			if $use_number_mengma >= 20000
				$give_number_mengma = RandomNumber(1 , 20000)
				$use_number_mengma = 1
				SetServerVar(209 , $give_number_mengma)
			endif
			SetServerVar(208 , $use_number_mengma)
			//??
	
	
			//--------------------------------------------------------------------------------????????
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 4748
				AddPlayerInfo( -1, "item", 63366, 1 )
			endif
			if $random_item_2 > 4748
				if $random_item_2 <= 6748
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 6748
				if $random_item_2 <= 8248
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8248
				if $random_item_2 <= 8748
					AddPlayerInfo( -1, "item", 64430, 1 )
				endif
			endif
			if $random_item_2 > 8748
				if $random_item_2 <= 9248
					AddPlayerInfo( -1, "item", 16, 1 )
				endif
			endif
			
			if $random_item_2 > 9248
				if $random_item_2 <= 9298
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9298
				if $random_item_2 <= 9398
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9398
				if $random_item_2 <= 9448
					AddPlayerInfo( -1, "item", 6600, 1 )
				endif
			endif
			if $random_item_2 > 9448
				if $random_item_2 <= 9498
					AddPlayerInfo( -1, "item", 6603, 1 )
				endif
			endif
			if $random_item_2 > 9498
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 64180, 1 )
				endif
			endif
			
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62046, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " has activated Phoenix Feather, and has fortunately acquired the mount Phoenix!" )
					BC("chat", "servergroup", -1, "The hero ",#name, " has activated Phoenix Feather, and has fortunately acquired the mount Phoenix!" )
				endif
			endif
		endif
		
	}
