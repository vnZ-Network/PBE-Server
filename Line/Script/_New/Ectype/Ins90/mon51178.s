	function OnDead(){
		
		$Ectype = GetEctypeID( -1, 223 )
		AddStatusToMap( $Ectype, 10748, 1 )
		BC( "screen", "map", $Ectype, "Warriors obtaion Elven Blessing." )
		
	}
		