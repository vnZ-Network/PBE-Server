	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/18
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59211.s
	//		TaskID: 
	//
	//****************************************
	
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,266)
		$camp = GetBattleCamp( $ectype_ID , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59212, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59213, 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap( $ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}