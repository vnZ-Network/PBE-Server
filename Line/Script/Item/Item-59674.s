	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/14
	//		Author:???
	//		TaskName:Item-59674.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Item = GetPlayerInfo( -1, "item", 59674 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 59674, 1 )
		if $SubItem != 0
			return
		endif
		
		$title = HaveTitle( -1, 87 )
		if $title != 0
		   AddPlayerInfo( -1, "item", 59840 , 2 )
		   AddPlayerInfo( -1, "item", 59670 , 5 )
		   AddTitle( -1,87)
		else
		   AddPlayerInfo( -1, "item", 59840 , 2 )
		   AddPlayerInfo( -1, "item", 59670 , 5 )
		endif	
		
	}