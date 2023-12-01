	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-zhongli-59201.s
	//		TaskID: ???,???????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,259)
		$camp = GetBattleCamp( $ectype_ID , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59202, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59203, 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}