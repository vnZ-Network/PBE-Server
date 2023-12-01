function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61537, 1 )
    	if $r == 0
	    UseSkill(-1,9568,2)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
