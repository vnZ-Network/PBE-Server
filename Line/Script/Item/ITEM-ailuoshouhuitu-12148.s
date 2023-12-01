 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/23
	//		Author:???
	//		TaskName:ITEM-ailuoshouhuitu-12148.s
	//		TaskID:103 ??????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
	
		$cangbaotu_mapid = 7
		$cangbaotu_x = 57
		$cangbaotu_y = 60
		$cangbaotu_ID = 12148
		$cangbaotu_new_ID = 12147
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
	//----------------------????-??????--------------------------
		$n = 6
		$incircle_a_x = $cangbaotu_x + $n
		$incircle_a_y = $cangbaotu_y + $n
		$incircle_b_x = $cangbaotu_x - $n
		$incircle_b_y = $cangbaotu_y - $n
	//-----------------------????-??????------------------------------
		$m = 10
		$outcircle_c_x = $cangbaotu_x + $m
		$outcircle_c_y = $cangbaotu_y + $m
		$outcircle_d_x = $cangbaotu_x - $m
		$outcircle_d_y = $cangbaotu_y - $m
	//------------????ID---------------
		
		if $player_mapid != $cangbaotu_mapid
			BC( "screen", "player", -1, "The location indicated by the map is not in this area." )
			return
		endif
	//-----------????-----------
		if $player_x < $outcircle_d_x
			BC( "screen", "player", -1, "The location indicated by the map is not here. Go east a little." )
			return
		endif
		if $player_x > $outcircle_c_x
			BC( "screen", "player", -1, "The location indicated by the map is not here. Go west a little." )
			return
		endif
		if $player_y < $outcircle_d_y
			BC( "screen", "player", -1, "The location indicated by the map is not here. Go south a little." )
			return
		endif		
		if $player_y > $outcircle_c_y
			BC( "screen", "player", -1, "The location indicated by the map is not here. Go north a little." )
			return
		endif
	//------------------????--------------------------------------		
		
		if $player_x < $incircle_b_x
			BC( "screen", "player", -1, "Here is just the location indicated by the map!" )
			return
		endif
		
		if $player_x > $incircle_a_x
			BC( "screen", "player", -1, "Here is just the location indicated by the map!" )
			return
		endif
		if $player_y < $incircle_b_y
			BC( "screen", "player", -1, "Here is just the location indicated by the map!" )
			return
		endif
		if $player_y > $incircle_a_y
			BC( "screen", "player", -1, "Here is just the location indicated by the map!" )
			return
		endif
		//--------??item----------
		$del_cangbaotu_info = SubPlayerInfo ( -1 , "item" , $cangbaotu_ID , 1 )
		//-----??????-----
		if  $del_cangbaotu_info != 0
			return
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item", $cangbaotu_new_ID , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Gramr's Hilt!" )
	}