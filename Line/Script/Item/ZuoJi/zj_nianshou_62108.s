function OnUseItem(){
   			
			$r = AddRider(-1,1126)
			if $r == 0
				BC( "screen", "player", -1, "You get a new mount." )
				//????
				SubPlayerInfo( -1, "item", 62108, 1 )
				return
			endif
			BC( "screen", "player", -1, "Failed to add to mount list" )

}