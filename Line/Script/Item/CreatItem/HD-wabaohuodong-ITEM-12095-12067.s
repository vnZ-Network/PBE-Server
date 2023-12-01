 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/20
	//		Author:???
	//		TaskName:HD-wabaohuodong-ITEM-12095-12067.s
	//		TaskID:72 ????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
	
		$cangbaotu_mapid = 93
		$cangbaotu_x = 93
		$cangbaotu_y = 238
		
		$cangbaotu_ID = 12095
		$cangbaotu_new_ID = 12067
		
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )

		
	//----------------------????---------------------------
		$n = 5
		$incircle_a_x = $cangbaotu_x + $n
		$incircle_a_y = $cangbaotu_y + $n
		$incircle_b_x = $cangbaotu_x - $n
		$incircle_b_y = $cangbaotu_y - $n
		
	//-----------------------????-------------------------------
		$m = 20
		$outcircle_c_x = $cangbaotu_x + $m
		$outcircle_c_y = $cangbaotu_y + $m
		$outcircle_d_x = $cangbaotu_x - $m
		$outcircle_d_y = $cangbaotu_y - $m
	
	
		
	//------------????ID---------------
		
		if $player_mapid != $cangbaotu_mapid
			BC( "screen", "player", -1, "The location indicated by the treasure map is not in this map!" )
			return
		endif
		
	//-----------????-----------
		if $player_x < $outcircle_d_x
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. Go east a little." )
			return
		endif
				
		if $player_x > $outcircle_c_x
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. Go west a little." )
			return
		endif
		
		if $player_y < $outcircle_d_y
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. Go south a little." )
			return
		endif		
		if $player_y > $outcircle_c_y
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. Go north a little." )
			return
		endif
		
	//------------------????--------------------------------------		
		
		if $player_x < $incircle_b_x
			BC( "screen", "player", -1, "According to the treasure map, the treasure is nearby!" )
			return
		endif
		
		if $player_x > $incircle_a_x
			BC( "screen", "player", -1, "According to the treasure map, the treasure is nearby!" )
			return
		endif
		
		
		
		if $player_y < $incircle_b_y
			BC( "screen", "player", -1, "According to the treasure map, the treasure is nearby!" )
			return
		endif
		
		if $player_y > $incircle_a_y
			BC( "screen", "player", -1, "According to the treasure map, the treasure is nearby!" )
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
		PlayEffect( -1, "common\wabao\tx_wabaoguangzhu.ini" )
		BC( "screen", "player", -1, "You have acquired the treasure recorded in the map!" )
	}