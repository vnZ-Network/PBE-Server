	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Saisi-Ectype-map-12680.s
	//		TaskID: ?? ???????
	//
	//****************************************

	
	function EnterArea(){
	
		$ectype_id = GetEctypeID( -1 , 243 )
		
		$a = GetEctypeVar( $ectype_id , 0 )
		if $a == 1
			return
		endif
		AddMonsterByFloat( 55056 , 1 , $ectype_id , 246 , 246 , 0 )
		SetEctypeVar( $ectype_id , 0 , 1 )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "Horus, the god of the hawk, was summoned." )

	}
	
	function LeaveArea(){
	
		
	}