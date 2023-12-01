	function OnDead(){
		
		$ectID = GetEctypeID( -1, 232 )
		$Dif = GetEctypeVar( -1, 4 )
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
          $boss1 = 51223
          $boss2 = 61033
          $boss3 = 61053
		if $Dif == 0
			AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
		endif
          if $Dif == 1
               AddMonster( $boss2, 1, $ectID, $playerX, $playerY , 1 )
          endif
          if $Dif == 2
               AddMonster( $boss3, 1, $ectID, $playerX, $playerY , 1 )
          endif
		
	}