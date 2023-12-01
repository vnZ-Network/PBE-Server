	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/08
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:DuzhuNvwang_zj_item62120.s
	//
	//****************************************	
	
	function OnUseItem(){

		//???? ???? 62120  ?? 1161
		
		$item = 62120
		$rider = 1161

		$r = AddRider(-1,$rider)
			if $r != 0
				BC( "screen", "player", -1, "Failed to add to mount list." )
				return
			endif
			
		$revaluet = SubPlayerInfo( -1, "item", $item, 1 )
			if $revaluet != 0
				BC( "screen", "player", -1, "Failed to add to mount list." )
				return
			endif
		
		BC( "screen", "player", -1, "Mount added to mount list!" )
			
	
}