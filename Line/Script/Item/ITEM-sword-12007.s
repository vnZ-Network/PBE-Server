 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:ITEM-sword-12007.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$m = GetPlayerInfo ( -1 , "item",12008 )
		if $m > 0
			return
			BC( "screen", "player", -1, "You have Eye of the Statue already." )
		endif
		if $mapid != 93
			BC( "screen", "player", -1, "The broadsword Tyresius is available only in Viking Steppe." )
			return
		endif
		//-----------------
		if $player_x < 250
			BC( "screen", "player", -1, "You can only have the discovery at the assigned location." )
			return
		endif
		if $player_x > 256
			BC( "screen", "player", -1, "You can only have the discovery at the assigned location." )
			return
		endif
		if $player_y < 236
			BC( "screen", "player", -1, "You can only have the discovery at the assigned location." )
			return
		endif
		if $player_y > 246
			BC( "screen", "player", -1, "You can only have the discovery at the assigned location." )
			return
		endif
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag is full!" )
			return
		endif
		
		//----???item------
		AddPlayerInfo ( -1 ,"item", 12008 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Eye of the Statue." )
	}