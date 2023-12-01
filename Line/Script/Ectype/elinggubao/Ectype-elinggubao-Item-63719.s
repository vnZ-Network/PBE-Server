	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/22
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Item-63719.s
	//		TaskID：高额经验球
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
		
		$info = SubPlayerInfo ( -1 , "item" , 63719 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "exp" , $exp )
		
	}