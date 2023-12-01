	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/11/8
	//		Author：祁晶
	//		TaskName：HD-leishengdezhufu-NPCchuansong.s
	//		TaskID：雷神祝福祭坛传入脚本
	//
	//****************************************
	
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
			
		if $level < 20
			DisableNpcOption(0)
		endif

		
	}
	//传进去
	
	function OnOption0(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 20
			return
		endif
		
		$result = FlyToMap( -1, 64, 51, 51 ,1)
	}