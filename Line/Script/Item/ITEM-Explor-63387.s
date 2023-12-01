	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-63387.s
	//		TaskID:??????????
	//****************************************
	
	function OnUseItem(){
		
		$x = GetPlayerInfo( -1, "item",63387)
		if $x < 10
			BC( "screen", "player", -1, "You need 10 Horus' Piccolo Fragments to make the piccolo." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 63387 , 10 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1, "item",65347 , 1)
		
	}