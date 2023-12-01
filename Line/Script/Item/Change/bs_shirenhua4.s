function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61509, 1 )
    	if $r == 0
	    UseSkill(-1,9562,4)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
