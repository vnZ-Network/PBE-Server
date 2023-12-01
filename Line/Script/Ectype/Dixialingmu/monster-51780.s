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
		$monCount = GetEctypeVar( -1 , 32)
		$monCount = $monCount + 1
		SetEctypeVar( $ectype_id , 32 , $monCount )
		$monCountMAX = 8
		
		if $monCount <= $monCountMAX
			BC( "screen", "map", $ectype_id, "The number of Redgrudge Wraiths killed is", $monCount, "/", $monCountMAX )
		endif
		
		if $monCount == $monCountMAX
			AddNPC(643, -1)
			BC( "screen", "map", $ectype_id, "The Thunderserpent Weak point appears!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
		
	}