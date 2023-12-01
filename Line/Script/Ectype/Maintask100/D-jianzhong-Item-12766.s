	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-jianzhong-item-12766.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnUseItem(){

		$Accept = IsTaskAccept( -1 , 237 )
		if $Accept != 0
			return
		endif

		$mapid = GetPlayerInfo( -1 , "mapid" )
		$ectype_id = GetEctypeID( -1 , 255 )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $mapid != $ectype_id
			BC( "screen" , "player" , -1 , "Can only be summoned at Swordgrave " )
			BC( "chat" , "player" , -1 , "Can only be summoned at Swordgrave " )
			return
		endif
		
		if $ectype_id < 1
			return
		endif
		
		if $posx < 145
			BC( "screen" , "player" , -1 , "Can't summon Gramr Spirit Sword here" )
			BC( "chat" , "player" , -1 , "Can't summon Gramr Spirit Sword here" )
			return
		endif
		if $posx > 157
			BC( "screen" , "player" , -1 , "Can't summon Gramr Spirit Sword here"  )
			BC( "chat" , "player" , -1 , "Can't summon Gramr Spirit Sword here" )
			return
		endif
		if $posy < 140
			BC( "screen" , "player" , -1 , "Can't summon Gramr Spirit Sword here"  )
			BC( "chat" , "player" , -1 , "Can't summon Gramr Spirit Sword here" )
			return
		endif
		if $posy > 152
			BC( "screen" , "player" , -1 , "Can't summon Gramr Spirit Sword here"  )
			BC( "chat" , "player" , -1 , "Can't summon Gramr Spirit Sword here" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 12766 , 1 )
		if  $info != 0
			return
		endif
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		//AddPlayerInfo ( -1 , "item" , 12717 , 1 )
		BC( "chat" , "player" , -1 , "Gramr Spirit Sword is here!" )
		BC( "screen" , "player" , -1 , "Gramr Spirit Sword is here!" )
		AddNPC( 499 , -1  )
		SetPlayerVar( -1 , 3255 , 7 )

	}