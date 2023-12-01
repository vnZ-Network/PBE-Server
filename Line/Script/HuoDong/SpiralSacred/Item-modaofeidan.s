  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:Item-mofadilei.s
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
		
		SubPlayerInfo( -1, "item", 44552,1 )
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
			$Targetweizhi = GetPlayerVar($TargetID,3547)
			$weizhi = GetPlayerVar(-1,3547)
			if $Targetweizhi >= $weizhi
				$tingliu = GetPlayerVar($TargetID,3551)
				if $tingliu < 3
					SetPlayerVar($TargetID,3551,3)
						RemoveStatusByID( $TargetID, 6483 )
						AddStatus( $TargetID, 6483, 3 )
				endif
				#Targetname = GetPlayerInfo($TargetID, "name")
				#Playername = GetPlayerInfo(-1, "name")
				BC( "chat", "player", $TargetID, "You were exploded by Player ",#Playername, "'s Magic Rocket. You'll be stunned for 3 turns.")
				BC( "screen", "player", $TargetID, "You were exploded by Player ",#Playername, "'s Magic Rocket. You'll be stunned for 3 turns.")
				BC( "chat", "player", -1, "Your Magic Rocket has exploded Player "#Targetname, "He will be stunned for 3 turns.")
				BC( "screen", "player", -1, "Your Magic Rocket has exploded Player "#Targetname, "He will be stunned for 3 turns.")
				$PlayerX = GetPlayerInfo(	$TargetID, "mapposx" )
				$PlayerY = GetPlayerInfo( $TargetID, "mapposy" )
				AddMonsterByFloat( 32359, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				$l = 9
			endif
			$l = $l + 1
		endwhile
		
	}