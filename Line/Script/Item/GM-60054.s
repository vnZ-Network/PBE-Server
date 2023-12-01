	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/26
	//		Author:???
	//		TaskName:GM-60054.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		
		//10W????
		$result = AddPlayerInfo( -1, "guildmoney" , 100000 )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60054 , 1 )
		else
			BC( "screen", "player", -1, "You haven't joined a guild yet." )
		endif
		
	}