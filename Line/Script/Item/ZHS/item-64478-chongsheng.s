	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9-4
	//		Author:??
	//		TaskName:
	//		TaskID: 64476
	//
	//****************************************
	
	function OnUseItem(){
		
//64476	??? 2314 ??10???
//64477	????????? 4909 ??11?????????
//64478	?????? 60509 ??8???????

		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$sub = SubPlayerInfo(-1,"item",64478,1)
		if $sub == 0
			AddPlayerInfo(-1,"item",60509,8)
		endif
		
		
	}