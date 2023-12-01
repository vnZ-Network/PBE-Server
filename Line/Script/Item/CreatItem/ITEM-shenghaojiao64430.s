function OnUseItem(){
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "Insufficient bag slots!" )
		return
	endif

	//?????
	$del_count = SubPlayerInfo( -1, "item", 64430, 1 )
	//??????????
	if $del_count == 0
	 AddPlayerInfo( -1, "item", 60028, 11 )
	endif
}