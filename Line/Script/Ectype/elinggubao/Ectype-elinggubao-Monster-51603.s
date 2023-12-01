	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51603.s
	//		TaskID:RUSH?????2(??????????????)
	//
	//****************************************
	
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 10 )
		$count = $count + 1
		$rush1 = GetEctypeVar( -1 , 13 )
		
	//?????????????,???????????????(13???10??????????)
	if $rush1 != 11
		if $count < 30
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/30 Ghouls" )
			SetEctypeVar( -1 , 10 , $count )
		endif
		
		
		//??30???????????3?,?????
		if $count == 30
			StartEctypeTimer (-1,3 )
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/30 Ghouls" )
			BC( "screen" , "map" , $ectype_ID , "You have 10 seconds until Evil Werewolf Guards attack!" )
		endif
	else
	//?????????????????
		
		$count2 = GetEctypeVar( -1 , 43 )
		$count2 = $count2 + 1
		
		if $count2 < 30
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count2 , "/30 Ghouls" )
			SetEctypeVar( -1 , 43 , $count2 )
		endif
		
		if $count2 == 30
			//????10,?????????
			SetEctypeVar( -1 , 16 , 10 )
			SetEctypeVar( -1 , 43 , 30 )
			//????????
			AddMonsterByFloat( 51632, 1, $ectype_ID, 176, 180, 0 )
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count2 , "/30 Ghouls" )
			BC( "screen" , "map" , $ectype_ID , "Statue I activated!" )
		endif
		
		//??4???????????
		$a = GetEctypeVar( -1 , 16 )
		$b = GetEctypeVar( -1 , 17 )
		$c = GetEctypeVar( -1 , 18 )
		$d = GetEctypeVar( -1 , 19 )
		
		
		if $a == 10
			if $b == 10
				if $c == 10
					if $d == 10
						//???????
						StartEctypeTimer ( $ectype_ID , 2 )
						BC( "screen" , "map" , $ectype_ID , "All four statues have been activated. Maggot Queens will appear in 10 seconds!" )
					endif
				endif
			endif
		endif
	endif
	}