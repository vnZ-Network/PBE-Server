	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/14
	//		Author:??
	//		TaskName:gushoudao-mingjiezhichen.s
	//		TaskID:????
	//
	//****************************************

function OnUseItem(){
	//????
	$a = 44114 
	//???
	$b = 44115
	$num = GetPlayerInfo( -1, "item", $a )
	if $num < 20
		BC( "screen", "player", -1, "Not enough Nether Dust, can't create Hades' Command." )
		return
	endif
	$c = GetPlayerInfo( -1, "nullitem", 0 )
	if $c < 1
		BC( "screen", "player", -1, "There is not enough space in your bag." )
		return
	endif
	$result = SubPlayerInfo( -1, "item", $a, 20 )
	if $result == 0
		AddPlayerInfo( -1, "item", $b, 1 )
	endif
}
 