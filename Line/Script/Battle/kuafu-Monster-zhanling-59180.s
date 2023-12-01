	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59180.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,266)
		#name = GetPlayerInfo( -1 , "name" )
		
		#resname = SwapResourcePoint( $id , 59177 , 1)
		BC( "screen", "map", $ectype_ID  , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds." )
		
	}