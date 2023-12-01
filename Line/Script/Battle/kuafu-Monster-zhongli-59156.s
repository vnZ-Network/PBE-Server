	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59156.s
	//		TaskID: 
	//
	//****************************************
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetPlayerInfo( -1 , "mapid" )
		$camp = GetBattleCamp( $ectype_ID , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59157, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59158, 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}