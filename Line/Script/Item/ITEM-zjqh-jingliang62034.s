function OnUseItem(){
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	//??????????
	if $bag_count < 2
		BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
		return
	endif

	//?????
	$del_count = SubPlayerInfo( -1, "item", 62034, 1 )
	//??????????
	if $del_count == 0
	 AddPlayerInfo( -1, "item", 60491, 11 )
	endif
}