//	----------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2011/08/09
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

function OnDead(){

//	$task = IsTaskAccept( -1, 270 )
//	if $task == 1
//			return
//	endif

	$Var1 = GetEctypeVar( -1, 96 )
	$Var2 = GetEctypeVar( -1, 95 )
	$Var1 = $Var1 + 1
	SetEctypeVar( -1, 96, $Var1 )
	

	if $Var1 == 4
		if $Var2 == 4
		$map_id = GetPlayerInfo(-1,"mapid")
			AddMonsterByFloat( 51818 , 1 , $map_id , 81 , 252 , 0 , 0 ,90 )
		endif
	endif

 }