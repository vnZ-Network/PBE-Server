	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08
	//		Author:???
	//		TaskName:??
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID( -1 , 479 )
		$monCount = GetEctypeVar( -1 , 31)
		$monCount = $monCount + 1
		SetEctypeVar( $ectype_id , 31 , $monCount )
		$monCountMAX = 12
		
		if $monCount <= $monCountMAX
			BC( "screen", "map", $ectype_id, "Wraiths of Lust killed: ", $monCount, "/", $monCountMAX )
		endif
		
		if $monCount == $monCountMAX
			AddNPC(642, -1)
			BC( "screen", "map", $ectype_id, "The Thunderserpent Weak point appears!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
		
	}