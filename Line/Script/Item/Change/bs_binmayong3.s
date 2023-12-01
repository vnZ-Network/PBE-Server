function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61563, 1 )
    if $r == 0
			UseSkill(-1,9574,3)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
