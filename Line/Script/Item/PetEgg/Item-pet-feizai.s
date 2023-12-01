  //		Modified:2011/11/17
	//		Author:??
	//		TaskName:Item-pet-feizei.s
	//		TaskID:????????
	//****************************************
	
	function OnUseItem(){
		$item_id = 62602
		$pet_id1 = 15161
		$pet_id2 = 15162
		$temp_level = GetPlayerInfo( -1, "level" )
	      if $temp_level < 1
	        BC( "screen", "player", -1, "Level too low to use that." )
	        return
	      endif
	      
		$petcount = GetPetCount(-1)
		$petmaxcount = GetPetMaxCount(-1)
		if $petcount >= $petmaxcount
		    BC( "screen", "player", -1, "Cannot have more pets." )
		    return
		endif
	   		
    $result = SubPlayerInfo(-1,"item",$item_id,1)
		if $result == 0
			$random = RandomNumber( 1, 2 )
			if $random == 1
				$pet = AddPet( -1, $pet_id1, 1, 5)
			else
				$pet = AddPet( -1, $pet_id2, 1, 5)
			endif     
		  BC( "screen", "player", -1, "You have acquired a pet!" )
			BC( "messagebox", "player", -1, "You have acquired a pet!" )
		else
			BC( "screen", "player", -1, "Failed to use item" )
		endif		
	}