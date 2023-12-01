	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-zhanling-59015.s
	//		TaskID: ????????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		#name = GetPlayerInfo( -1 , "name" )
		
		#resname = SwapResourcePoint( $id , 59012 , 1)
		BC( "screen", "map", 220 , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds." )
		
	}