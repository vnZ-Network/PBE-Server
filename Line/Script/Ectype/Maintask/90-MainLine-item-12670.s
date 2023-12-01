	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:90-MainLine-item-12670.s
	//		TaskID:  ???
	//
	//****************************************
	
	
	function OnUseItem(){



		$Accept = IsTaskAccept( -1 , 153 )
		if $Accept != 0
			return
		endif

		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "You can only summon in the Khufu Desert." )
			return
		endif
		if $posx < 130
			BC( "screen" , "player" , -1 , "You can only use the flamecore near the totem of Serra Tribe." )
			return
		endif
		if $posx > 144
			BC( "screen" , "player" , -1 , "You can only use the flamecore near the totem of Serra Tribe." )
			return
		endif
		if $posy < 205
			BC( "screen" , "player" , -1 , "You can only use the flamecore near the totem of Serra Tribe." )
			return
		endif
		if $posy > 224
			BC( "screen" , "player" , -1 , "You can only use the flamecore near the totem of Serra Tribe." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 12670 , 1 )
		if  $info != 0
			return
		endif		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddPlayerInfo ( -1 , "item" , 12717 , 1 )
		BC( "screen" , "player" , -1 , "The flamecore alerted the Serra Tribe Guard. Kill them and continue to use the flamecore." )
		AddMonsterByFloat( 55106 , 3 , $mapid, $posx , $posy , 0 , -1  )
		BC( "chat" , "player" , -1 , "You used the flamecore and the totem of Serra Tribe alerted the Guard. Kill them and continue to use the flamecore." )
		
		
	
	}