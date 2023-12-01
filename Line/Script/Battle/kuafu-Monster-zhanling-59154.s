	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59154.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
	
		$id = GetPlayerID()
		$ectype_ID = GetPlayerInfo( -1 , "mapid" )
		#name = GetPlayerInfo( -1 , "name" )
		
		#resname = SwapResourcePoint( $id , 59153 , 2 )
		BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds." )
		
	}