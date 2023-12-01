//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:D-item-59270.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnUseItem(){

		$Accept = IsTaskAccept( -1 , 68 )
		if $Accept != 0
			return
		endif
		
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
//		$ectype_id = GetEctypeID( -1 , 255 )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $mapid != 93
			BC( "screen" , "player" , -1 , "Unable to summon in this zone." )
			BC( "chat" , "player" , -1 , "Unable to summon in this zone." )
			return
		endif
		
		if $posx < 240
			BC( "screen" , "player" , -1 , "Unable to summon the Giant Dragon Selene here." )
			BC( "chat" , "player" , -1 , "Unable to summon the Giant Dragon Selene here." )
			return
		endif
		if $posx > 250
			BC( "screen" , "player" , -1 , "Unable to summon the Giant Dragon Selene here."  )
			BC( "chat" , "player" , -1 , "Unable to summon the Giant Dragon Selene here." )
			return
		endif
		if $posy < 215
			BC( "screen" , "player" , -1 , "Unable to summon the Giant Dragon Selene here."  )
			BC( "chat" , "player" , -1 , "Unable to summon the Giant Dragon Selene here." )
			return
		endif
		if $posy > 225
			BC( "screen" , "player" , -1 , "Unable to summon the Giant Dragon Selene here."  )
			BC( "chat" , "player" , -1 , "Unable to summon the Giant Dragon Selene here." )
			return
		endif
		
//		$info = SubPlayerInfo ( -1 , "item" , 59270 , 1 )
//		if  $info != 0
//			return
//		endif		
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		//AddPlayerInfo ( -1 , "item" , 12717 , 1 )
		BC( "chat" , "player" , -1 , "Danger! The Giant Dragon Selene has been summoned!" )
		BC( "screen" , "player" , -1 , "Danger! The Giant Dragon Selene has been summoned!" )
		AddMonsterByFloat( 59134, 1, 93, 245, 220, 0, -1 )
	}