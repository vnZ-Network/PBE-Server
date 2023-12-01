	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/30
	//		Author:???
	//		TaskName:??????
	//		TaskID:Vip-shenyujiezhi-59324.s
	//
	//****************************************

function OnUseItem(){
   
	$pro = GetPlayerInfo( -1, "profession" )
	
	if $pro == 1			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38000, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained a Carnival Returner Diamond Pack." )
				return
			endif
	endif
	
	if $pro == 2			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38001, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained an Oracle Ring (Paladin)." )
				return
			endif
	endif
	
	if $pro == 3			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38002, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained an Oracle Ring (Slayer)." )
				return
			endif
	endif
	
	if $pro == 4			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38003, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained an Oracle Ring (Magus)." )
				return
			endif
	endif
	
	if $pro == 5			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38004, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained an Oracle Ring (Heretic)." )
				return
			endif
	endif

	if $pro == 6			
			$sub = SubPlayerInfo( -1, "item", 59324, 1 )
			if $sub == 0
				AddPlayerInfo( -1 , "item" , 38010, 1 )
				BC( "screen", "player", -1, "Congratulations, you have obtained an Oracle Ring (Summoner)." )
				return
			endif
	endif


}