	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/10
	//		Author:??
	//		TaskName:Battle-Monster-59288.s
	//		TaskID: ??????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$charID = GetMonsterCharID()
		$mapid = GetMonsterMapID($charID)
		$camp = GetBattleCamp( $mapid , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59287, 1 )
			BC( "screen", "map", $mapid , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59290 , 2 )
		BC( "screen", "map", $mapid , "Sol occupies ", #resname, "." )
		AddMonsterByFloat (59306 , 2 , $mapid , 163 , 163 , 2 )
		
		
	}