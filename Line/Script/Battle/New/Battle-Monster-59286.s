	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/10
	//		Author:??
	//		TaskName:Battle-Monster-59286.s
	//		TaskID: ??????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$charID = GetMonsterCharID()
		$mapid = GetMonsterMapID($charID)
		$camp = GetBattleCamp( $mapid , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59287 , 1 )
			BC( "screen", "map", $mapid , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($mapid, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59288 , 2 )
			BC( "screen", "map", $mapid , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap( $mapid, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}