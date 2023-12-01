  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:Item-jiaohuanjiqi.s
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
		
		SubPlayerInfo( -1, "item", 44549,1 )
		$ectype_ID = GetCurEctypeID()
		
		$radstart = RandomNumber ( 0 , 9 )
		$l = 0
		while $l < 10
			$radplus = $radstart + $l
			if $radplus > 9
				$radplus = $radplus - 10
			endif
			$Targetlist = 110 + $radplus
			$TargetID = GetEctypeVar($ectype_ID,$Targetlist)
			if $TargetID > 0
				$weizhi = GetPlayerVar(-1,3547)
				$Targetweizhi = GetPlayerVar($TargetID,3547)
				SetPlayerVar(-1,3547,$Targetweizhi)
				SetPlayerVar($TargetID,3547,$weizhi)
				#Targetname = GetPlayerInfo($TargetID, "name")
				#Playername = GetPlayerInfo(-1, "name")
				BC( "chat", "player", $TargetID, "You'll exchange your location with Player ",#Playername, " affected by the Swap Gadget.")
				BC( "screen", "player", $TargetID, "You'll exchange your location with Player ",#Playername, " affected by the Swap Gadget.")
				BC( "chat", "player", -1, "You used the Swap Gadget and exchange your location with Player "#Targetname, ".")
				BC( "screen", "player", -1, "You used the Swap Gadget and exchange your location with Player "#Targetname, ".")
				$PlayerX = GetPlayerInfo(	$TargetID, "mapx" )
				$PlayerY = GetPlayerInfo( $TargetID, "mapy" )
				$PlayerX2 = GetPlayerInfo( -1, "mapx" )
				$PlayerY2 = GetPlayerInfo( -1, "mapy" )
				FlyToMap($TargetID, $ectype_ID, $PlayerX2, $PlayerX2)
				FlyToMap(-1, $ectype_ID, $PlayerX, $PlayerY)
				$l = 9
			endif
			$l = $l + 1
		endwhile
		
	}