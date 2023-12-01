	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:Main-Ectype-90-monster-55087.s
	//		TaskID: ?? ????
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		$Accept = IsTaskAccept( -1 , 147 )
		if $Accept != 0
			BC( "screen" , "player" , -1 , "Must be on the Lost Soul quest." )
			return
		endif
		
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		AddMonsterByFloat( 55088 , 1 , $ectype_id , $posx , $posy , 0 )
		BC( "screen" , "player" , -1 , "You linked to a soul." )
			
		
	
	}