function OnUseItem(){
    $temp_level = GetPlayerInfo( -1, "level" )
      if $temp_level < 30
        BC( "screen", "player", -1, "Mount added to mount list!" )
        return
      endif		
    	$r = AddRider(-1,16)
        if $r == 0
					BC( "screen", "player", -1, "Mount added to mount list!" )
					//????
					SubPlayerInfo( -1, "item", 62117, 1 )
				return
        endif
}
