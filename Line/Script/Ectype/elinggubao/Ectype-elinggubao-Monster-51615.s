	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/18
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51615.s
	//		TaskID:??
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif


		//?????
		$mapx = GetPlayerInfo( -1, "mapx" )
		$mapy = GetPlayerInfo( -1, "mapy" )
		BC( "screen" , "map" , $ectype_id , "Maggots erupt from the dead Queen!" )
		AddLevelMonster( 51609 , $ectlevel , 10 , 10 , $ectype_id , $mapx , $mapy , 15 )
		
		
				
		$rush = GetEctypeVar( -1 , 47 )
		$rush = $rush + 1
		if $rush < 4
			BC( "screen" , "map" , $ectype_id , "You have destroyed ",$rush,"/4 Maggot Queens" )
			SetEctypeVar( -1 , 47 , $rush )
		endif
		
		if $rush == 4
			SetEctypeVar( -1 , 47 , 4 )
			AddNPC( 2143 , $ectype_id )
			BC( "screen" , "map" , $ectype_id , "All Maggot Queen have been destroyed" )
			BC( "screen" , "map" , $ectype_id , "The Crescent Statue appears!" )
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
		endif
	}