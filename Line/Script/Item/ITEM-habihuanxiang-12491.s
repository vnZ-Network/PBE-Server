 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/29
	//		Author:???
	//		TaskName:ITEM-habihuanxiang-12491.s
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
		if $player_x < 137
			BC( "screen", "player", -1, "Get closer to Worsh Sharby or you won't be able to scare him." )
			return
		endif
		if $player_x > 151
			BC( "screen", "player", -1, "Get closer to Worsh Sharby or you won't be able to scare him." )
			return
		endif
		if $player_y < 109
			BC( "screen", "player", -1, "Get closer to Worsh Sharby or you won't be able to scare him." )
			return
		endif
		if $player_y > 118
			BC( "screen", "player", -1, "Get closer to Worsh Sharby or you won't be able to scare him." )
			return
		endif
		//--------??item----------
		$nullitem = GetPlayerInfo( -1 ,"nullitem",3)
			if $nullitem < 1
				BC( "messagebox", "player", -1, "Quest bag is full!" )
				return
			endif
		$info = SubPlayerInfo ( -1 , "item" , 12491 , 1 )
		if  $info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12494 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Worsh Sharby's Cane!" )
	}