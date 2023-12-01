	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3/6
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************

	function OnUseItem(){
//44606 ?????(30?)x		1
//59840 ?????x		1
//9 ??????x		20
//2221 ?????x		10

		$playerid = GetPlayerID()
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 3
			BC("screen","player",-1,"You need at least 3 empty slots in your bag!")
			return
		endif
		$nullitem = GetPlayerInfo($playerid,"nullitem",1)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient material bag slots!")
			return
		endif
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count == 0
			AddPlayerInfo(-1,"item",63771,1)
			AddPlayerInfo(-1,"item",59840,1)
			AddPlayerInfo(-1,"item",9,20)
			AddPlayerInfo(-1,"item",2221,10)
		endif
		
	}
