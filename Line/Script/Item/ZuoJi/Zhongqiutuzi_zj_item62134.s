	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/18
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:Zhongqiutuzi_zj_item62134.s
	//
	//****************************************	
	
	function OnUseItem(){

		//???? ???? 62134  ?? 1186
		
		$item = 62134
		$rider = 1186

		$r = AddRider(-1,$rider)
			if $r != 0
				BC( "screen", "player", -1, "Your mount list is full!" )
				return
			endif
			
		$revaluet = SubPlayerInfo( -1, "item", $item, 1 )
			if $revaluet != 0
				BC( "screen", "player", -1, "Your mount list is full!" )
				return
			endif
		
		BC( "screen", "player", -1, "A new mount has been added to your mount list!" )
			
	
}