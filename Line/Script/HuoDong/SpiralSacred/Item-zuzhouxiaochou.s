  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:Item-zuzhouxiaochou.s
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
		
		SubPlayerInfo( -1, "item", 44546,1 )
		$ectype_ID = GetCurEctypeID()
		
		$suc = RandomNumber ( 0 , 2 )
		if $suc > 0
			$weizhi = GetPlayerVar(-1,3547)
			$k = 0
			while $k < 15
				$itemweizhi = 60 + $k
				$itemyou = GetEctypeVar($ectype_ID,$itemweizhi)
				if $itemyou == 0
					$itemlist = 75 + $k
					SetEctypeVar($ectype_ID,$itemweizhi,$weizhi)
					SetEctypeVar($ectype_ID,$itemlist,$Playerlist)
					BC( "chat", "player", -1, "Cursed Imp is set up successfully.")
					BC( "screen", "player", -1, "Cursed Imp is set up successfully.")
					$k = 14
				endif
				$k = $k + 1
			endwhile
		else
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
					$tingliu = GetPlayerVar($TargetID,3551)
					if $tingliu < 1
						SetPlayerVar($TargetID,3551,1)
						RemoveStatusByID( $TargetID, 6483 )
						AddStatus( $TargetID, 6483, 1 )
					endif
					#Playername = GetPlayerInfo(-1, "name")
					BC( "chat", "player", $TargetID, "Player",#Playername, "is failed to use the Cursed Imp. You'll be stunned for a full turn.")
					BC( "screen", "player", $TargetID, "Player",#Playername, "is failed to use the Cursed Imp. You'll be stunned for a full turn.")
				endif
				$l = $l + 1
			endwhile
		endif
		
	}