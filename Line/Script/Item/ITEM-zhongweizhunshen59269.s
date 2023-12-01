	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/31
	//		Author:??
	//		TaskName:ITEM-zhongweizhunshen59269.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$revalue = AddTitle( -1, 70 )
		if $revalue == 0
			BC( "screen", "player", -1, "You received the title Meso Demigod!" )
			SubPlayerInfo( -1, "item", 59269, 1 )
		endif
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		PlayEffect( -1, "skill\Knight\shengshizishenpan\fire\tx_Knight_shengshizishenpan_fire_A.ini" )
	}
	
	