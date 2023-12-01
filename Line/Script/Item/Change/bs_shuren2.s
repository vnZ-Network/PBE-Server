function OnUseItem(){
	$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 10
			BC( "screen", "player", -1, "Level too low to use transform potion." )
			return
		endif
		
	$r = SubPlayerInfo( -1, "item", 61527, 1 )
    	if $r == 0
	    UseSkill(-1,9566,2)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
