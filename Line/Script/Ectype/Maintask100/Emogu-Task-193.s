	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Emogu-Task-193.s
	//		TaskID NPC��������
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 261 )
		
		
		DeleteMonster( $ectype_ID, 51573 )
		DeleteMonster( $ectype_ID, 51574 )
		
		SetEctypeVar( $ectype_ID, 0, 12 )
		SetEctypeVar( $ectype_ID, 39, 55 )

		AddMonsterByFloat( 51596, 1, $ectype_ID, 135, 92, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 135, 80, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 129, 86, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 141, 86, 0 )

		AddMonsterByFloat( 51573, 1, $ectype_ID, 135, 92, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 135, 80, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 129, 86, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 141, 86, 0 )
		
	}