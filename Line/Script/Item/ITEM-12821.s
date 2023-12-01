	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/14
	//		Author:???
	//		TaskName:Item-12821.s
	//		TaskID:       
	//
	//****************************************
	
	function OnUseItem(){
		$task = IsTaskAccept( -1, 278 )
		if $task == 1
			BC("screen", "player", -1, "You do not have the corresponding quest." )
		return
		endif
		
		$map_id = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		
		if $map_id != 44
			BC("screen", "player", -1, "This can't be used here.")
		else
			AddMonsterByFloat( 30292, 1, 44, $posx , $posy , 1, -1 )
		endif
	}
			
			
		