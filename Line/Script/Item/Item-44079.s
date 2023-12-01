	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/28
	//		Author:???
	//		TaskName:Item-44079.s
	//		TaskID:????        
	//
	//****************************************
	
	function OnUseItem(){
	
		$task = IsTaskAccept( -1, 266 )
			if $task == 1
			BC("screen", "player", -1,"You do not have the corresponding quest." )
					return
		endif
		
		$map_id = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		
		if $map_id != 457
			BC("screen", "player", -1, "This can't be used here.")
		else
			AddMonsterByFloat( 30256 , 1 , $map_id , $posx , $posy , 0 , 0 ,90 )
		endif
	}