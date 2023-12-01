	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/6
	//		Author:??
	//		TaskName:NPC-zhounianlipao.s
	//		TaskID:????????????npc
	//
	//****************************************
	
	function OnRequest(){
		
		
	}

//------------------------??:?????????----------------
	function OnOption0(){
		
		$item1 = GetPlayerInfo( -1 , "item" , 63727 )
		$item2 = GetPlayerInfo( -1 , "item" , 63728 )
		$item3 = GetPlayerInfo( -1 , "item" , 63729 )
		$item4 = GetPlayerInfo( -1 , "item" , 63730 )
		$item5 = GetPlayerInfo( -1 , "item" , 63731 )

//?????????		
		if $item1 <= 0
			BC( "dialogbox" , "player", -1, "You haven't collected the whole set of {#ffef1818=Anni-ver-sary-Cele-bration#}. You can't exchange for the {#ffef1818= Lucky Sticker#}!" )
			return
		endif
		
		if $item2 <= 0
			BC( "dialogbox" , "player", -1, "You haven't collected the whole set of {#ffef1818=Anni-ver-sary-Cele-bration#}. You can't exchange for the {#ffef1818= Lucky Sticker#}!" )
			return
		endif
		
		if $item3 <= 0
			BC( "dialogbox" , "player", -1, "You haven't collected the whole set of {#ffef1818=Anni-ver-sary-Cele-bration#}. You can't exchange for the {#ffef1818= Lucky Sticker#}!" )
			return
		endif
		
		if $item4 <= 0
			BC( "dialogbox" , "player", -1, "You haven't collected the whole set of {#ffef1818=Anni-ver-sary-Cele-bration#}. You can't exchange for the {#ffef1818= Lucky Sticker#}!" )
			return
		endif
		
		if $item5 <= 0
			BC( "dialogbox" , "player", -1, "You haven't collected the whole set of {#ffef1818=Anni-ver-sary-Cele-bration#}. You can't exchange for the {#ffef1818= Lucky Sticker#}!" )
			return
		endif

//????
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 2
			BC( "screen" , "player", -1, "You need 2 open Bag slots." )
			return
		endif
		
//???????	
		$result1 = SubPlayerInfo( -1 , "item" , 63727 , 1 )
		$result2 = SubPlayerInfo( -1 , "item" , 63728 , 1 )
		$result3 = SubPlayerInfo( -1 , "item" , 63729 , 1 )
		$result4 = SubPlayerInfo( -1 , "item" , 63730 , 1 )
		$result5 = SubPlayerInfo( -1 , "item" , 63731 , 1 )
		
		if $result1 != 0
			return
		endif
		
		if $result2 != 0
			return
		endif
		
		if $result3 != 0
			return
		endif
		
		if $result4 != 0
			return
		endif
		
		if $result5 != 0
			return
		endif
		
		
//?????????????
		AddPlayerInfo( -1 , "item" , 63735 , 1 )
		AddPlayerInfo( -1 , "item" , 59228 , 1 )
		
//?????
	$jizi = GetGlobalVar( 974 )						
	$jizi1 = $jizi + 1
	$jizi2 = SetGlobalVar( 974,$jizi1 )

		
}