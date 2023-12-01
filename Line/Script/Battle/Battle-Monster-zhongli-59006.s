	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-zhongli-59006.s
	//		TaskID: ???,???????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 220 , $id ) 
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59007, 1 )
			BC( "screen", "map", 220 , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap(220, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59008, 2 )
			BC( "screen", "map", 220 , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			PlaySoundToMap(220, "..\\Data\\Audio\\UI\\MainStory.wav")
			return
		endif
		
	}