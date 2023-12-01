	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/26
	//		Author:???
	//		TaskName:Item-63179.s
	//		TaskID:??
	//****************************************
	
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your haven't enough bag slot.")
			return
		endif
	
		$sub = SubPlayerInfo( -1 , "item" , 63179 , 1 )
		if $sub != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 50036 , 120 )
	
}