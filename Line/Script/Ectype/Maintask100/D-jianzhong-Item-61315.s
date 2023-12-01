	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-jianzhong-item-61315.s
	//		TaskID:  XXX
	//
	//****************************************
	
	//3255 61315????
	
	function OnUseItem(){

		$Accept = IsTaskAccept( -1 , 233 )
		if $Accept != 0
			return
		endif

		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$ectype_id = GetEctypeID( -1 , 255 )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $mapid != $ectype_id
			BC( "screen" , "player" , -1 , "Can only be used at Swordgrave" )
			BC( "chat" , "player" , -1 , "Can only be used at Swordgrave" )
			return
		endif
		
		if $ectype_id < 1
			return
		endif
		
		if $posx < 137
			BC( "screen" , "player" , -1 , "Can't use it here" )
			BC( "chat" , "player" , -1 , "Can't use it here" )
			return
		endif
		if $posx > 167
			BC( "screen" , "player" , -1 , "Can't use it here"  )
			BC( "chat" , "player" , -1 , "Can't use it here" )
			return
		endif
		if $posy < 132
			BC( "screen" , "player" , -1 , "Can't use it here"  )
			BC( "chat" , "player" , -1 , "Can't use it here" )
			return
		endif
		if $posy > 162
			BC( "screen" , "player" , -1 , "Can't use it here"  )
			BC( "chat" , "player" , -1 , "Can't use it here" )
			return
		endif
				
		//61315????
		$info = GetPlayerVar( -1 , 3255 )
		
		if $info > 5
			BC( "screen" , "player" , -1 , "All Spirit Swords are unsealed!" )
			BC( "chat" , "player" , -1 , "All Spirit Swords are unsealed!" )
			return
		endif
		
		//61315??????
		$info1 = SubPlayerInfo( -1, "item", 61315 , 1  )
		if $info1 != 0
			return
		endif
		
		if $info == 0
			$revalue = AddNPC( 533, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 1 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 156, 139, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
		endif
		
		if $info == 1
			$revalue = AddNPC( 534, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 2 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 157, 141, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
		endif
		
		if $info == 2
			$revalue = AddNPC( 535, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 3 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 158, 143, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )			
		endif
		
		if $info == 3
			$revalue = AddNPC( 536, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 4 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 156, 152, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
		endif
		
		if $info == 4
			$revalue = AddNPC( 537, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 5 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 154, 153, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
		endif
		
		if $info == 5
			$revalue = AddNPC( 538, -1 )
//			if $revalue != 0
//				return
//			endif
			SetPlayerVar( -1 , 3255 , 6 )
			SetEctypeVar( $ectype_id , 39 , 73 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 151, 153, 0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "chat" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			BC( "screen" , "player" , -1 , "Transfer the spirit sword's energy to the Tyr Spirit Sword to unseal it!" )
			
		endif
		
		
	
	}

//	???500NPC	
//	function LocalDone(){
//
//		$add_exp = 5000000
//		$add_money = 5000
//		
//		//????
//		AddPlayerInfo( -1, "exp", $add_exp )
//		AddPlayerInfo( -1, "money", $add_money )
//		
//		//??????
//		SetTaskDone( -1 , 233 )
//		BC( "screen" , "player" , -1 , "GUID:04451000024" )
//		BC( "chat" , "player" , -1 , "GUID:04451000025" )
//		AcceptTask( -1 , 234 )
//		
//		$ectype_ID = GetEctypeID( -1, 255 )
//		$ectypetimer2_num = GetEctypeVar( $ectype_ID , 10 )
//		
//		StartEctypeTimer( -1 , 255, 1 )
//		StartEctypeTimer( -1 , 255, 2 )
//		
//	}