	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/08/13
	//		Author：杨海勇
	//		TaskName：Qixi-Item-63478.s
	//		TaskID：同心结
	//
	//****************************************
	
	function OnUseItem(){
		
		//状态是否加成功
		$result = AddStatus(-1, 11422, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63478, 1 )
		endif

	}