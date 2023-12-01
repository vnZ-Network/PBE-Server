function OnUseItem(){
   			
		#name = GetPlayerInfo( -1 , "name" )
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "Unable to use. You have not joined a Guild yet.")
	  	return
	  endif
	  
			//????
			
			$r = SubPlayerInfo( -1, "item", 50515, 1 )
			if $r != 0
				BC( "screen", "player", -1, "Failed to gain funds!" )
				return
			endif
			
			AddPlayerInfo( -1, "guildmoney", 225000 )
			BC( "screen", "player", -1, " Funds gained by 225000 coins!" )
			BC( "chat", "guild", $gid, "By the effort of our distinguished guild member ",#name,", our Guild has gained 225000 Funds!" )
		
}