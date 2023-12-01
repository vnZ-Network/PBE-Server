function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61551, 1 )
    if $r == 0
			UseSkill(-1,9571,1)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
