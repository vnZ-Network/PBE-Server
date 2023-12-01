	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/08/05
	//		Author：司文博
	//		TaskName：90-Milya-Ectype-242-enter.s
	//		TaskID：进入米莉亚
	//
	//****************************************
	//0 玩家开启大门
	//1 玩家召唤米莉亚
	function OnCreate(){
		
	}
	
	function InitTimer(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		SetEctypeTimer( 1 , 2 , "EctypeTime0" )
		SetEctypeTimer( 2 , 2 , "EctypeTime1" )
	}

	function EctypeTime0(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		$a = GetEctypeVar( $ectype_id , 0 )
		$b = GetEctypeVar( $ectype_id , 1 )
		$c = GetEctypeVar( $ectype_id , 7 )
		$d = GetEctypeVar( $ectype_id , 8 )
		
		if $a == 1
			OpenMask( 1 , $ectype_id )
		endif
		if $b == 0
			DeleteNPC( 235 , -1 )
		endif
		
		
		if $c == 0
			DeleteNPC( 384 , -1 )
		else
			DeleteNPC( 383 , -1 )
		endif
		if $d == 0
			DeleteNPC( 388 , -1 )
		else
			DeleteNPC( 385 , -1 )
		endif
		
		
	}

	function EctypeTime1(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		
		$a = GetEctypeVar( $ectype_id , 112 )
		$a = $a + 1
		if $a == 1
			AddMonsterByFloat( 55109 , 1 , $ectype_id , 214, 76 , 0 )
			SetEctypeVar( $ectype_id , 112 , $a )
			StartEctypeTimer ($ectype_id , 2 )
		endif
		if $a == 2
			AddMonsterByFloat( 55109 , 1 , $ectype_id , 214, 79 , 0 )
			SetEctypeVar( $ectype_id , 112 , $a )
			StartEctypeTimer ($ectype_id , 2 )
		endif
		if $a == 3
			AddMonsterByFloat( 55109 , 1 , $ectype_id , 214, 83 , 0 )
			SetEctypeVar( $ectype_id , 112 , $a )
			StartEctypeTimer ($ectype_id , 2 )
		endif
		if $a == 4
			AddMonsterByFloat( 55109 , 1 , $ectype_id , 214, 88 , 0 )
			SetEctypeVar( $ectype_id , 112 , $a )
			StartEctypeTimer ($ectype_id , 2 )
		endif
		if $a == 5
			AddMonsterByFloat( 55109 , 1 , $ectype_id , 214, 94 , 0 )
			SetEctypeVar( $ectype_id , 112 , $a )
			OpenMask( 1 , $ectype_id )
		endif
		
		
		
		
	}
		
