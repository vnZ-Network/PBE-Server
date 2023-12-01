 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/8
	//		Author:??
	//		TaskName:ITEM-airendilei-12507.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
	
	//--------------------	?????-------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//------------????ID---------------
		if $player_mapid != 20
			BC( "screen", "player", -1, "Dwarf-made Landmine cannot be deployed in this area!" )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < 129
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_x > 136
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_y < 97
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		if $player_y > 105
			BC( "screen", "player", -1, "The location is not here!" )
			return
		endif
		//--------??item----------
		$info = SubPlayerInfo ( -1 , "item" , 12507 , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12510, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired the safety catch!" )
	}