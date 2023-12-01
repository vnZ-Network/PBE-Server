	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/05
	//		Author:???
	//		TaskName:Ectype-yijiwaiwei-NPC-486.s
	//		TaskID: ?????
	//
	//****************************************
	
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 237 )
		$mark = GetEctypeVar($ectype_id , 1 )
		if $mark == 1
			DisableNpcOption(0)
		endif
		$ectype_id = GetEctypeID( -1 , 237 )
		$monster_count = GetEctypeVar( -1 , 112 )
		if $monster_count < 327
			DisableNpcOption(1)
		endif
	}
	
	function OnOption0(){
	
		$ectype_id = GetEctypeID( -1 , 237 )
		$mark = GetEctypeVar($ectype_id , 1 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		if $mark == 1
			return
		endif
		BC( "screen" , "map" , $ectype_id , "The 1st wave of Quetzalcoatl's Guard is coming.")
		BC( "chat" , "map" , $ectype_id , "The 1st wave of Quetzalcoatl's Guard is coming." )
		AddLevelMonster( 55200 , 48 , $lv , 5 , $ectype_id , 57 , 60 , 1 )
		AddLevelMonster( 55200 , 48 , $lv , 5 , $ectype_id , 60 , 61 , 1 )
		AddLevelMonster( 55200 , 48 , $lv , 5 , $ectype_id , 63 , 57 , 1 )
		SetEctypeVar($ectype_id , 1 , 1 )
	}
	
	function OnOption1(){
	
		$ectype_id = GetEctypeID( -1 , 237 )
		$monster_count = GetEctypeVar( -1 , 112 )
		if $monster_count < 327
			return
		endif
		DeleteNPC( 486 , $ectype_id )
		AddMonsterByFloat( 55199, 1, $ectype_id , 188, 166 , 0 )
		
	}