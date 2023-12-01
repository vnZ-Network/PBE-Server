 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/29
	//		Author:???
	//		TaskName:ITEM-aimuxietehuanxiang-12492.s
	//		TaskID:???????????
	//****************************************
	
	function OnUseItem(){
	
	
	//--------------------	?????-------------------------
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//------------????ID---------------
		if $player_mapid != 13
			BC( "screen", "player", -1, "The indicated location is not in this area!" )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < 259
			BC( "screen", "player", -1, "You can't scare Issabey if you stand too far from him." )
			return
		endif
		if $player_x > 272
			BC( "screen", "player", -1, "You can't scare Issabey if you stand too far from him." )
			return
		endif
		if $player_y < 53
			BC( "screen", "player", -1, "You can't scare Issabey if you stand too far from him." )
			return
		endif
		if $player_y > 60
			BC( "screen", "player", -1, "You can't scare Issabey if you stand too far from him." )
			return
		endif
		//--------??item----------
		$nullitem = GetPlayerInfo( -1 ,"nullitem",3)
			if $nullitem < 1
				BC( "messagebox", "player", -1, "Quest bag is full!" )
				return
			endif
		$info = SubPlayerInfo ( -1 , "item" , 12492 , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12495 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Issabey's Cane!" )
	}