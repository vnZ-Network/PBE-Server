function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61503, 1 )
    	if $r == 0
	    UseSkill(-1,9561,3)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
