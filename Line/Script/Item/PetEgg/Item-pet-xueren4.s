  //		Modified:2012/5/30
	//		Author:??
	//		TaskName:Item-pet-xueren2.s
	//		TaskID:??
	//    ??
	//****************************************
	
	function OnUseItem(){
		$item_id = 62624
		$pet_id = 15186
		$temp_level = GetPlayerInfo( -1, "level" )
	      if $temp_level < 1
	        BC( "screen", "player", -1, "Your level is too low to use this item." )
	        return
	      endif
	      
		$petcount = GetPetCount(-1)
		$petmaxcount = GetPetMaxCount(-1)
		if $petcount >= $petmaxcount
		    BC( "screen", "player", -1, "You cannot hold any more Pets." )
		    return
		endif
	   		
      	$result = SubPlayerInfo(-1,"item",$item_id,1)
		if $result == 0
			$pet = AddPet( -1, $pet_id, 1, 0)      
		    BC( "screen", "player", -1, "You have acquired a new Pet!" )
			BC( "messagebox", "player", -1, "You have acquired a new Pet!" )
		else
			BC( "screen", "player", -1, "Failed to use this item." )
		endif		
	}