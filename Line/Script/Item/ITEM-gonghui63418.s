function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == -1
	  		BC( "dialogbox", "player", -1, "You haven't joined a guild yet.")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 20
	  		BC( "dialogbox", "player", -1, "You don't have enough Contribution!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 63418, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 20 )
			AddPlayerInfo( -1, "item", 63409, 1 )
			BC( "screen", "player", -1, " Contribution consumed by 20. Item Glow Stone acquired!" )
		
}