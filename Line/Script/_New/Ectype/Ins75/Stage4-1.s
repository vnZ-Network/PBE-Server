	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$stage = GetEctypeVar( -1, 113 )
		if $stage == 1234
			SetEctypeVar( -1, 113, 234 )
			DeleteNPC( 1990, $ectID )
			DeleteNPC( 1994, $ectID )
			DeleteNPC( 1998, $ectID )
			DeleteNPC( 2002, $ectID )
			BC( "screen", "map", $ectID, "Please don't touch me." )
			return
		else
			if $stage == 13
				SetEctypeVar( -1, 113, 3 )
				DeleteNPC( 1990, $ectID )
				DeleteNPC( 1994, $ectID )
				DeleteNPC( 1998, $ectID )
				DeleteNPC( 2002, $ectID )
				BC( "screen", "map", $ectID, "Please don't touch me." )
				return
			else
				if $stage == 123
					SetEctypeVar( -1, 113, 23 )
					DeleteNPC( 1990, $ectID )
					DeleteNPC( 1994, $ectID )
					DeleteNPC( 1998, $ectID )
					DeleteNPC( 2002, $ectID )
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