function OnUseItem(){
$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "screen", "player", -1, "Level too low to use transform potion." )
			return
		endif
		
	$r = SubPlayerInfo( -1, "item", 61550, 1 )
    if $r == 0
			UseSkill(-1,9570,5)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
