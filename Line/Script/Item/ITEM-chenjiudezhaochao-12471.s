 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/21
	//		Author:???
	//		TaskName:ITEM-chenjiudezhaochao-12471.s
	//		TaskID: ????? 1396
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )

		if $player_mapid != 106
			BC( "screen", "player", -1, "The indicated location is not in this area!" )
			return
		endif
		//---??96,164----
		if $player_x < 91
			BC( "screen", "player", -1, "It's not the indicated location here!" )
			return
		endif
		if $player_x > 101
			BC( "screen", "player", -1, "It's not the indicated location here!" )
			return
		endif
		if $player_y < 159
			BC( "screen", "player", -1, "It's not the indicated location here!" )
			return
		endif
		if $player_y > 169
			BC( "screen", "player", -1, "It's not the indicated location here!" )
			return
		endif
		//--------??item----------
		$del_info = SubPlayerInfo ( -1 , "item" , 12471 , 1 )
		if  $del_info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item", 12472 , 1 )
		BC( "screen", "player", -1, "You have acquired Worn Champion Medal!" )
	}