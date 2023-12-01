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
		$choice = GetEctypeVar($ectype_id,0)

		if $choice == 2
			$monCount = GetEctypeVar( -1 , 32)
			$monCount = $monCount + 1
			SetEctypeVar( $ectype_id , 32 , $monCount )
			$monCountMAX = 8			
			if $monCount <= $monCountMAX
				BC( "screen", "map", $ectype_id, "Wraiths of Greed killed: ", $monCount, "/", $monCountMAX )
			endif			
			if $monCount == $monCountMAX
				AddNPC(643, -1)
				BC( "screen", "map", $ectype_id, "Thunderserpent Weak Point shows up")
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		
		
	}