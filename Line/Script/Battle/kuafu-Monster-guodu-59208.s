	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/18
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59208.s
	//		TaskID: ???????????????
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,266)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59207, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		#resname = SwapResourcePoint( $id , 59210 , 2 )
		BC( "screen", "map", $ectype_ID , "Sol occupies ", #resname, "." )
		
		AddMonsterByFloat ( 59187 , 2 , $ectype_ID , 176 , 211 , 2 )
		
	}