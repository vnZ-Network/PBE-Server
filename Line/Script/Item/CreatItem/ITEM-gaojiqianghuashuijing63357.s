function OnUseItem(){
	$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
	//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
		return
	endif

	//?????
	$del_count = SubPlayerInfo( -1, "item", 63357, 1 )
	//??????????
	if $del_count == 0
	 AddPlayerInfo( -1, "item", 9, 11 )
	endif
}