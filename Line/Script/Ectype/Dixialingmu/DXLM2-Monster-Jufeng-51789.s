	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479MONSTER????
	//		TaskID:DXLM2-Monster-Jufeng-51789.s
	//
	//****************************************
	
	function OnDead(){
	
	//???? ??ID 479 ?? 28 ?? ???????? 40 ???????? 14 ???? 20 ?????? 53
	$ectype_id = GetEctypeID(-1, 479)
	$is_kill = GetEctypeVar(-1, 20)
	$is_open = GetEctypeVar(-1, 14)
	$is_got = GetEctypeVar(-1, 40)
	$is_call = GetEctypeVar(-1, 53)
	$count = GetEctypeVar(-1, 28)
	
	if $is_kill == 1
		return
	endif
	
	if $is_open != 1
		return
	endif
	
	if $is_got == 1
		return
	endif
	
	if $is_call != 1
		return
	endif
	
	$count = $count + 1
	SetEctypeVar(-1, 28, $count)
//  BC( "screen", "map", $ectype_id, " " , $count , " ")
	
	
	if $count == 18
  	AddMonsterByFloat(51778, 1, $ectype_id, 301, 197, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 302, 198, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 303, 199, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 304, 200, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 201, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 288, 205, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 289, 206, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 207, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 291, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 292, 205, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 293, 207, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 294, 209, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 295, 208, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 296, 206, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 305, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 306, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 307, 202, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 305, 200, 0)
  	BC( "screen", "map", $ectype_id, "The second wave of Souleater Wraiths has appeared!")
  endif

	if $count == 36
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 291, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 292, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 293, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 294, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 304, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 305, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 306, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 307, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 308, 184, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 195, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 286, 196, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 287, 197, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 288, 198, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 289, 195, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 196, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 299, 196, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 300, 184, 0)
  	BC( "screen", "map", $ectype_id, "The third wave of Souleater Wraiths has appeared!") 
 endif
 
 
 if $count == 54
  	AddMonsterByFloat(51778, 1, $ectype_id, 301, 197, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 302, 198, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 303, 199, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 304, 200, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 201, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 288, 205, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 289, 206, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 290, 207, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 291, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 292, 205, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 293, 207, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 294, 209, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 295, 208, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 296, 206, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 305, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 306, 204, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 307, 202, 0)
  	AddMonsterByFloat(51778, 1, $ectype_id, 305, 200, 0)
  	BC( "screen", "map", $ectype_id, "The fourth wave of Souleater Wraiths has appeared!")
  endif

	if $count < 18
		$a = 18 - $count
		if $a > 0
			if $a < 5
				BC( "screen", "map", $ectype_id, "First wave: There are " , $a , " more Souleater Wraith to kill.")
			endif
		endif
	endif 
	
	if $count < 36
		$b = 36 - $count
		if $b > 0
			if $b < 5
				BC( "screen", "map", $ectype_id, "Second wave: There are " , $b , " more Souleater Wraith to kill.")
			endif
		endif
	endif 
	
	if $count < 54
		$c = 54 - $count
		if $c > 0
			if $c < 5
				BC( "screen", "map", $ectype_id, "Third wave: There are " , $c , " more Souleater Wraith to kill.")
			endif
		endif
	endif 
	
	if $count < 72
		$d = 72 - $count
		if $d > 0
			if $d < 5
				BC( "screen", "map", $ectype_id, "Fourth wave: There are " , $d , " more Souleater Wraith to kill.")
			endif	
		endif
	endif 


 
  if $count == 72
  	BC( "screen", "map", $ectype_id, "You have fulfilled the imperial creed. Speak with Chanyi to receive the Tiger Talisman")
  	PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
  	SetEctypeVar(-1, 20, 1)
  endif
  
	
}	