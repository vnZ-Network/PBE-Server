function OnUseItem(){
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	//??????????
	if $bag_count < 2
		BC( "screen", "player", -1, "Insufficient bag slots!" )
		return
	endif

	//?????
	$del_count = SubPlayerInfo( -1, "item", 60486, 1 )
	//??????????
	if $del_count == 0
	 AddPlayerInfo( -1, "item", 60487, 11 )
	endif
}