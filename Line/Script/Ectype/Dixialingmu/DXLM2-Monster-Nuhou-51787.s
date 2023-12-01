	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479MONSTER????
	//		TaskID:DXLM-Monster-Nuhou-51787.s
	//
	//****************************************
	
	function OnDead(){
	
	$ectype_id = GetEctypeID( -1 , 479 )
	//???????????
	$n = GetEctypeVar(-1, 27)
	$n = $n + 1
	SetEctypeVar(-1, 27, $n)

		if $n >= 27
		$a = 32 - $n
			if $a > 0
				BC( "screen", "map", $ectype_id, "Mountain Stomper still remains" , $a, "brave man tries harder. ") 
			endif
		endif

	//?????????????
	if $n == 32
		BC( "screen", "map", $ectype_id, "The first group of Chiyu's army has been destroyed. Find Taiton to ask for information of the second group army.")
	endif
	
	
		if $n >= 59
		$a = 64 - $n
			if $a > 0
				BC( "screen", "map", $ectype_id, "Mountain Stomper still remains" , $a, "brave man tries harder. ") 
			endif
		endif
	

	//?????????????
	if $n == 64
		BC( "screen", "map", $ectype_id, "The middle group army of Chiyu has been destroyed. The trigger point to kill Chiyu is hidden in the cave which is in the north of the small house.")
		BC( "chat", "map", $ectype_id, "The middle group army of Chiyu has been destroyed. The trigger point to kill Chiyu is hidden in the cave which is in the north of the small house.")
	endif
	
}