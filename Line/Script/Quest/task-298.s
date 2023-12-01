	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/2
	//		Author:???
	//		TaskName:task-298.s
	//		TaskID:
	//
	//****************************************
	
	
	function OnTaskDone(){
		$fieldlevel = GetFieldLevel( -1 )	
		
		$Title = HaveTitle( -1, 81 )		
		if $Title != 0	
			BC( "chat", "player", -1, "You are still not a Creator." )
			return
		endif	
		
		if $fieldlevel > 0
			BC( "chat", "player", -1, "You have activated Exalted. " )
			return
		endif	
		
			//????????????1?
		$result = ActivateFieldLevel( -1 )	
		BC( "chat", "player", -1, "Congratulations! You have activated Exalted and gained Odin's Blessing." )
		PlayEffect(-1,"common\shanguangzhadan\fire\tx_shanguangzhadan_fire.ini", 0)
		PlayEffect(-1,"common\shengji\tx_shengji_fire.ini", 0)
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 0 )
		
	}
