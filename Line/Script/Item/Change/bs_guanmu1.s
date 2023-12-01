function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61557, 1 )
    if $r == 0
			UseSkill(-1,9573,1)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
