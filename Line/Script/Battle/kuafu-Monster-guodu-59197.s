	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59197.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,259)
		$camp = GetBattleCamp( $ectype_ID  , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59198 , 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59199 , 1 )
		BC( "screen", "map", $ectype_ID , "Mani occupies ", #resname, "." )
		
		AddMonsterByFloat ( 59096 , 2 , $ectype_ID , 218 , 162 , 2 )
	}