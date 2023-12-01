	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/31
	//		Author:??
	//		TaskName:ITEM-xiaweizhunshen12724.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$revalue = AddTitle( -1, 69 )
		if $revalue == 0
			BC( "screen", "player", -1, "You received the title Lower Demigod!" )
			SubPlayerInfo( -1, "item", 12724, 1 )
		endif
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		PlayEffect( -1, "skill\Knight\shengshizishenpan\fire\tx_Knight_shengshizishenpan_fire_A.ini" )
	}
	
	