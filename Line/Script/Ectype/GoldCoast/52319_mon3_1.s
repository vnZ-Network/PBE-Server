	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:52319_mon3_1.s
	//
	//****************************************
	
	
	function OnDead(){

	//??????
	$ectype_id = GetEctypeID(-1, 540)
	$number = GetEctypeVar(-1, 15)	
	$number = $number + 1
	SetEctypeVar(-1, 15, $number)
	
	//????????
	$total = GetEctypeVar(-1, 98)
	$total = $total + 1
	SetEctypeVar(-1, 98, $total)
//	BC( "screen", "player", -1, "GUID:04394000000"$total)
	
//	$BOSS_3ss = 52321
//	$BOSS_3S = 52322
//	$BOSS_3 = 52323
//	
//	$n_score = GetEctypeVar(-1, 20)
//	$s_score = GetEctypeVar(-1, 21)
//	$sum = $n_score + $s_score
	
//	$number = GetEctypeVar(-1, 15)
//	if $number == 8
//		if $sum >= 20
//			AddMonsterByFloat($BOSS_3ss, 1, $ectype_id, 239,232,1)		
//		else
//			if $sum > 5
//				AddMonsterByFloat($BOSS_3S, 1,$ectype_id, 239,232, 1)
//			else
//				AddMonsterByFloat($BOSS_3, 1, $ectype_id, 239,232, 1)
//			endif
//		endif
//	endif
	

}