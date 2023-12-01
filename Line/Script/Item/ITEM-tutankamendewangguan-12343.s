 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/11
	//		Author:???
	//		TaskName:ITEM-tutankamendewangguan-12343.s
	//		TaskID: ????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )

		if $player_mapid != 6
			BC( "screen", "player", -1, "The location indicated by the treasure map is not in this map!" )
			return
		endif
		
		if $player_x < 50
			BC( "screen", "player", -1, "According to the treasure map, the location should be around the waterfall." )
			return
		endif
		if $player_x > 52
			BC( "screen", "player", -1, "According to the treasure map, the location should be around the waterfall." )
			return
		endif
		if $player_y < 84
			BC( "screen", "player", -1, "According to the treasure map, the location should be around the waterfall." )
			return
		endif
		if $player_y > 95
			BC( "screen", "player", -1, "According to the treasure map, the location should be around the waterfall." )
			return
		endif
		//--------??item----------
		$del_info = SubPlayerInfo ( -1 , "item" , 12343 , 1 )
		if  $del_info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item", 12344 , 1 )
		PlayEffect( -1, "common\wabao\tx_wabaoguangzhu.ini" )
		BC( "screen", "player", -1, "You have acquired Tutankhamun's Crown" )
	}