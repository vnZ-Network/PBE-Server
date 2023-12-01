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
		if $stage == 413
			SetEctypeVar( -1, 113, 13 )
			DeleteNPC( 1993, $ectID )
			DeleteNPC( 1997, $ectID )
			DeleteNPC( 2001, $ectID )
			DeleteNPC( 2005, $ectID )
			BC( "screen", "map", $ectID, "Please don't touch me." )
			return
		else
			if $stage == 4123
				SetEctypeVar( -1, 113, 123 )
				DeleteNPC( 1993, $ectID )
				DeleteNPC( 1997, $ectID )
				DeleteNPC( 2001, $ectID )
				DeleteNPC( 2005, $ectID )
				BC( "screen", "map", $ectID, "Please don't touch me." )
				return
			else
				if $stage == 4
					SetEctypeVar( -1, 113, 0 )
					DeleteNPC( 1993, $ectID )
					DeleteNPC( 1997, $ectID )
					DeleteNPC( 2001, $ectID )
					DeleteNPC( 2005, $ectID )
					BC( "screen", "map", $ectID, "I told you to stop touching me! " )
					$playerX = GetPlayerInfo( -1, "mapx" )
					$playerY = GetPlayerInfo( -1, "mapy" )
					$Dif = GetEctypeVar( -1, 4 )
                         $boss1 = 51221
                         $boss2 = 61031
                         $boss3 = 61051
                         if $Dif == 0
                              AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
                         endif
                         if $Dif == 1
                              AddMonster( $boss2, 1, $ectID, $playerX, $playerY , 1 )
                         endif
                         if $Dif == 2
                              AddMonster( $boss3, 1, $ectID, $playerX, $playerY , 1 )
                         endif
					PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
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