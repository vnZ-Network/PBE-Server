function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61510, 1 )
    	if $r == 0
	    UseSkill(-1,9562,5)
	    BC( "screen", "player", -1, "Transformed!" )
	endif
}
