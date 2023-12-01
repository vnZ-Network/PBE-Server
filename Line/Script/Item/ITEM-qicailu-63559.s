	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:ITEM-qicailu-63559.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63559, 1 )
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
				AddPlayerInfo( -1, "item", 62053, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, "After using Rainbow Reindeer, you acquired the mount.." )
				BC("chat", "servergroup", -1, "The hero ",#name, "After using Rainbow Reindeer, you acquired the mount.." )
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
			
			if $random_item_2 <= 4648
				AddPlayerInfo( -1, "item", 63366, 1 )
			endif
			if $random_item_2 > 4648
				if $random_item_2 <= 6648
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 6648
				if $random_item_2 <= 8148
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8148
				if $random_item_2 <= 8648
					AddPlayerInfo( -1, "item", 64430, 1 )
				endif
			endif
			if $random_item_2 > 8648
				if $random_item_2 <= 9148
					AddPlayerInfo( -1, "item", 16, 1 )
				endif
			endif
			
			if $random_item_2 > 9148
				if $random_item_2 <= 9198
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9198
				if $random_item_2 <= 9298
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9298
				if $random_item_2 <= 9348
					AddPlayerInfo( -1, "item", 6600, 1 )
				endif
			endif
			if $random_item_2 > 9348
				if $random_item_2 <= 9398
					AddPlayerInfo( -1, "item", 6603, 1 )
				endif
			endif
			if $random_item_2 > 9398
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 64180, 1 )
				endif
			endif
			if $random_item_2 > 9898
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62053, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, "After using Rainbow Reindeer, you acquired the mount.." )
					BC("chat", "servergroup", -1, "The hero ",#name, "After using Rainbow Reindeer, you acquired the mount.." )
				endif
			endif
		endif
		
	}
