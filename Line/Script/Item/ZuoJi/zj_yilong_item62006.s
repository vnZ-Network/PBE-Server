function OnUseItem(){
    $temp_level = GetPlayerInfo( -1, "level" )
      if $temp_level < 30
        BC( "screen", "player", -1, "Level too low to use that." )
        return
      endif		
    $r = AddRider(-1,1001)
      if $r == 0
					BC( "screen", "player", -1, "Mount added to mount list!" )
					//????
					SubPlayerInfo( -1, "item", 62006, 1 )
			return
      endif
      BC( "screen", "player", -1, "Failed to add to mount list" )
}