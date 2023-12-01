	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/26
	//		Author:???
	//		TaskName:Item-12643.s
	//		TaskID:????? 
	//****************************************
	
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your haven't enough bag slot.")
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 64374  )
		if $a < 1
			BC( "screen", "player", -1, "You have no Medal of Triumph. Combines Feather Pen needs Horus' Feather and Medal of Triumph.")
			return
		endif
	
		$sub = SubPlayerInfo( -1 , "item" , 12643 , 1 )
		if $sub != 0
			return
		endif
		$sub = SubPlayerInfo( -1 , "item" , 64374 , 1 )
		if $sub != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12633 , 1 )
	
}