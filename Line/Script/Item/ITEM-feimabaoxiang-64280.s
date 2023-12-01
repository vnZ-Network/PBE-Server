	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/4
	//		Author:??
	//		TaskName:ITEM-feimabaoxiang-64280.s
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
		$del_count = SubPlayerInfo( -1, "item", 64280, 1 )
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
				AddPlayerInfo( -1, "item", 62019, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, "has opened Windrider's Chest and has acquired Harp of the Unicorn!" )
				BC("chat", "servergroup", -1, "The hero ",#name, "has opened Windrider's Chest and has acquired Harp of the Unicorn!" )
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
			
			if $random_item_2 <= 6898
				AddPlayerInfo( -1, "item", 63366, 1 )
			endif
			if $random_item_2 > 6898
				if $random_item_2 <= 9398
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 9398
				if $random_item_2 <= 9698
					AddPlayerInfo( -1, "item", 63269, 1 )
				endif
			endif
			if $random_item_2 > 9698
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 2137, 1 )
				endif
			endif
			if $random_item_2 > 9898
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62019, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, "has opened Windrider's Chest and has acquired Harp of the Unicorn!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "has opened Windrider's Chest and has acquired Harp of the Unicorn!" )
				endif
			endif
		endif
		
	}
