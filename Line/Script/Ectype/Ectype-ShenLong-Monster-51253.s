   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-ShenLong-Monster-51253.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 187 )
		
		//??????
		$ectype_type = GetEctypeVar( -1, 110 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 110, $ectype_type )
		
		//------------
		$ectype_var = GetEctypeVar( -1, 119 )
		$ectype_var = $ectype_var + 1
		SetEctypeVar( -1, 119, $ectype_var )
		$ectype_var = GetEctypeVar( -1, 119 )
		BC("screen", "map", $ectype_ID, "Ancient Drakes: ",$ectype_var,"/90")
		if $ectype_var >= 90
			SetEctypeVar( -1, 1, 1 )
			SetEctypeVar( -1, 0, 1 )
			BC("screen", "map", $ectype_ID, "Ancient Drakes have all been cleared! The Dragontongue Books can be activated now.")
			BC("chat", "map", $ectype_ID, "Ancient Drakes have all been cleared! The Dragontongue Books can be activated now.")
		endif
		
		//??10?
		$ectype_type = GetEctypeVar( -1, 110 )
//		if $ectype_type < 40
//			$ectype_type = 40 - $ectype_type
//			BC("screen", "map", $ectype_ID, "GUID:04216000003",$ectype_type,"GUID:04216000004")
//		endif
		if $ectype_type == 10
			AddMonster( 51252, 1, $ectype_ID, 57, 68 , 0 )
			SetEctypeVar( -1, 110, 0 )
			BC("screen", "map", $ectype_ID, "A Dragontongue Guardian appears!")
		endif
		
	}