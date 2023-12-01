    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Monster-41047.s
	//		TaskID:???????
	//
	//****************************************
	
	
	
	function OnDead(){
				
		DropMonsterItems( -1, 60302 )
		#name = GetPlayerInfo( -1, "name" )
		BC( "screen", "map", 127, "The hero ",#name,"] has acquired Trapped Osiris")
		return
		
	}	