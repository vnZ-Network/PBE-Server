
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012-4-11
	//		Author��������
	//		TaskName��������齱��
	//		TaskID��
	//
	//****************************************
	function OnUseItem(){

		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		$FieldLevel = GetFieldLevel(-1)

//		$res = SubPlayerInfo(-1,"item",44248,1)
//		if $res != 0
//			return
//		endif

		if $level < 75
			ReqAward(-1,22,1)
//			BC("chat","player",-1,"22")
		else
			ReqAward(-1,23,1)
//			BC("chat","player",-1,"23")
		endif
		
		
		
		
		
	}