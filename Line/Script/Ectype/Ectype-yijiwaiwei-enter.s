	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/12/05
	//		Author：司文博
	//		TaskName：Ectype-yijiwaiwei-enter.s
	//		TaskID：进入失落的遗迹脚本
	//
	//****************************************

	function OnCreate(){
	
		$ectype_id = GetEctypeID( -1 , 237 )
		DeleteNPC( 487 , $ectype_id )
		
	}
	
	function InitTimer(){
		$ectype_id = GetEctypeID( -1 , 237 )
		SetEctypeTimer( 1 , 10 , "EctypeTime0" )
		SetEctypeTimer( 2 , 10 , "EctypeTime0" )
	}

	function EctypeTime0(){
		$ectype_id = GetEctypeID( -1 , 237 )
		AddMonsterByFloat( 55198, 1, $ectype_id , 166, 143 , 0 )
	}

	function EctypeTime1(){
		$ectype_id = GetEctypeID( -1 , 237 )
		StartEctypeTimer( $ectype_id , 2 )
		$a = GetEctypeVar( $ectype_id , 111 )
		$a = $a + 1
		SetEctypeVar( $ectype_id , 111 , $a )
	}


