	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:ITEM-qicailu-63562.s
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
		$del_count = SubPlayerInfo( -1, "item", 63562, 1 )
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
				BC("screen", "servergroup", -1, "The hero ",#name, " used a Rainbow Bell and got the Rainbow Reindeer mount!" )
				BC("chat", "servergroup", -1, "The hero ",#name, " used a Rainbow Bell and got the Rainbow Reindeer mount!" )
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
			$random_item_2 = RandomNumber(1, 10000)
			
			if $random_item_2 <= 10
				AddPlayerInfo( -1, "item", 2460, 1 )
			endif
			
			if $random_item_2 > 10
				if $random_item_2 <= 4468
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			
			if $random_item_2 > 4468
				if $random_item_2 <= 4968
					AddPlayerInfo( -1, "item", 2222, 1 )
				endif
			endif
			
			if $random_item_2 > 4968
				if $random_item_2 <= 6968
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 6968
				if $random_item_2 <= 8468
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8468
				if $random_item_2 <= 8968
					AddPlayerInfo( -1, "item", 60028, 4 )
				endif
			endif
			if $random_item_2 > 8968
				if $random_item_2 <= 9468
					AddPlayerInfo( -1, "item", 16, 1 )
				endif
			endif
			
			if $random_item_2 > 9468
				if $random_item_2 <= 9518
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9518
				if $random_item_2 <= 9818
					AddPlayerInfo( -1, "item", 2449, 1 )
				endif
			endif
			
			if $random_item_2 > 9818
				if $random_item_2 <= 9868
					AddPlayerInfo( -1, "item", 2456, 1 )
				endif
			endif
			if $random_item_2 > 9868
				if $random_item_2 <= 9888
					AddPlayerInfo( -1, "item", 53315, 1 )
				endif
			endif
			if $random_item_2 > 9888
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 53325, 1 )
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
					BC("screen", "servergroup", -1, "The hero ",#name, " used a Rainbow Bell and got the Rainbow Reindeer mount!" )
					BC("chat", "servergroup", -1, "The hero ",#name, " used a Rainbow Bell and got the Rainbow Reindeer mount!" )
				endif
			endif
		endif
		
	}
