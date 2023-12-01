function OnUseItem(){
   			
		#name = GetPlayerInfo( -1 , "name" )
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "Unable to use. You have not joined a Guild yet.")
	  	return
	  endif
			//????
			
			$r = SubPlayerInfo( -1, "item", 50514, 1 )
			if $r != 0
				BC( "screen", "player", -1, "Failed to gain Development points!" )
				return
			endif
			
			AddPlayerInfo( -1, "guildprosperity", 7500 )
			BC( "screen", "player", -1, " Development gained by 7500!" )
			BC( "chat", "guild", $gid, "By the effort of our distinguished guild member ",#name,", our Guild has gained 7500 Development points!" )
		
}