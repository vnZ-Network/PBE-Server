function OnUseItem(){
   			
		//????
			
		//$gid = GetPlayerInfo( -1 , "guildid")
	  	//if $gid == -1
	  		//BC( "dialogbox", "player", -1, "GUID:06609000000")
	  		//return
	  	//endif
			
	  	$r = SubPlayerInfo( -1, "item", 50542, 1 )
			if $r != 0
				return
			endif
			
			AddPlayerInfo( -1, "givepoint", 7000 )
			BC( "screen", "player", -1, "Thanks for your contribution to the Guild! You gain 7000 Salary as a reward!" )
		
}