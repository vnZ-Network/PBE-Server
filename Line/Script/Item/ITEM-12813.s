 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:ITEM-44101.s
	//		TaskID:????
	//****************************************
	
	//??3322
	
	function OnUseItem(){
		//??? 186,89
		$a = GetPlayerVar( -1, 3322 )
		$map = GetPlayerInfo( -1, "mapid" )
		$x1 = GetPlayerInfo( -1, "mapposx" )
		$y1 = GetPlayerInfo( -1, "mapposy" )
		$x2 = GetPlayerInfo( -1, "mapposx" )
		$y2 = GetPlayerInfo( -1, "mapposy" )
		
		if $a == 0
			if $map != 44
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $x1 != 204
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $y1 != 168
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return			
			endif
			
					BC( "screen", "player", -1, "Mysterious energy was activated. " )
					PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
					SetPlayerVar( -1, 3322, 1 )
					return
		endif	
		
		if $a == 1
			if $map != 44
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $x2 < 180
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $x2 > 190
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $y2 < 85
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
			if $y2 > 95
					BC( "screen", "player", -1, "Wrong coordinates, can not be activated." )
					return
			endif
			
					BC( "screen", "player", -1, "Mysterious energy was activated. " )
					PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1 )
					PlayEffect(-1 ,"skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 1 )
					AddMonsterByFloat( 30271 , 1 , $map , 186 , 85 , 0 , 0 ,90 )
					SetPlayerVar( -1, 3322, 2 )
					return
		endif
		
		if $a == 2 
					BC( "screen", "player", -1, "Mysterious energy was fully activated!" )
	        return
	  endif	
	}
						
		