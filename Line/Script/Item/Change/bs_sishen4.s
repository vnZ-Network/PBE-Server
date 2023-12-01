function OnUseItem(){
	$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "screen", "player", -1, "Level too low to use transform potion." )
			return
		endif
		
	$r = SubPlayerInfo( -1, "item", 61544, 1 )
    	if $r == 0
	    UseSkill(-1,9569,4)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
