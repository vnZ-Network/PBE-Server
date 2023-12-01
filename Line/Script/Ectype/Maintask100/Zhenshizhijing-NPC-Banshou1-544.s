	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Banshou1-NPC-544.s
	//		TaskID：金属板手1
	//
	//****************************************
	
	
	function OnRequest(){
	

	}
	
	function OnOption0(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		NPCAction( -1, 544, down, 1 )	
		OpenMask( 7, $ectype_ID )
		PlaySoundToPlayer( -1, "..\Data\Audio\UI\pull_handle.wav" )
		PlaySoundToPlayer( -1, "..\Data\Audio\UI\drop_stonebridge.wav" )
		SetEctypeVar( $ectype_ID, 39, 7 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 184, 146, 0 )
		$result = PlayEffect( -1, "common\luoshi\tx_luoshi.ini" )
	
	}
	