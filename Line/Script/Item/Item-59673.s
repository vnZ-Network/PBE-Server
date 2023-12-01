	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/14
	//		Author:???
	//		TaskName:Item-59673.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 59673 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 59673, 1 )
		if $SubItem != 0
			return
		endif
		
		$title = HaveTitle( -1, 86 )
		if $title != 0
		   AddPlayerInfo( -1, "item", 59840 , 1 )
		   AddPlayerInfo( -1, "item", 59670 , 4 )
		   AddTitle( -1,86)
		else
		   AddPlayerInfo( -1, "item", 59840 , 1 )
		   AddPlayerInfo( -1, "item", 59670 , 4 )
		endif	
		
	}