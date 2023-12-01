	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/26
	//		Author:???
	//		TaskName:Item-50046.s
	//		TaskID:??
	//****************************************
	
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your haven't enough bag slot.")
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 50046 )
		if $a < 5
			BC( "screen", "player", -1, "Your Shadow of Giza Fragment is less then 5 pieces.")
			return
		endif
	
		$sub = SubPlayerInfo( -1 , "item" , 50046 , 5 )
		if $sub != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 50036 , 1 )
	
}