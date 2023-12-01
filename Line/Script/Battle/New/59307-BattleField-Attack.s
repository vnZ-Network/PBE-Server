	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:?259?????? ???????
	//		TaskID:59307-BattleField-Attack.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 259 9000 9001

		$ectype_id = GetCurEctypeID()
		$statusID = RandomNumber(9000,9001)
		
		AddStatus(-1,$statusID, 1)
		
		BC( "chat", "player", -1, "You received a sinister gift. Your Attack increased!")
		
	}