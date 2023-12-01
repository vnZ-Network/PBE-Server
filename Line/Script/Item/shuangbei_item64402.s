function OnUseItem(){
	
	$GetExp = GetExpAddonTime(-1 , 0)
	
	if $GetExp >= 82800
	  BC( "screen", "player", -1, "Double EXP duration capacity is full. Cannot buy any more." )
	  return
	endif

	$result = SubPlayerInfo(-1,"item",64402,1)
	  if $result == 0
        AddExpAddons(-1, 3600, 0)
        BC( "screen", "player", -1, "You have acquired an hour of double EXP duration." )
      else
	    BC( "screen", "player", -1, "Failed to use. Unknown error." )
	    return
	  endif
}
