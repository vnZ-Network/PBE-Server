function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61511, 1 )
    if $r == 0
			UseSkill(-1,9563,1)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
