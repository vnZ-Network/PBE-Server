	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-Monster-60074.s
	//		TaskID: ?? ?????
	//
	//****************************************

	function OnDead(){
		
		$ectype_id = GetEctypeID( -1 , 242 )
		$monster_count = GetEctypeVar( -1 , 110 )
		$boss = GetEctypeVar( -1 , 6 )
		$monster_count = $monster_count + 1
		SetEctypeVar( -1 , 110 ,$monster_count )
		//------------?BOSS,--------------------
		if $monster_count <= 30
			AddMonster( 55074 , 1 , $ectype_id , 83 , 64 , 1 )
		else
			if $boss == 0
				SetEctypeVar( -1 , 6 , 1)
				AddMonsterByFloat( 55075 , 1 , $ectype_id , 214 , 152 , 1 )
				BC( "screen" , "map" , $ectype_id , "The Will of the Wraith Tome has appeared!" )
				BC( "chat" , "map" , $ectype_id , "The Will of the Wraith Tome has appeared!" )
			endif
		endif
	}