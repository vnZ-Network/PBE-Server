	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/01/29
	//		Author�������
	//		TaskName��97-jianzhong-Monster-59112.s
	//		TaskID��  XXX
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1 , 255 )
		$var = RandomNumber ( 1, 100 )
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		SetEctypeVar( $ectype_ID, 39, 11 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
		AddMonsterByFloat( 59111 , 1 , $mapid, $posx , $posy , 0 , -1  )
				
		
	}