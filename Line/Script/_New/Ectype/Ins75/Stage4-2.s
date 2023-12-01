	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$stage = GetEctypeVar( -1, 113 )
		if $stage == 234
			SetEctypeVar( -1, 113, 34 )
			DeleteNPC( 1991, $ectID )
			DeleteNPC( 1995, $ectID )
			DeleteNPC( 1999, $ectID )
			DeleteNPC( 2003, $ectID )
			BC( "screen", "map", $ectID, "Please don't touch me." )
			return
		else
			if $stage == 2413
				SetEctypeVar( -1, 113, 413 )
				DeleteNPC( 1991, $ectID )
				DeleteNPC( 1995, $ectID )
				DeleteNPC( 1999, $ectID )
				DeleteNPC( 2003, $ectID )
				BC( "screen", "map", $ectID, "Please don't touch me." )
				return
			else
				if $stage == 23
					SetEctypeVar( -1, 113, 3 )
					DeleteNPC( 1991, $ectID )
					DeleteNPC( 1995, $ectID )
					DeleteNPC( 1999, $ectID )
					DeleteNPC( 2003, $ectID )
					BC( "screen", "map", $ectID, "Please don't touch me." )
					return
				else					
					$playerX = GetPlayerInfo( -1, "mapx" )
					$playerY = GetPlayerInfo( -1, "mapy" )
					$Dif = GetEctypeVar( -1, 4 )
                         $mon1 = 51127
                         $mon2 = 61037
                         $mon3 = 61057
					if $Dif == 0
						AddMonster( $mon1, 8, $ectID, $playerX, $playerY , 1 )
					endif
					if $Dif == 1
						AddMonster( $mon2, 8, $ectID, $playerX, $playerY , 1 )
					endif
					if $Dif == 2
						AddMonster( $mon3, 8, $ectID, $playerX, $playerY , 1 )
					endif
				endif
			endif
		endif
		
	}