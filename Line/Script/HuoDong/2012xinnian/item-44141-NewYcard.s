	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12-6
	//		Author:???
	//		TaskName:?-????-?
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
		$playerid = GetPlayerID()
		$level = GetPlayerInfo($playerid,"level")

		BC("screen","player",-1,"You opened the New Year reward, good luck. ")
		
		if $level < 75
			ReqAward(-1,18,1)
		else
			ReqAward(-1,19,1)
		endif
		

	}