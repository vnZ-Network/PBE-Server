  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:Item-xiaotoushoutao.s
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
		
		SubPlayerInfo( -1, "item", 44551,1 )
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
			$weizhi = GetPlayerVar(-1,3547)
			$Targetweizhi = GetPlayerVar($TargetID,3547)
			if $weizhi == $Targetweizhi
				$raditem = RandomNumber ( 0 , 9 )
				$k = 0
				while $k < 10
					$raditem = $raditem + $k
					if $raditem > 9
						$raditem = $raditem - 10
					endif
					if $raditem == 9
						$raditem = 25
					endif
					$itemid = 44544 + $raditem
					$itemnum = GetPlayerInfo( $TargetID, "item", $itemid)
					if $itemnum > 0
						SubPlayerInfo( $TargetID, "item", $itemid,1)
						AddPlayerInfo( -1, "item", $itemid,1)
						#Targetname = GetPlayerInfo($TargetID, "name")
						BC( "chat", "player", $TargetID, "You felt that something has been stolen.")
						BC( "screen", "player", $TargetID, "You felt that something has been stolen.")
						BC( "chat", "player", -1, "The thief you sent out has successfully stolen Player"#Targetname)
						BC( "screen", "player", -1, "The thief you sent out has successfully stolen Player"#Targetname)
						$k = 9
						$l = 9
					endif
					$k = $k + 1
				endwhile
				
			endif
			$l = $l + 1
		endwhile
		
	}