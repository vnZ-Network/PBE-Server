	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/26
	//		Author:???
	//		TaskName:Item-64230.s
	//		TaskID:??
	//****************************************
	
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your haven't enough bag slot.")
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 64230 )
		if $a < 10
			BC( "screen", "player", -1, "Your Soul Shard is less then 10 pieces.")
			return
		endif
	
		$sub = SubPlayerInfo( -1 , "item" , 64230 , 10 )
		if $sub != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 12645 , 1 )
	
}