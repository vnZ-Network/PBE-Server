
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Monster-51629.s
	//		TaskID:6
	//****************************************

	function OnDead(){
	
		$ectype_id = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 24 )
		$count = $count + 1 
		$cn = GetEctypeVar( -1 , 25 )
		$a = GetEctypeVar( -1 , 26 )
		$b = GetEctypeVar( -1 , 27 )
		$c = GetEctypeVar( -1 , 28 )
		$a = $a + 1 
		
		if $cn == 0
			if $count < 100
				BC( "screen" , "player" , -1 , "Soul energy gathers",$count,"%" )
				BC( "chat" , "player" , -1 , "Soul energy gathers",$count,"%" )
				SetEctypeVar( -1 , 24 ,$count )
			else
				if $a == $b
					if $a == $c
						BC( "screen" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,", the same number of doors open" )
						BC( "chat" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,", the same number of doors open" )
						OpenMask( 7 , $ectype_id )
						SetEctypeVar( -1 , 25 , 1 )
					else
						BC( "screen" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,",a different number of doors close" )
						BC( "chat" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,",a different number of doors close" )
					endif
				else
					BC( "screen" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,",a different number of doors close" )
					BC( "chat" , "player" , -1 , "? Slay",$a,",ë Slay ",$b,",î Slay",$c,",a different number of doors close" )
				endif
			endif
		endif
	
	}	