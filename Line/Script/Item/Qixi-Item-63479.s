	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/08/13
	//		Author：杨海勇
	//		TaskName：Qixi-Item-63479.s
	//		TaskID：蝴蝶结
	//
	//****************************************
	
	function OnUseItem(){
		
		//状态是否加成功
		$result = AddStatus(-1, 11423, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63479, 1 )
		endif
		
	}