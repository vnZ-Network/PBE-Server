	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:??
	//		TaskName:ITEM-yongzhehuigui-59072.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "screen", "player", -1,"You can only use the Return of the Warriors Card when you are above LV30." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59072, 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 500 )
		endif
	}			