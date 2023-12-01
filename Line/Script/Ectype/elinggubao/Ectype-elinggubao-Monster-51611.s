	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51611.s
	//		TaskID:??????rush????
	//
	//****************************************
	
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 258 )
		

	//?????????????????
		
		$count2 = GetEctypeVar( -1 , 44 )
		$count2 = $count2 + 1
		
		if $count2 < 30
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count2 , "/30 Shadowy Phantoms" )
			SetEctypeVar( -1 , 44 , $count2 )
		endif
		
		if $count2 == 30
			//????10,?????????
			SetEctypeVar( -1 , 17 , 10 )
			SetEctypeVar( -1 , 44 , 30 )
			//????????
			AddMonsterByFloat( 51632, 1, $ectype_ID, 176, 172, 0 )
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count2 , "/30 Shadowy Phantoms" )
			BC( "screen" , "map" , $ectype_ID , "Statue II activated!" )
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
	}