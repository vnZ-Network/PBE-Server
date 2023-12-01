 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/15
	//		Author:???
	//		TaskName:ITEM-renyudiyu7-12446.s
	//		TaskID:????7
	//****************************************
	
	function OnUseItem(){
		
	$mapid = 5
	$x = 219
	$y = 165
	$item = 12446
	$newitem = 12439
	
	$a = $x - 4
	$b = $x + 4
	$c = $y - 4
	$d = $y + 4
	
	//--------------------	?????-------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//------------????ID---------------
		if $player_mapid != $mapid
			BC( "screen", "player", -1, "The indicated location is not in this area!" )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < $a
			BC( "screen", "player", -1, "It's not buried here." )
			return
		endif
		if $player_x > $b
			BC( "screen", "player", -1, "It's not buried here." )
			return
		endif
		if $player_y < $c
			BC( "screen", "player", -1, "It's not buried here." )
			return
		endif
		if $player_y > $d
			BC( "screen", "player", -1, "It's not buried here." )
			return
		endif
		//--------??item----------
		$info = SubPlayerInfo ( -1 , "item" , $item , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",$newitem , 1 )
		BC( "screen", "player", -1, "You have acquired the buried items" )
	}