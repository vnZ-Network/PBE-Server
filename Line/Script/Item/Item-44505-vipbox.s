	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3/6
	//		Author:???
	//		TaskName:
	//		TaskID:44504 ????
	//
	//****************************************

	
	function OnUseItem(){
		//272
		//273
		//274
		$getvar = GetPlayerVar(-1,272)
		if $getvar == 1
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"You do not have enough space in your bag.")
			return
		endif
		$sub = SubPlayerInfo(-1,"item",44505,1)
		if $sub != 0
			return
		endif
		AddPlayerInfo(-1,"item",44504,1)

		SetPlayerVar(-1,272,1)
		
	}
