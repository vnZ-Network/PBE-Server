function OnUseItem(){		
    		$r = AddRider(-1,91)
        if $r == 0
					BC( "chat", "player", -1, "Mount added to mount list!" )
					//????
					SubPlayerInfo( -1, "item", 62038, 1 )
				return
        endif
				BC( "chat", "player", -1, "Failed to add to mount list" )
}
