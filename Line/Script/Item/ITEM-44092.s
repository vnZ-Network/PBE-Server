	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/22
	//		Author:???
	//		TaskName:Item-44092.s
	//		TaskID:       
	//
	//****************************************
	
	function OnUseItem(){
		$task = IsTaskAccept( -1, 1742 )
		if $task == 1
			BC("screen", "player", -1, " You have not obtained this quest. " )
		return
		endif
		
		$map_id = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$a1 = $posx * 100
		$a2 = $posy * 100
		$b1 = $a1 / 256
		$b2 = $a2 / 256
		$level = GetPlayerInfo(-1,"level")
		
		if $map_id != 111
			BC("screen", "player", -1, "Map can not be used.")
		else
			AddLevelMonster( 30270, 84, $level, 1, $map_id, $b1, $b2, 1 )
		endif
	}
			
			
		