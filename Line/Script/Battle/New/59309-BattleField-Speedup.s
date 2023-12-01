	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:?259?????? ???????
	//		TaskID:59309-BattleField-Speedup.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 259 9002 9003

		$ectype_id = GetCurEctypeID()
		$statusID = 9004
		
		AddStatus(-1,$statusID, 1)
		
		BC( "chat", "player", -1, "You received a Fairy's gift. Your Speed increased!")
		
	}