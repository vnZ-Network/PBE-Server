	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:Marry-NPC-370.s
	//		TaskID:????(?)
	//
	//****************************************
	
	function OnRequest(){
		
			$result = IsTaskAccept( -1, 1656 )
		if $result != 0
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
	
		$result = IsTaskAccept( -1, 1656 )
		if $result != 0
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$info = GetPlayerInfo( -1 , "item" , 12661 )
		if $info > 0
			BC( "dialogbox", "player", -1, "You've received Blessing of Love." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12661, 1 )
	}