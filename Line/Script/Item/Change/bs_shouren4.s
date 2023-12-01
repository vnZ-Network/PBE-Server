function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61539, 1 )
    	if $r == 0
	    UseSkill(-1,9568,4)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
