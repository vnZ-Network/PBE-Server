//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/6/28
//	--		Author:???
//	--		Class:	.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

function OnDead(){

	$task = IsTaskAccept( -1, 517 )
	if $task == 1
			return
	endif

	$Var1 = GetPlayerVar( -1, 3312 )
	$Var1 = $Var1 + 1
	SetPlayerVar( -1, 3312, $Var1 )

	if $Var1 == 12
		$map_id = GetPlayerInfo(-1,"mapid")
		$map_x = GetPlayerInfo(-1,"mapposx")
		$map_y = GetPlayerInfo(-1,"mapposy")
//BC( "screen" , "map" , 245 , "GUID:07970000000" )
//PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
		$ise = GetServerVar(281)
		if $ise < 5
			$ise = $ise + 1
			AddMonsterByFloat( 30235 , 1 , $map_id , $map_x , $map_y , 1, 0 , 90  )
			SetServerVar(281, $ise)
		endif

	endif
 }