  //		Modified:2011/11/17
	//		Author:??
	//		TaskName:Item-pet-duowangxiaohuangxiong1.s
	//		TaskID:?????1
	//****************************************
	
	function OnUseItem(){
		$item_id = 62598
		$pet_id = 15155
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
			$pet = AddPet( -1, $pet_id, 1, 5)      
		    BC( "screen", "player", -1, "You have acquired a pet!" )
			BC( "messagebox", "player", -1, "You have acquired a pet!" )
		else
			BC( "screen", "player", -1, "Failed to use item" )
		endif		
	}