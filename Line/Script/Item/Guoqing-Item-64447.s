
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/9/14
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºGuoqing-Item-64447.s
	//		TaskID£º   
	//****************************************
	
	function OnUseItem(){
		
		$info = SubPlayerInfo( -1, "item", 64447 , 1  )
		if $info != 0
			return
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		$a = $lv * $lv
		$b = $a * 90
		$c = $lv * 4
		$d = $c - 76
		$e = $d * $b
		$f = $e / 100
		
		$exp1 = $b
		$exp2 = $f
		
		if $lv > 45
			AddPlayerInfo( -1 , "exp" , $exp2 )
		else
			AddPlayerInfo( -1 , "exp" , $exp1 )
		endif
		
		PlayEffect(-1,"common\flowers\mooncake\tx_mooncake.ini")
		
	}

