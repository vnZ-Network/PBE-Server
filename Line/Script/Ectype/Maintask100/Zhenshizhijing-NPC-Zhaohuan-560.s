	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Zhaohuan-NPC-560.s
	//		TaskID:???BOSS???2
	//
	//****************************************
	
	function OnRequest(){
	
	
	}
	
	function OnOption0(){
		
		$accept1 = IsTaskAccept( -1, 186 )
		$accept2 = IsTaskAccept( -1, 3317 )
		if $accept1 != 0
			if $accept2 != 0
				BC( "dialogbox", "player", "-1", "Please receive the quest Seven Sins from Lost Soul Pillar" )
				return
			endif
		endif

		$ectype_ID = GetEctypeID( -1 , 253 )
		$isNewTask = GetEctypeVar( $ectype_ID, 6 )
		if $isNewTask != 1
			BC( "dialogbox", "player", "-1", "The quest Seven Sins has failed, please drop it and receive a new quest" )
			return
		endif
		
		$isLock = GetEctypeVar( $ectype_ID, 23 )
		if $isLock == 1
			BC( "dialogbox", "player", "-1", "The boss Seven Sins is still alive" )
			return
		endif
		
		OpenMask( 5, $ectype_ID )
		SetEctypeVar( $ectype_ID, 39, 6 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 196, 193, 0 )
		PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_shengminghuifu_fire.wav" )
		SetEctypeVar( $ectype_ID, 15, 2 )
		SetEctypeVar( $ectype_ID, 23, 1 )
		StartEctypeTimer( $ectype_ID, 1 )	

	}
