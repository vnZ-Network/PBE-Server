function OnUseItem(){

	$rn = GetRiderMax( -1 )
		if $rn >= 25
			BC( "screen", "player", -1, "You cannot extend your mount capacity any more!")
			return
		endif
		
		if $rn < 25
			$del_count = SubPlayerInfo( -1, "item", 63405, 1 )
			if $del_count == 0
				AddRiderMax( -1 , 1 )
				BC( "screen", "player", -1, "You have extended your mount capacity by 1 slot!")
			endif			
		endif
	endif
}