	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/05
	//		Author����ԭ��
	//		TaskName��Ectype-elinggubao-Item-63720.s
	//		TaskID���еȽ�ɫǮ��
	//
	//****************************************
	
	
	function OnUseItem(){
		
		
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv = $lv * $lv
		$a = $lv * 15
		$b = $a / 10
		$money = $b + 1000
		
		$info = SubPlayerInfo ( -1 , "item" , 63720 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}	