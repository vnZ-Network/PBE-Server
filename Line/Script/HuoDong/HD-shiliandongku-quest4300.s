	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/10/14
	//		Author：祁晶
	//		TaskName：HD-shiliandongku-quest4300.s
	//		TaskID：试炼洞窟30分钟后任务触发的传送出地图脚本
	//
	//****************************************
	
	
	
	function OnTaskFailedDone(){
		
		$map_id = GetPlayerInfo( -1, "mapid")
		//BC( "chat", "player", -1, "test:",$map_id )
		if $map_id == 114
			FlyToMap( -1, 116, 50, 35 )
			return
		endif
		if $map_id == 115
			FlyToMap( -1, 116, 50, 35 )
			return
		endif
	}
