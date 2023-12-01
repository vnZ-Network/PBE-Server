
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Item-12784.s
	//		TaskID:  
	//****************************************
	
//	function OnUseItem(){
//		
//		$ectype_id = GetEctypeID( -1 , 254 )
//		$mapid = GetPlayerInfo( -1 , "mapid" )
//		$posx = GetPlayerInfo( -1 , "mapposx" )
//		$posy = GetPlayerInfo( -1 , "mapposy" )
//		if $ectype_id <= 0
//			BC( "screen" , "player" , -1 , "GUID:04493000000" )
//			BC( "chat" , "player" , -1 , "GUID:04493000001" )
//			return
//		endif
//		if $mapid <= 10000
//			BC( "screen" , "player" , -1 , "GUID:04493000002" )
//			BC( "chat" , "player" , -1 , "GUID:04493000003" )
//			return
//		endif
//		$info = SubPlayerInfo( -1, "item", 12784 , 1 )
//		if $info != 0
//			return
//		endif
//		AddNpcByPos( 509 , $ectype_id , $posx , $posy , 300 , 0 )
//		
//	}