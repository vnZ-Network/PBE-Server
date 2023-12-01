  //		Modified:2011/6/16
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		$item_id = 62580
		$pet_id = 15110
		$temp_level = GetPlayerInfo( -1, "level" )
	      if $temp_level < 1
	        BC( "screen", "player", -1, "Your level is too low to use this item." )
	        return
	      endif
	      
		$petcount = GetPetCount(-1)
		$petmaxcount = GetPetMaxCount(-1)
		if $petcount >= $petmaxcount
		    BC( "screen", "player", -1, "You cannot have any more pets." )
		    return
		endif
	   		
      	$result = SubPlayerInfo(-1,"item",$item_id,1)
		if $result == 0
			$pet = AddPet( -1, $pet_id, 1, 0)      
		    BC( "screen", "player", -1, "You have acquired a new Pet!" )
			BC( "messagebox", "player", -1, "You have acquired a new Pet!" )
		else
			BC( "screen", "player", -1, "Failed to use the item." )
		endif		
	}