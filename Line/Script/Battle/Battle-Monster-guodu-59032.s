	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-Monster-guodu-59032.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$camp = GetBattleCamp( 234 , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59033 , 2 )
			BC( "screen", "map", 234 , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		#resname = SwapResourcePoint( $id , 59034 , 1 )
		BC( "screen", "map", 234 , "Mani occupies ", #resname, "." )
		
		AddMonster( 59036 , 2 ,234 , 66 , 41 , 1 )
		
		
	}