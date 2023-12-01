	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/04
	//		Author:???
	//		TaskName:Ectype-ShenLong-NPC-2015.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$ectype_ID = GetEctypeID( -1, 187 )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 10
			DisableNpcOption(0)
		endif
		
		$ectype_type1 = GetEctypeVar( -1, 0 )
		if $ectype_type1 == 0
			DisableNpcOption(0)
		endif
		
	}
	
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1 ,187 )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 10
			BC( "dialogbox", "player", -1, "The Green Dragontongue Book has been activated!" )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 12650 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Activating the Green Dragontongue Book requires Ancient Dragon's Green Blood." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12650, $Item )
		if $SubItem != 0
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 115 )
		$left = 10 - $ectype_type
		if $Item > $left
			$Item = $left
		endif
		$ectype_type = $ectype_type + $Item
		SetEctypeVar( -1, 115, $ectype_type )
		#name = GetPlayerInfo(-1,"name")
		
		if $ectype_type < 10
			$ectype_left = 10 - $ectype_type
			BC( "screen", "map", $ectype_ID, "The player, ",#name," has contributed ",$Item," Ancient Dragon's Green Blood. ",$ectype_left," more drops of  Dragon's Blood are needed." )
		endif
		
		//??????????
		$ectype_var = GetEctypeVar( -1, 117 )
		$monster_fieldlevel = GetEctypeVar( -1, 90 )
		
		if $ectype_type >= 10
			BC( "screen", "map", $ectype_ID, "The player, ",#name," has contributed ",$Item," Ancient Dragon's Green Blood. The Green Dragontongue Book has been activated!" )
			$ectype_type1 = GetEctypeVar( -1, 116 )
			if $ectype_type1 == 0
				SetEctypeVar( -1, 116, 3 )
			else
				$ectype_type1 = $ectype_type1 / 10
				if $ectype_type1 == 0
					$var = GetEctypeVar( -1, 116 )
					if $var == 1
						SetEctypeVar( -1, 116, 13 )
					endif
					if $var == 2
						SetEctypeVar( -1, 116, 23 )
					endif
				else
					$var = GetEctypeVar( -1, 116 )
					if $var == 12
						if $monster_fieldlevel > 0
							AddLevelFieldMonster( 51256 ,16, $ectype_var, 16,$monster_fieldlevel,1 , $ectype_ID , 54, 48, 0 )
						else
							AddLevelMonster( 51256, 16, $ectype_var, 1, $ectype_ID, 54, 48, 0 )
						endif
						BC( "screen", "map", $ectype_ID, "The Blue Dragon Queen Reamlis appears!" )
						PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
					endif
					if $var == 21
						if $monster_fieldlevel > 0
							AddLevelFieldMonster( 51260 ,16, $ectype_var, 16,$monster_fieldlevel,1 , $ectype_ID , 54, 48, 0 )
						else
							AddLevelMonster( 51260, 16, $ectype_var, 1, $ectype_ID, 54, 48, 0 )
						endif
						BC( "screen", "map", $ectype_ID, "The Red Dragon Queen Edrahm appears!" )
						PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
					endif
				endif
			endif
		endif
		
	}