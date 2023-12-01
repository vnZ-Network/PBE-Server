	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/3
	//		Author:??
	//		TaskName:ITEM-longyubaoxiang-64296.s
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
		$del_count = SubPlayerInfo( -1, "item", 64296, 1 )
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
				AddPlayerInfo( -1, "item", 62040, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, " has opened the Dragonfish chest, and has acquired the Dragonfish Mount." )
				BC("chat", "servergroup", -1, "The hero ",#name, " has opened the Dragonfish chest, and has acquired the Dragonfish Mount." )
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
			
			if $random_item_2 <= 5648
				AddPlayerInfo( -1, "item", 63366, 1 )
			endif
			if $random_item_2 > 5648
				if $random_item_2 <= 7648
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 7648
				if $random_item_2 <= 8648
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8648
				if $random_item_2 <= 9148
					AddPlayerInfo( -1, "item", 64430, 1 )
				endif
			endif
			if $random_item_2 > 9148
				if $random_item_2 <= 9548
					AddPlayerInfo( -1, "item", 63269, 1 )
				endif
			endif
			
			if $random_item_2 > 9548
				if $random_item_2 <= 9748
					AddPlayerInfo( -1, "item", 2137, 1 )
				endif
			endif
			
			if $random_item_2 > 9748
				if $random_item_2 <= 9848
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9848
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 6600, 1 )
				endif
			endif
			if $random_item_2 > 9898
				if $random_item_2 <= 9948
					AddPlayerInfo( -1, "item", 6603, 1 )
				endif
			endif
			if $random_item_2 > 9948
				if $random_item_2 <= 9978
					AddPlayerInfo( -1, "item", 63404, 1 )
				endif
			endif
			if $random_item_2 > 9978
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 2320, 1 )
				endif
			endif
			
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62040, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " has opened the Dragonfish chest, and has acquired the Dragonfish Mount." )
					BC("chat", "servergroup", -1, "The hero ",#name, " has opened the Dragonfish chest, and has acquired the Dragonfish Mount." )
				endif
			endif
		endif
		
	}
