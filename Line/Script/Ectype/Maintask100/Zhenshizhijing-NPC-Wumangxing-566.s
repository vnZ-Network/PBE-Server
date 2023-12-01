	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Wumangxing-NPC-566.s
	//		TaskID:???NPC4
	//
	//****************************************
	
	function OnRequest(){
	
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		if $posX < 200
			if $posX > 213
				BC( "screen", "player", "-1", "Hey, you're too far away from me, get closer" )
				return
			endif
		endif
		
		if $posY < 146
			if $posY > 160
				BC( "screen", "player", "-1", "Hey, you're too far away from me, get closer" )
				return
			endif
		endif
		
		$value = GetPlayerVar( -1, 3256 )
		if $value >= 3
			BC( "screen", "player", "-1", "You have finished this part of the quest" )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 , 253 )	
		$isCharge = GetEctypeVar( $ectype_ID, 0 )
		if $isCharge != 1
			BC( "screen", "player", "-1", "Light Rift is not activated yet" )
			return
		endif
		
		$switch = GetEctypeVar( $ectype_ID, 4 )
		if $switch != 1
			BC( "screen", "player", "-1", "You have clicked there already" )
			return
		endif
		
		$switch = GetEctypeVar( $ectype_ID, 33 )
		if $switch == 1
			BC( "screen", "player", "-1", "Light Rift is cooling down" )
			return
		endif
		
		$varIndex = GetEctypeVar( $ectype_ID, 21 )
		$positionNumber = GetEctypeVar( $ectype_ID, $varIndex )
		
		if $positionNumber != 4
			
			$error = GetEctypeVar( $ectype_ID, 22 )
			if $error == 0
				BC( "screen", "player", "-1", "Starting order wrong" )
				PlayEffect( -1, "skill\Monster\boss\shenshengbingdong\fire\tx_shenshengbingdong_fire.ini" )
				AddStatus( -1, 10675, 1 )
				SetEctypeVar( $ectype_ID, 39, 8 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
				PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_anzhinu_hit.wav" )
				SetEctypeVar( $ectype_ID, 22, 1 )
				SetEctypeVar( $ectype_ID, 33, 1 )
				SetEctypeVar( $ectype_ID, 40, 1 )
				StartEctypeTimer( $ectype_ID, 9 )
			endif
			
			if $error == 1
				BC( "screen", "player", "-1", "Starting order wrong" )
				PlayEffect( -1, "skill\Monster\boss\shenshengbingdong\fire\tx_shenshengbingdong_fire.ini" )
				AddStatus( -1, 10675, 1 )
				SetEctypeVar( $ectype_ID, 39, 8 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
				PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_anzhinu_hit.wav" )
				SetEctypeVar( $ectype_ID, 22, 2 )
				SetEctypeVar( $ectype_ID, 33, 1 )
				SetEctypeVar( $ectype_ID, 40, 1 )
				StartEctypeTimer( $ectype_ID, 9 )
			endif
			
			if $error == 2
				BC( "screen", "player", "-1", "Starting order wrong" )
				PlayEffect( -1, "skill\Monster\boss\shenshengbingdong\fire\tx_shenshengbingdong_fire.ini" )
				AddStatus( -1, 10675, 1 )
				SetEctypeVar( $ectype_ID, 39, 14 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
				PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_anzhinu_hit.wav" )
				SetEctypeVar( $ectype_ID, 16, 0 )
				SetEctypeVar( $ectype_ID, 17, 0 )
				SetEctypeVar( $ectype_ID, 18, 0 )
				SetEctypeVar( $ectype_ID, 19, 0 )
				SetEctypeVar( $ectype_ID, 20, 0 )
				SetEctypeVar( $ectype_ID, 21, 0 )
				SetEctypeVar( $ectype_ID, 22, 0 )
				SetEctypeVar( $ectype_ID, 0, 0 )
				SetEctypeVar( $ectype_ID, 1, 0 )
				SetEctypeVar( $ectype_ID, 2, 0 )
				SetEctypeVar( $ectype_ID, 3, 0 )
				SetEctypeVar( $ectype_ID, 4, 0 )
				SetEctypeVar( $ectype_ID, 5, 0 )
				SetEctypeVar( $ectype_ID, 7, 0 )
				SetEctypeVar( $ectype_ID, 33, 1 )
				SetEctypeVar( $ectype_ID, 40, 1 )
				StartEctypeTimer( $ectype_ID, 9 )
			endif		
			return
		endif
		
		SetEctypeVar( $ectype_ID, 39, 83 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
		$result = AddMonsterByFloat( 51590, 1, $ectype_ID, 204, 158, 0 )
		PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		BC( "screen", "player", "-1", "Starting successfully" )
		
		$varIndex = $varIndex + 1
		SetEctypeVar( $ectype_ID, 21, $varIndex )
		SetEctypeVar( $ectype_ID, 4, 0 )
		if $varIndex == 21
			$ectype_ID = GetEctypeID( -1 , 253 )
			OpenMask( 9, $ectype_ID )
			SetPlayerVar( -1, 3256, 3 )
			$result = PlayEffect( -1, "common\luoshi\tx_luoshi.ini" )
			//$result = PlayEffect( -1, "common\story\seelbreak2\fire\tx_seelbreak2_fire.ini" )
			//SetEctypeVar( $ectype_ID, 39, 2 )
			//AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 153, 0 )
			PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_common_fuhuo_01.wav" )
			SetEctypeVar( $ectype_ID, 40, 3 )
			StartEctypeTimer( $ectype_ID, 9 )
		endif
		
	}
