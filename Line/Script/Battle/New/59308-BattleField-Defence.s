	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:?259?????? ???????
	//		TaskID:59308-BattleField-Defence.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 259 9002 9003

		$ectype_id = GetCurEctypeID()
		$statusID = RandomNumber(9002,9003)
		
		AddStatus(-1,$statusID, 1)
		
		BC( "chat", "player", -1, "You received a Titan's gift. Your Defense increased!")
		
	}