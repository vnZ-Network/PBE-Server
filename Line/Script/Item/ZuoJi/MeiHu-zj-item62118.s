	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/22
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:MeiHu-zj-item62118.s
	//
	//****************************************	
	
	function OnUseItem(){

		//???? ?????? 62118 ????? 62119 ?? 1156
		
		$item = 62118
		$rider = 1156

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