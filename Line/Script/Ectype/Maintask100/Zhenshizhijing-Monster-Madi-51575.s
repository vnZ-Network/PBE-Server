	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Madi-Monster-51575.s
	//		TaskID 怪物马蒂
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )	
		AddNPC( 547, $ectype_ID )
		DeleteMonster( $ectype_ID, 51576 )
		DeleteMonster( $ectype_ID, 51577 )

		SetEctypeVar( $ectype_ID, 40, 7 )
		SetEctypeVar( $ectype_ID, 62, 1 )
		StartEctypeTimer( $ectype_ID, 9 )

	}