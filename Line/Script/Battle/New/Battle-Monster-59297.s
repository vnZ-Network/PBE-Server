	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/10
	//		Author:??
	//		TaskName:Battle-Monster-59297.s
	//		TaskID: ??????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$charID = GetMonsterCharID()
		$mapid = GetMonsterMapID($charID)
		$camp = GetBattleCamp( $mapid , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59298 , 2 )
			BC( "screen", "map", $mapid , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59299 , 1 )
		BC( "screen", "map", $mapid , "Mani occupies ", #resname, "." )
		AddMonsterByFloat (59305 , 2 , $mapid , 163 , 270 , 2 )
		
	}