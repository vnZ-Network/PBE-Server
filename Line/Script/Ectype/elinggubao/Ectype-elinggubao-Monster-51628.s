
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Monster-51628.s
	//		TaskID:5
	//****************************************

	
	function OnDead(){
	
		$ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 24 )
		$count = $count + 1 
		//?????
		$cn = GetEctypeVar( -1 , 25 )
		
		$a = GetEctypeVar( -1 , 26 )
		$b = GetEctypeVar( -1 , 27 )
		$c = GetEctypeVar( -1 , 28 )

		if $cn == 0
			if $count < 100
				BC( "screen" , "map" , $ectype_id , "The energy of the Script Spirits are at ",$count,"%" )
				BC( "chat" , "map" , $ectype_id , "The energy of the Script Spirits are at ",$count,"%" )
				SetEctypeVar( -1 , 24 ,$count )
			else	
				if $a == $b
					if $a == $c
						BC( "screen" , "map" , $ectype_id , "You solved the puzzle! A secret room has opened!" )
						OpenMask( 7 , $ectype_id )
						SetEctypeVar( -1 , 25 , 1 )
					else
						BC( "screen" , "map" , $ectype_id , "The energy of the Script Spirits is full! Make Psi, Delta, and Sigma equal in energy and a secret will reveal itself!" )	
						SetEctypeVar( -1 , 24 , 100 )
					endif
				else
					BC( "screen" , "map" , $ectype_id , "The energy of the Script Spirits is full! Make Psi, Delta, and Sigma equal in energy and a secret will reveal itself!" )	
					SetEctypeVar( -1 , 24 , 100 )
				endif
			endif
		endif
	
	}	