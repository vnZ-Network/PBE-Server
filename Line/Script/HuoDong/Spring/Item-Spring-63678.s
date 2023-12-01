	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:???
	//		TaskName:ITEM-Spring-63678.s
	//		TaskID:??????
	//		
	//****************************************
				
			//2011-11-23??:? 63673 ?? 60029 ??
			//2012-3-12??:??????,???????????1/5,???????????
			
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63678, 1 )
		//??????????
		if $del_count == 0
			
			//-------------------------------------------------------------------------------------------------
			AddPlayerInfo( -1, "item", 19, 30 )
			AddPlayerInfo( -1, "item", 60029, 2 )
			
			$random_item_2 = RandomNumber(1, 2)
			if $random_item_2 == 1
				AddPlayerInfo( -1, "item", 36303, 1 )
			endif
			if $random_item_2 == 2
				AddPlayerInfo( -1, "item", 36304, 1 )
			endif
			
			$random_item_1 = RandomNumber(1, 500)
			$level = GetPlayerInfo( -1 , "level" )
			if $level >= 55
				if $random_item_1 == 255
					AddPlayerInfo( -1, "item", 62061, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " opened a Perfect Match pack and found the Night's Romance Mount." )
					BC("chat", "servergroup", -1, "The hero ",#name, " opened a Perfect Match pack and found the Night's Romance Mount." )
				endif
			endif
			
		endif
		
	}
