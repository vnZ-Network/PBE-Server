	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:kuafu-Monster-guodu-59162.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$id = GetPlayerID()
		$ectype_ID = GetEctypeID(-1,259)
		$camp = GetBattleCamp( $ectype_ID , $id )
		#name = GetPlayerInfo( -1 , "name" )
		$line = GetServerLineID()
				
		if $camp == 2
			#resname = SwapResourcePoint( $id , 59163 , 2 )
			BC( "screen", "map", $ectype_ID , #name, " is attempting to capture the ", #resname , ". It will be completely captured in 20 seconds.")
			return
		endif
		
		
		#resname = SwapResourcePoint( $id , 59164 , 1 )
		BC( "screen", "map", $ectype_ID , "Mani occupies ", #resname, "." )
		
		if $ectype_ID == 0
			return
		endif	
		
		if $line == 100
			AddMonsterByFloat ( 59036 , 2 , $ectype_ID , 108, 131 , 2 )
		else
			AddMonsterByFloat ( 59096 , 2 , $ectype_ID , 108, 131 , 2 )
		endif	
		
		
	}