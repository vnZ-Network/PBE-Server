function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == 0
	  		BC( "dialogbox", "player", -1, "You haven't joined a guild yet.")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 200
	  		BC( "dialogbox", "player", -1, "You don't have enough Contribution!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 50530, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 200 )
			AddPlayerInfo( -1, "item", 36556, 1 )
			BC( "screen", "player", -1, " Contribution consumed by 200. Item Blue Guild Mantle acquired!" )
		
}