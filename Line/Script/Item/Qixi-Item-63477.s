	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/08/13
	//		Author：杨海勇
	//		TaskName：Qixi-Item-63477.s
	//		TaskID：梅花结
	//
	//****************************************
	
	function OnUseItem(){
		
		//状态是否加成功
		$result = AddStatus(-1, 11421, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63477, 1 )
		endif
	}