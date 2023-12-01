
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Monster-51625.s
	//		TaskID:2
	//****************************************

	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 24 )
		$cn = GetEctypeVar( -1 , 25 )
		
		$a = GetEctypeVar( -1 , 26 )
		$b = GetEctypeVar( -1 , 27 )
		$c = GetEctypeVar( -1 , 28 )
		
		$b = $b + 1 
		SetEctypeVar( -1 , 27 , $b )
		
		
		if $cn == 0
			if $a == $b
				if $a == $c
					if $count == 100
						BC( "screen" , "map" , $ectype_id , "You solved the puzzle! A secret room has opened!" )
						OpenMask( 7 , $ectype_id )
						SetEctypeVar( -1 , 25 , 1 )
						return
					endif
				endif
			endif
		endif	
					
		BC( "screen" , "map" , $ectype_id , "Psi, Delta, and Sigma energies are at - Psi: ",$a,"Delta: ",$b,"Sigma: ",$c," Try to keep them balanced!" )
	
	
	}	