	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/27
	//		Author:??
	//		TaskName:petexp_item64516.s
	//		TaskID:????
	//
	//****************************************



	function OnUseItem(){
	
		  $HasBattlePet = HasBattlePet(-1)
	
	      if $HasBattlePet == -1
	      	BC( "screen", "player", -1, "You cannot acquire EXP without any pet in combat." )
	      	return
	      endif
	      	
	      $result = SubPlayerInfo(-1,"item",64516,1)
	      if $result == 0
	      	$pet_level = GetPetLevel(-1)
	      	$a = $pet_level * $pet_level
	      	$b = $a * $pet_level
	      	$add_exp = $b * 20
	        AddPetExp(-1, $add_exp)
	      else
	        BC( "screen", "player", -1, "Failed to use item!" )
	        return
	      endif
	     
	}
