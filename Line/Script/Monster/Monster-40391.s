    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/30
	//		Author:??
	//		TaskName:Monster-40391.s
	//		TaskID:????????
	//****************************************
	
	
	function OnDead(){
	
		$result = IsTaskAccept( -1, 4315 )
		if $result == 0
			#name = GetPlayerInfo(-1 , "name")
			BC("screen" , "map" ,124 , #name ," played the Scorpion Lord Drum to bolster Molmes' warrior soul!")
			return
		endif
	
	
	
	}
	