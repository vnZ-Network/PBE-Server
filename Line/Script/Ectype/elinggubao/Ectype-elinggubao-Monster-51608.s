	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/16
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51608.s
	//		TaskID:RUSH??????
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 12 )
		$count = $count + 1
		
		if $count < 40
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/40 Maggots" )
			SetEctypeVar( -1 , 12 , $count )
		endif
		if $count == 40
			BC( "screen" , "map" , $ectype_ID , "You have destroyed " , $count , "/40 Maggots" )
			SetEctypeVar( -1 , 13 , 10 )
			SetEctypeVar( -1 , 22 , 1 )
		endif
		
	}