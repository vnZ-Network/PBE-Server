	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-GlamoSword-Item-12790.s
	//		TaskID ???????
	//
	//****************************************
	
	function OnUseItem(){
	
		$ectype_ID = GetEctypeID( -1 , 261 )
		$player_id = GetPlayerID()
		SetEctypeVar( $ectype_ID, 119, $player_id )
		SetPlayerVar( -1, 3246, 0 )

		//$ectype_ID1 = GetEctypeID( -1 , 253 )
		//SetPlayerVar( -1, 3256, 0 )
		//SetEctypeVar( $ectype_ID1, 7, 0 )

		//PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		//PlaySoundToMap( $ectype_ID, "Data\Audio\Scene\scene001.wav" )
		$ectype_ID = GetEctypeID( -1 , 253 )
		$accept = IsTaskAccept( -1 , 195 )
		if $accept != 0
			BC( "chat", "player", -1, "Please receive the quest Sighing Spirit first" )
			return
		endif
		
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		if $posX < 174
			BC( "screen", "player", -1, "Can't be used only in front of Weeping Wall" )
			return
		endif
		if $posX > 195
			BC( "screen", "player", -1, "Can't be used only in front of Weeping Wall" )
			return
		endif
		
		if $posY < 79
			BC( "screen", "player", -1, "Can't be used only in front of Weeping Wall" )
			return
		endif
		if $posY > 84
			BC( "screen", "player", -1, "Can't be used only in front of Weeping Wall" )
			return
		endif
		
		if $accept == 0
			$num = GetPlayerInfo( -1, "item", 12791 )
			if $num == 0
				$result = PlayEffect( -1, "common\luoshi\tx_luoshi.ini" )
				PlayEffect( -1, "skill\Taoist\bingfengzhou\fire\tx_taoist_bingfengzhou_fire.ini" )
				PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_knight_zhanli_hit.wav" )
				PlayAction( -1, "Combat.attackrandom", 1, 3 )
				SetEctypeVar( $ectype_ID, 40, 2 )
				StartEctypeTimer( $ectype_ID, 9 )
			endif
		endif
		
	}
