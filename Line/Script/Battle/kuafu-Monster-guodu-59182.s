	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59182.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1 ,266)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59183 , 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		#resname = SwapResourcePoint( $id , 59184 , 1 )
		BC( "screen", "map", $ectype_ID , "Mani occupies ", #resname, "." )
		
		AddMonsterByFloat ( 59186 , 2 ,$ectype_ID , 108, 131 , 1 )
		
		
	}