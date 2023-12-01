  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:Item-shijianshaizi.s
	//
	//****************************************
	
	function OnUseItem(){
	
		$ectype_ID = GetPlayerInfo( -1, "mapid" )
		if $ectype_ID < 26221
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		if $ectype_ID > 26320
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		
		$weizhi = GetPlayerVar(-1,3547)
		
		if $weizhi == 46
			BC( "chat", "player", -1, "You've already arrived at the final destination. Now open your treasure chest!")
			BC( "screen", "player", -1, "You've already arrived at the final destination. Now open your treasure chest!")
			return
		endif
		
		SetPlayerVar(-1,3551,0)
		RemoveStatusByID($PlayerID, 6483)
		SetPlayerVar(-1,3552,0)
		RemoveStatusByID($PlayerID, 6486)
		SubPlayerInfo( -1, "item", 44548,1 )
		$rolldice = RandomNumber ( 1 , 6 )
		SetPlayerVar(-1,3546,1)
		SetPlayerVar(-1,3548,$rolldice)
		$mondice = 52300 + $rolldice
		$Playerxuhao = GetPlayerVar(-1,3553)
		$monbaoshu = 32339 + $Playerxuhao
		$PlayerX = GetPlayerInfo( -1, "mapposx" )
		$PlayerY = GetPlayerInfo( -1, "mapposy" )
		AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
		AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
		
	}