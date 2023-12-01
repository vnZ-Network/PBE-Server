	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479MONSTER????
	//		TaskID:DXLM2-Monster-Shixue-51784.s
	//
	//****************************************
	
	function OnDead(){
	
	$ectype_id = GetEctypeID(-1, 479)
	//???????????
	$n = GetEctypeVar(-1, 28)
	$n = $n + 1
	SetEctypeVar(-1, 28, $n)

		if $n >= 35
		$a = 40 - $n
			if $a > 0 
				BC( "screen", "map", $ectype_id, "Bloodlust wolf remains" , $a, "brave man try harder. ") 
			endif
		endif
	
	//?????????????
	if $n == 40
		BC( "screen", "map", $ectype_id, "The vanguard of Chiyu's Bloodlust wolf has been annihilated by Bloodlust wolf. You can find the Spy Ghost to get the information on the Hurricane Warrior.")
	endif
	
}