function OnUseItem(){
   			
			$r = AddRider(-1,51)
			if $r == 0
				BC( "screen", "player", -1, "A new mount has been added to your mount list!" )
				//????
				SubPlayerInfo( -1, "item", 62065, 1 )
				return
			endif
			BC( "screen", "player", -1, "Your mount list is full!" )

}	
		
		
					