	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-3
	//		Author:??
	//		TaskName:ITEM-wuseshenshi.s
	//		TaskID:??????????
	//
	//****************************************





function OnUseItem(){

      
	$petcount = GetPetCount(-1)
	$petmaxcount = GetPetMaxCount(-1)
	if $petcount >= $petmaxcount
	    BC( "screen", "player", -1, "Cannot have more pets." )
	    return
	endif
   		
    $result = SubPlayerInfo(-1, "item", 62606, 1)
	if $result == 0
		$n = RandomNumber(1, 5)
		
		if $n == 1
			$pet_number = 15166
		endif
		if $n == 2
			$pet_number = 15167
		endif
		if $n == 3
			$pet_number = 15168
		endif
		if $n == 4
			$pet_number = 15169
		endif
		if $n == 5
			$pet_number = 15170
		endif
		$pet = AddPet( -1, $pet_number , 1, 0)      
  		BC( "messagebox", "player", -1, "You have acquired a pet!" )
	else
		BC( "screen", "player", -1, "Failed to use item" )
	endif		
}
