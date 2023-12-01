function OnUseItem(){
	$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
	//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "You do not have enough space in your Bag." )
		return
	endif

	//?????
	$del_count = SubPlayerInfo( -1, "item", 64475, 1 )
	//??????????
	if $del_count == 0
	 AddPlayerInfo( -1, "item", 5, 110 )
	endif
}