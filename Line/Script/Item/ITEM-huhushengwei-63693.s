	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:ITEM-huhushengwei-63693.s
	//		TaskID:?????
	//
	//****************************************
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/30
	//		Author:??
	//		TaskName:ITEM-huhushengwei-63693.s
	//		TaskID:???:???????
	//
	//****************************************	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		//??????
		$player_lv = GetPlayerInfo( -1, "level", 0 )
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63693, 1 )
		//??????????
		if $del_count == 0
		//???????60?????
			if $player_lv <= 60
			
				$random_item_1 = RandomNumber(1, 100)
			
				if $random_item_1 == 10
					AddPlayerInfo( -1, "item", 60029, 3 )
				else
					AddPlayerInfo( -1, "item", 59103, 1 )
				endif
			endif
			
		//????60?????

			if $player_lv > 60

				$random_item_2 = RandomNumber(1, 10000)
				
				if $random_item_2 <= 6500
					AddPlayerInfo( -1, "item",59103, 1 )
				endif
			
				if $random_item_2 > 6500
					if $random_item_2 <= 8200
						AddPlayerInfo( -1, "item", 60029, 3 )
					endif
				endif
			
				if $random_item_2 > 8200
					if $random_item_2 <= 9650
						AddPlayerInfo( -1, "item", 59838, 1 )
					endif
				endif
		
				if $random_item_2 > 9650
					if $random_item_2 <= 9850
						AddPlayerInfo( -1, "item", 2264, 1 )
						#name = GetPlayerInfo(-1 , "name")
//						BC("screen", "servergroup", -1, "The hero ",#name, "GUID:06634000002" )
//						BC("chat", "servergroup", -1, "The hero ",#name, "GUID:06634000004" )
					endif
				endif

				if $random_item_2 > 9850
					if $random_item_2 <= 9925
						AddPlayerInfo( -1, "item", 59839, 1 )
						#name = GetPlayerInfo(-1 , "name")
//						BC("screen", "servergroup", -1, "The hero ",#name, "GUID:06634000006" )
//						BC("chat", "servergroup", -1, "The hero ",#name, "GUID:06634000008" )
					endif
				endif

				if $random_item_2 > 9925
					if $random_item_2 <= 10000
						AddPlayerInfo( -1, "item", 2145, 1 )
						#name = GetPlayerInfo(-1 , "name")
						BC("screen", "servergroup", -1, "The hero ",#name, " has confided in the Goddess Hera, and got a Super Gem Talisman." )
						BC("chat", "servergroup", -1, "The hero ",#name, " has confided in the Goddess Hera, and got a Super Gem Talisman." )
					endif
				endif			
			
			endif
		endif
		
	}
