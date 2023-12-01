	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59153.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1,259)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		$line = GetServerLineID()
		
		if $camp == 1
			#resname = SwapResourcePoint( $id , 59152, 1 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname, ". It will be completely captured in 20 seconds.")
			return
		endif
		
		if $ectype_ID == 0
			return
		endif	
		
		#resname = SwapResourcePoint( $id , 59155 , 2 )
		BC( "screen", "map", $ectype_ID , "Sol occupies ", #resname, "." )
		
		if $line == 100
			AddMonsterByFloat ( 59037 , 2 , $ectype_ID , 195, 216 , 2 )
		else
			AddMonsterByFloat ( 59097 , 2 , $ectype_ID , 195, 216 , 2 )
		endif	
		
	}