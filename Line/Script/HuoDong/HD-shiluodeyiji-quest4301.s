	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/14
	//		Author:??
	//		TaskName:HD-shiluodeyiji-quest4301.s
	//		TaskID:?????30???????????????
	//
	//****************************************
	
	
	
	function OnTaskFailedDone(){
		
		$map_id = GetPlayerInfo( -1, "mapid")
		//BC( "chat", "player", -1, "test:",$map_id )
		if $map_id == 130
			FlyToMap( -1, 132, 55, 60 )
			BC( "chat", "player", -1, "Congratulations! You have finished clearing the ruins, please get a Shovel from the Archaeologist and find the treasure.")
			//BC( "chat", "player", -1, "GUID:05164000001")
			return
		endif
		if $map_id == 131
			FlyToMap( -1, 132, 55, 60  )
			BC( "chat", "player", -1, "Congratulations! You have finished clearing the ruins, please get a Shovel from the Archaeologist and find the treasure.")
			//BC( "chat", "player", -1, "GUID:05164000003")
			return
		endif
	}
