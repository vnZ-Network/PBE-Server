	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59178.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,266)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59177, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59180 , 2 )
		BC( "screen", "map", $ectype_ID , "Sol occupies ", #resname, "." )
		
		AddMonsterByFloat ( 59187 , 2 ,$ectype_ID , 156 , 174 , 1 )
		
	}