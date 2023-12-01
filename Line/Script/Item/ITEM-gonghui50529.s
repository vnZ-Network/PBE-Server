function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == 0
	  		BC( "dialogbox", "player", -1, "You haven't joined a guild yet.")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 16
	  		BC( "dialogbox", "player", -1, "You don't have enough Contribution!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 50529, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 16 )
			AddPlayerInfo( -1, "item", 6064, 1 )
			BC( "screen", "player", -1, "Contribution consumed by 16. Advanced Energy Potion acquired!" )
		
}