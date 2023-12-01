function OnDead(){
		
		$Ectype = GetEctypeID( -1, 228 )
		AddStatusToMap( $Ectype, 10861, 44 )
		BC( "screen", "map", $Ectype, "Warriors get Soul Firmness." )
		
	}
		