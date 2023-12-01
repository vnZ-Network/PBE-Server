	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-184.s
	//		TaskID 审判之石任务
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		AddStatus( -1, 6005, 1 )
		SetEctypeVar( $ectype_ID, 39, 56 )
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposy" )
		AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
		PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_taoist_diuhuo_hit.wav" )
		
	}
	
	function OnTaskDone(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		
		SetEctypeVar( $ectype_ID, 39, 3 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )		
		DeleteNPC( 541, $ectype_ID )
		AddNPC( 542, $ectype_ID )
		
		OpenMask( 1, $ectype_ID )
		SetPlayerVar( -1, 3256, 1 )

	}