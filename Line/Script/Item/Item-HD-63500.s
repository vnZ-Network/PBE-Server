	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Item-HD-63500.s
	//		TaskID:?????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$item = GetPlayerInfo( -1, "item", 63500 )
		if $item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
			
		$Sub = SubPlayerInfo( -1, "item", 63500, 1 )
		if $Sub != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64407,3 )
		AddPlayerInfo( -1, "item", 64408,1 )
		
	}	