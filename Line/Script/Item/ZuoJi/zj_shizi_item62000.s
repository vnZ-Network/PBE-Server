function OnUseItem(){
   $temp_level = GetPlayerInfo( -1, "level" )
      if $temp_level < 25
        BC( "screen", "player", -1, "Level too low to use that." )
        return
      endif		
	$pro = GetPlayerInfo( -1, "profession" )
	if $pro == 2
		$r = AddRider(-1,1)
		if $r == 0
			BC( "screen", "player", -1, "Mount added to mount list!" )
			//????
			SubPlayerInfo( -1, "item", 62000, 1 )
			return
		endif
		BC( "screen", "player", -1, "Failed to add to mount list" )
		return
	endif
	BC( "screen", "player", -1, "Class does not match. Cannot use this item." )
}