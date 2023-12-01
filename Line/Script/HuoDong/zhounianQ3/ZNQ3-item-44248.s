
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012-4-11
	//		Author£ººú±óÌÎ
	//		TaskName£ºÖÜÄêÇì³é½±¿¨
	//		TaskID£º
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