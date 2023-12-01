	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/17
	//		Author:??
	//		TaskName:ITEM-jiachenghao64343.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$revalue = AddTitle( -1, 45 )
		if $revalue == 0
			BC( "screen", "player", -1, "You have acquired the Death Hunter title!" )
			SubPlayerInfo( -1, "item", 64343, 1 )
		endif
	}
	
	