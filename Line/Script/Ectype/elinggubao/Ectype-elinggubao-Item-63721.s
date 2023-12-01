	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/15
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Item-63721.s
	//		TaskID：高额金色钱袋
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv = $lv * $lv
		$a = $lv * 3
		$money = $a + 2000
		
		$info = SubPlayerInfo ( -1 , "item" , 63721 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}	