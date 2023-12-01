function OnUseItem(){
	$HasBattlePet = HasBattlePet(-1)
      if $HasBattlePet == -1
        BC( "screen", "player", -1, "You cannot acquire EXP without any pet in combat." )
      else
      	$result = SubPlayerInfo(-1,"item",63079,1)
      	if $result == 0
      	  AddPetExp(-1,500)
      	else
      	  BC( "screen", "player", -1, "Failed to use item!" )
        return
        endif
      endif
}