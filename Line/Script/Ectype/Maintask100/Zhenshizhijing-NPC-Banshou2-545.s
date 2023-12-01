	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Banshou2-NPC-545.s
	//		TaskID：金属板手2
	//
	//****************************************
	
	
	function OnRequest(){
	

	}
	
	function OnOption0(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		NPCAction( -1, 545, downend, 1 )
		OpenMask( 8, $ectype_ID )
		PlaySoundToPlayer( -1, "..\Data\Audio\UI\pull_handle.wav" )
		PlaySoundToPlayer( -1, "..\Data\Audio\UI\drop_stonebridge.wav" )
		SetEctypeVar( $ectype_ID, 39, 55 )
		$result = PlayEffect( -1, "common\luoshi\tx_luoshi.ini" ) 
		
		AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 135, 0 )
		//AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 136, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 137, 0 )
		//AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 138, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 139, 0 )
		
		AddMonsterByFloat( 51573, 1, $ectype_ID, 151, 135, 0 )
		//AddMonsterByFloat( 51573, 1, $ectype_ID, 151, 136, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 151, 137, 0 )
		//AddMonsterByFloat( 51573, 1, $ectype_ID, 151, 138, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 151, 139, 0 )
		
		AddMonsterByFloat( 51596, 1, $ectype_ID, 160, 142, 0 )
		//AddMonsterByFloat( 51596, 1, $ectype_ID, 159, 142, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 158, 142, 0 )
		//AddMonsterByFloat( 51596, 1, $ectype_ID, 157, 142, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 156, 142, 0 )
		//AddMonsterByFloat( 51596, 1, $ectype_ID, 155, 142, 0 )
		
		AddMonsterByFloat( 51573, 1, $ectype_ID, 160, 142, 0 )
		//AddMonsterByFloat( 51573, 1, $ectype_ID, 159, 142, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 158, 142, 0 )
		//AddMonsterByFloat( 51573, 1, $ectype_ID, 157, 142, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 156, 142, 0 )
		//AddMonsterByFloat( 51573, 1, $ectype_ID, 155, 142, 0 )
	
	}