	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2010/03/15
	//		Author£∫—Ó‘≠¡÷
	//		TaskName£∫Ectype-elinggubao-Item-6631.s
	//		TaskID£∫ ‘¡∂÷Æº¡
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 20
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
		

		AddPlayerInfo( -1 , "exp" , $exp )
		
		
	}	