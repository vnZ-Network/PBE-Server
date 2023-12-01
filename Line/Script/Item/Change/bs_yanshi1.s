function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61556, 1 )
    	if $r == 0
	    UseSkill(-1,9572,1)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
