	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/3
	//		Author:??
	//		TaskName:ITEM-modaoqibaoxiang-64294.s
	//		TaskID:???
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
		$del_count = SubPlayerInfo( -1, "item", 64294, 1 )
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
			

			
			//??62019
			$use_number_mengma = $use_number_mengma + 1
			if $use_number_mengma == $give_number_mengma
				AddPlayerInfo( -1, "item", 62526, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, " has opened the Arcane Relic chest and has acquired the Arcane Relic Mount. " )
				BC("chat", "servergroup", -1, "The hero ",#name, " has opened the Arcane Relic chest and has acquired the Arcane Relic Mount. " )
				SetServerVar(208 , $use_number_mengma)
				return
			endif
			
			if $use_number_mengma >= 20000
				$give_number_mengma = RandomNumber(1 , 20000)
				$use_number_mengma = 1
				SetServerVar(209 , $give_number_mengma)
			endif
			SetServerVar(208 , $use_number_mengma)
			//????
	
	
			//--------------------------------------------------------------------------------????????
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 5698
				AddPlayerInfo( -1, "item", 63366, 1 )
			endif
			if $random_item_2 > 5698
				if $random_item_2 <= 7698
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 7698
				if $random_item_2 <= 8698
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8698
				if $random_item_2 <= 9098
					AddPlayerInfo( -1, "item", 63269, 1 )
				endif
			endif
			if $random_item_2 > 9098
				if $random_item_2 <= 9298
					AddPlayerInfo( -1, "item", 2137, 1 )
				endif
			endif
			
			if $random_item_2 > 9298
				if $random_item_2 <= 9398
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9398
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 64430, 1 )
				endif
			endif
			
			if $random_item_2 > 9898
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 36533, 1 )
				endif
			endif
			
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62526, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " has opened the Arcane Relic chest and has acquired the Arcane Relic Mount. " )
					BC("chat", "servergroup", -1, "The hero ",#name, " has opened the Arcane Relic chest and has acquired the Arcane Relic Mount. " )
				endif
			endif
		endif
		
	}
