
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Item-12775.s
	//		TaskID:  ????A ?
	//****************************************
	
	function OnUseItem(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Your bag is full, can't process" )
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $posx < 147
			BC( "screen" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			BC( "chat" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			return
		endif
		if $posx > 158
			BC( "screen" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			BC( "chat" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			return
		endif
		if $posy < 191
			BC( "screen" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			BC( "chat" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			return
		endif
		if $posy > 197
			BC( "screen" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			BC( "chat" , "player" , -1 , "Pillar of Spirit (Good) can be summoned near both sides of Gate of Virtue." )
			return
		endif
		$info = SubPlayerInfo( -1, "item", 12775 , 1 )
		if $info != 0
			return
		endif
		AddMonsterByFloat( 51503 , 1 , $ectype_id , 152 , 195, 0 )
		
		$mark = GetEctypeVar( -1 , 21 )
		if $mark > 0
			AddMonsterByFloat( 51505 , 1 , $ectype_id , 94 , 195, 0 )
			AddMonsterByFloat( 51506 , 1 , $ectype_id , 152 , 195, 0 )
			AddPlayerInfo( -1, "item", 12793 , 1 )
			SetPlayerVar( -1 , 54 , 1 )
			BC( "screen" , "player" , -1 , "Pillar of good and evil activated with a strong power wave which made Pillar of Spirit (Good)'s power pour to Gate of Virtue." )
			BC( "screen" , "player" , -1 , "Pillar of good and evil activated with a strong power wave which made Pillar of Spirit (Good)'s power pour to Gate of Virtue." )
		else
			SetEctypeVar( -1 , 21 , 1 )
		endif
		
	}