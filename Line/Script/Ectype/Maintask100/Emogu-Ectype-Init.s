	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Emogu-Ectype-Init.s
	//		TaskID：恶魔谷副本初始化
	//
	//****************************************
	
	
	function OnCreate(){
		
		$ectype_ID = GetEctypeID( -1 , 261 )
		StartEctypeTimer( $ectype_ID, 3 )
		
	}
	
	function InitTimer(){
	
	    SetEctypeTimer( 1, 2, "EctypeTime1" )
	    SetEctypeTimer( 2, 2, "EctypeTime2" )
	    SetEctypeTimer( 3, 1, "EctypeTime3" )
  	   
	}


	function EctypeTime1(){

		$ectype_ID = GetEctypeID( -1 , 261 )
		SetEctypeVar( $ectype_ID, 39, 55 )
		
		AddMonsterByFloat( 51596, 1, $ectype_ID, 135, 92, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 135, 80, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 129, 86, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 141, 86, 0 )
		
		AddMonsterByFloat( 51596, 1, $ectype_ID, 130, 91, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 140, 91, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 140, 81, 0 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 130, 81, 0 )
		
		
		AddMonsterByFloat( 51573, 1, $ectype_ID, 135, 92, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 135, 80, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 129, 86, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 141, 86, 0 )
			
		AddMonsterByFloat( 51573, 1, $ectype_ID, 130, 91, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 140, 91, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 140, 81, 0 )
		AddMonsterByFloat( 51573, 1, $ectype_ID, 130, 81, 0 )
	}
	
	function EctypeTime2(){

		$ectype_ID = GetEctypeID( -1 , 261 )
		SetEctypeVar( $ectype_ID, 39, 35 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 135, 86, 0 )
		AddMonsterByFloat( 51574, 1, $ectype_ID, 135, 86, 0 )

	}
	
	function EctypeTime3(){

		$ectype_ID = GetEctypeID( -1 , 261 )
		$done = GetEctypeVar( $ectype_ID, 1 )
		if $done == 0
			AddMonsterByFloat( 51521, 1, $ectype_ID, 135, 78, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 135, 94, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 127, 86, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 143, 86, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 91, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 140, 81, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 81, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 139, 90, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 145, 60, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 125, 67, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 133, 70, 0 )
			
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 56, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 120, 51, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 51, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 118, 74, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 64, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 115, 62, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 108, 65, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 115, 106, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 110, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 149, 102, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 162, 95, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 169, 85, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 170, 94, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 168, 73, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 169, 83, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 144, 58, 0 )
			
			AddMonsterByFloat( 51521, 1, $ectype_ID, 135, 78, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 135, 94, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 127, 86, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 143, 86, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 91, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 140, 81, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 81, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 139, 90, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 145, 60, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 125, 67, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 133, 70, 0 )
			
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 56, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 120, 51, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 129, 51, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 118, 74, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 64, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 115, 62, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 108, 65, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 115, 106, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 124, 110, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 149, 102, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 162, 95, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 169, 85, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 170, 94, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 168, 73, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 169, 83, 0 )
			AddMonsterByFloat( 51521, 1, $ectype_ID, 144, 58, 0 )

		endif

	}
