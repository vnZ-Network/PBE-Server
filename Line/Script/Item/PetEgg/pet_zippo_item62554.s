function OnUseItem(){
      
	$petcount = GetPetCount(-1)
	$petmaxcount = GetPetMaxCount(-1)
	  if $petcount >= $petmaxcount
	  	BC( "screen", "player", -1, "You cannot hold any more pets." )
		return
	  endif
   	
   	$rand = RandomNumber ( 0, 1 )	
      	$result = SubPlayerInfo(-1,"item",62554,1)
	if $result == 0
		if $rand == 0
			$pet = AddPet( -1, 3033, 1, 0)      
			BC( "screen", "player", -1, "You have acquired a pet: Zippy!" )
		else
			$pet = AddPet( -1, 3034, 1, 0)
			BC( "screen", "player", -1, "You have acquired a pet: Zippy!" )
		endif
	else
		BC( "screen", "player", -1, "Failed to use this item." )
	endif		
}