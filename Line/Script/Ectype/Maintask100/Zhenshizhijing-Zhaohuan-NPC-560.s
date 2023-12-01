	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Zhaohuan-NPC-560.s
	//		TaskID:???BOSS???3
	//
	//****************************************
	
	function OnRequest(){
	
		$accept = IsTaskAccept( -1, 186 )
		$ectype_ID = GetEctypeID( -1 , 253 )
		$isNewTask = GetEctypeVar( $ectype_ID, 6 )
		if $accept != 0
			BC( "screen", "player", "-1", "Please receive the quest Seven Sins from Lost Soul Pillar" )
			return		
		endif
		
		if $isNewTask != 1
			BC( "screen", "player", "-1", "The quest Seven Sins has failed, please drop it and receive a new quest" )
			return
		endif
		
	}
	
	function OnOption0(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		$step = GetEctypeVar( $ectype_ID, 117 )
		$max = 7 - $step
		$random = RandomNumber( 1, $max )
		$varIndex = 109 + $random
		$monsterID = GetEctypeVar( $ectype_ID, $varIndex )
		
		OpenMask( 5, $ectype_ID )
		$result = AddMonsterByFloat( $monsterID, 1, $ectype_ID, 199, 190, 0 )
		
		if $result == 0
			$varLastIndex = 116 - $step
			$temp = GetEctypeVar( $ectype_ID, $varLastIndex )
			SetEctypeVar( $ectype_ID, $varIndex, $temp )
			SetEctypeVar( $ectype_ID, $varLastIndex , $monsterID )		
			$step += 1
			SetEctypeVar( $ectype_ID, 117, $step )
			#flag = "b"
			SetEctypeVar( $ectype_ID, 100, #flag )
			StartEctypeTimer( $ectype_ID, 0 )
		else
			CloseMask( 5, $ectype_ID )
		endif
		

	}
