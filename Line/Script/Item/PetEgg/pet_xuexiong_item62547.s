function OnUseItem(){
	$temp_level = GetPlayerInfo( -1, "level" )
      if $temp_level < 35
        BC( "screen", "player", -1, "Level too low to use that." )
		
        return
      endif
      
	$petcount = GetPetCount(-1)
	$petmaxcount = GetPetMaxCount(-1)
	  if $petcount >= $petmaxcount
	    BC( "screen", "player", -1, "Cannot have more pets." )
		
	    return
	  endif
   		
      	$result = SubPlayerInfo(-1,"item",62547,1)
		if $result == 0
			$pet = AddPet( -1, 2900, 1, 0)      
		    BC( "screen", "player", -1, "You have acquired a pet!" )
			BC( "messagebox", "player", -1, "You have acquired a pet!" )
		else
			BC( "screen", "player", -1, "Failed to use item" )
		endif		
}