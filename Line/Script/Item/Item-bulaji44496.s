	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-bulaji44496.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44496 )
		if $Item < 5
			BC( "dialogbox", "player", -1, "Collect 5 Seal of Bragiand and combine them to receive a Bragi's Wheel mount." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44496, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 62135 , 1 )
		#name = GetPlayerInfo(-1,"name")
		BC("screen","servergroup",-1,"Player",#name," successfully combined a Combat Mount Bragi's Wheel!")
		BC("chat","servergroup",-1,"Player",#name," successfully combined a Combat Mount Bragi's Wheel!")
		
	}