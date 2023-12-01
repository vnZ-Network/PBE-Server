function OnUseItem(){
   			
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "Unable to use. You have not joined a Guild yet.")
	  	return
	  endif
			//????
			
			$r = SubPlayerInfo( -1, "item", 50502, 1 )
			if $r != 0
				BC( "screen", "player", -1, "Failed to gain Contribution points!" )
				return
			endif
			
			AddPlayerInfo( -1, "guildoffer", 1 )
			BC( "screen", "player", -1, " Contribution gained by 1!" )
		
}