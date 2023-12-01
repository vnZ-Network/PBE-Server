	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/03
	//		Author:??
	//		TaskName:ITEM-jiachenghao12260.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$revalue = AddTitle( -1, 21 )
		if $revalue == 0
			BC( "screen", "player", -1, "You have acquired the title 'Demi-God'!" )
			SubPlayerInfo( -1, "item", 12260, 1 )
		endif
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		PlayEffect( -1, "skill\Knight\shengshizishenpan\fire\tx_Knight_shengshizishenpan_fire_A.ini" )
	}
	
	