function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == 0
	  		BC( "dialogbox", "player", -1, "You haven't joined a guild yet.")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 10
	  		BC( "dialogbox", "player", -1, "You don't have enough Contribution!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 50527, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 10 )
			AddPlayerInfo( -1, "item", 6060, 1 )
			BC( "screen", "player", -1, "Contribution consumed by 10. Basic Energy Potion acquired!" )
		
}