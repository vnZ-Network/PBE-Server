function OnUseItem(){
	$temp_level = GetPlayerInfo( -1, "level" )
      if $temp_level < 1
        BC( "chat", "player", -1, "Level too low to use that." ,$pro)
		BC( "messagebox", "player", -1, "Level too low to use that." ,$pro)
        return
      endif
      
	$petcount = GetPetCount(-1)
	$petmaxcount = GetPetMaxCount(-1)
	  if $petcount >= $petmaxcount
	    BC( "chat", "player", -1, "Cannot have more pets." )
		BC( "messagebox", "player", -1, "Cannot have more pets." )
	    return
	  endif
   		
      	$result = SubPlayerInfo(-1,"item",62508,1)
		if $result == 0
			$pet = AddPet( -1, 2750, 1, 0)      
		    BC( "chat", "player", -1, "You have acquired a pet!" )
  			 BC( "messagebox", "player", -1, "You have acquired a pet!" )
		else
			BC( "chat", "player", -1, "Failed to use item!" )
			BC( "messagebox", "player", -1, "Failed to use item!" )
		endif		
}
