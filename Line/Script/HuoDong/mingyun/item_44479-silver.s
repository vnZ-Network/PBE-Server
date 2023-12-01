	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){

		$playerid = GetPlayerID()
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
			return
		endif
		
		$del_count = SubPlayerInfo( -1, "item", 44479, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo($playerid,"item",4942,1)
		AddPlayerInfo($playerid,"item",59838,1)
		
		
}