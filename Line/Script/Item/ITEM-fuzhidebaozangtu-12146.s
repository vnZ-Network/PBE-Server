 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/23
	//		Author:???
	//		TaskName:ITEM-fuzhidebaozangtu-12146.s
	//		TaskID:106 ??????
	//****************************************
	
	function OnUseItem(){
		$mapid = 7
		$x1 = 131
		$y1 = 267
		$x2 = 178
		$y2 = 261
		$x3 = 292
		$y3 = 253
		$ID = 12146
		$new_ID = 12145
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )	
	//-----------????-?(u)?(d)?(l)?(r)--------------------------
		$n = 5
		$r_x1 = $x1 + $n
		$d_y1 = $y1 + $n
		$l_x1 = $x1 - $n
		$u_y1 = $y1 - $n
		
		$r_x2 = $x2 + $n
		$d_y2 = $y2 + $n
		$l_x2 = $x2 - $n
		$u_y2 = $y2 - $n
		
		$r_x3 = $x3 + $n
		$d_y3 = $y3 + $n
		$l_x3 = $x3 - $n
		$u_y3 = $y3 - $n
		
	//-----------????ID---------------
		
		if $player_mapid != $mapid
			BC( "screen", "player", -1, "The location indicated by the duplicated treasure map is not in this area." )
			return
		endif
	//-----------????,x??150,??A???,X??220,??B??????C??--------------------
		if $player_x < 150
			if $player_x < $l_x1
			BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
				return
			endif
			if $player_x > $r_x1
			BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
				return
			endif
			if $player_y < $u_y1
			BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
				return
			endif
			if $player_y > $d_y1
			BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
				return
			endif
			BC( "screen", "player", -1, "It seems that the treasure here has been moved away!" )
		else
			if $player_x < 220
				if $player_x < $l_x2
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_x > $r_x2
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_y < $u_y2
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_y > $d_y2
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				$del_cangbaotu = SubPlayerInfo ( -1 , "item" , $ID , 1 )
				if  $del_cangbaotu != 0
					return
				endif
				AddPlayerInfo ( -1 ,"item", $new_ID , 1 )
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "screen", "player", -1, "You have acquired sword Gramr's Blade!" )
			else
				if $player_x < $l_x3
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_x > $r_x3
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_y < $u_y3
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				if $player_y > $d_y3
				BC( "screen", "player", -1, "The treasure is not buried here. Please check the treasure map again!" )
					return
				endif
				BC( "screen", "player", -1, "It seems that the treasure here has been moved away!" )		
			endif
		endif
	}