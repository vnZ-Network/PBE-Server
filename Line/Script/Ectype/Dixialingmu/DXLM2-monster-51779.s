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
		
		if $choice == 1
			return
		endif
		
		if $choice == 2
			$monCount = GetEctypeVar( -1 , 31)
			$monCount = $monCount + 1
			SetEctypeVar( $ectype_id , 31 , $monCount )
			$monCountMAX = 12
			if $monCount <= $monCountMAX
				BC( "screen", "map", $ectype_id, "Wraiths of Wrath killed: ", $monCount, "/", $monCountMAX )
			endif
			if $monCount == $monCountMAX
				AddNPC(642, -1)
				BC( "screen", "map", $ectype_id, "Thunderserpent Weak Point shows up")
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		
		if $choice == 3
			
		endif
		
		

		
		
	}