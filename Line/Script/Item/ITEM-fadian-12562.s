 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:ITEM-fadian-12562.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )

		if $mapid != 90
			BC( "screen", "player", -1, "The ruins of Karnak Temple is in Nile River West!" )
			return
		endif
		//-----------------
		if $player_x < 247
			BC( "screen", "player", -1, "You cannot use Karnak Temple Tomes here!" )
			return
		endif
		if $player_x > 257
			BC( "screen", "player", -1, "You cannot use Karnak Temple Tomes here" )
			return
		endif
		if $player_y < 259
			BC( "screen", "player", -1, "You cannot use Karnak Temple Tomes here!" )
			return
		endif
		if $player_y > 264
			BC( "screen", "player", -1, "You cannot use Karnak Temple Tomes here!" )
			return
		endif
		
		//----???item------
		AddMonster( 30212, 1, 90, $x, $y, 0 , -1 )
		BC( "screen", "player", -1, "Karnak Temple Watcher has appeared!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	}