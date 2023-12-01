	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Marry-Item-12660.s
	//		TaskID:????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$item = GetPlayerInfo( -1, "item", 12660 )
		if $item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 12660, 1 )
		if $Sub != 0
			return
		endif
		
		ChangeNpcMode( -1, 151, 369, ..\Data\Sceneobjs\huisuo_dongxue_75\tree\huisuo_dongxue_75_tree_01_1.pwm3 )
		AddPlayerInfo( -1, "item", 12658, 1 )
		
	}	