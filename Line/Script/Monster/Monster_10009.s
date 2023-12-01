//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/6/28
//	--		Author:???
//	--		Class:	.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

function OnDead(){

	$task = IsTaskAccept( -1, 814 )
	if $task == 1
			return
	endif

	$Var1 = GetPlayerVar( -1, 3318 )
	$Var1 = $Var1 + 1
	SetPlayerVar( -1, 3318, $Var1 )

	if $Var1 == 20
		$map_id = 119
		$map_x = GetPlayerInfo(-1,"mapposx")
		$map_y = GetPlayerInfo(-1,"mapposy")
//BC( "screen" , "map" , 245 , "GUID:07969000000" )
//PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
		AddMonsterByFloat( 20895 , 1 , $map_id , $map_x , $map_y , 1, -1 , 90  )
		SetPlayerVar(-1, 3318, 0)
		endif
 }