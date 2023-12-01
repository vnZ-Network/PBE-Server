 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:??
	//		TaskName:ITEM-airendilei-12507.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
	
	
	//--------------------	????-------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//------------????ID---------------
		if $player_mapid != 245
			BC( "screen", "player", -1, "There is not dew here." )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < 100
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_x > 106
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_y < 119
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_y > 125
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		//--------??item----------
		$info = SubPlayerInfo ( -1 , "item" , 12730 , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12731, 1 )
		BC( "screen", "player", -1, "You have acquired a [Dew Bottle]." )
	}