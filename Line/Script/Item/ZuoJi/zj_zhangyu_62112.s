function OnUseItem(){
   		$level = GetPlayerInfo( -1, "level")
			if $level < 25
				BC( "screen", "player", -1, "You must have reached LV25 before you can use this mount." )
				return
			endif	
			
			$r = AddRider(-1,1141)
			if $r == 0
				BC( "screen", "player", -1, "Mount added to mount list!" )
				//????
				SubPlayerInfo( -1, "item", 62112, 1 )
				return
			endif
			BC( "screen", "player", -1, "Failed to add to mount list." )

}