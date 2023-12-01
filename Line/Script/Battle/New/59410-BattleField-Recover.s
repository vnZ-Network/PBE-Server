	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:?259?????? ???????
	//		TaskID:59410-BattleField-Recover.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 259 9002 9003

		$ectype_id = GetCurEctypeID()
		$statusID = RandomNumber(9005,9006)
		
		AddStatus(-1,$statusID, 1)
		
		BC( "chat", "player", -1, "You received an Elf's gift. Your Speed or your Recovery ability increased!")
		
	}