	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/26
	//		Author:???
	//		TaskName:Item-12716.s
	//		TaskID:????
	//****************************************
	
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your haven't enough bag slot.")
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 59122 )
		if $a < 1
			BC( "screen", "player", -1, "You have no Holy Water. Combines Set's Blood needs Hades Ink and Holy Water.")
			return
		endif
	
		$sub = SubPlayerInfo( -1 , "item" , 59122 , 1 )
		if $sub != 0
			return
		endif
				$sub = SubPlayerInfo( -1 , "item" , 12716 , 1 )
		if $sub != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12619 , 1 )
	
}