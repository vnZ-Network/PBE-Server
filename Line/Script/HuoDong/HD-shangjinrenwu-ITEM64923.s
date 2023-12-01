	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/5
	//		Author:??
	//		TaskName:HD-shangjinrenwu-ITEM64923.s
	//		TaskID:????,???????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		//?????ID
		$item_id = 64923
		
		//????????ID
		$quest_id = 1166
		
		//??????ID
		$need_item = 12258
		
		
//---------------------------------------------------------------------------------------------		
		
		$level = GetPlayerInfo( -1, "level" )
	        //???????
	        if $level < 30
		BC( "messagebox", "player", -1, "Your level is too low to receive the quest." )
		return
	        endif
	
	        if $level > 50
		BC( "messagebox", "player", -1, "Your level is too high to receive the quest." )
		return
	        endif
	        
		$count = GetPlayerInfo( -1, "item", $need_item)
		if $count <= 0
			BC( "screen", "player", -1, "You do not have the Deed of Trust for the quest." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You got so many quests,please abandon some to get new ones." )
			return
		endif
		
		$result = IsTaskAccept( -1, $quest_id )
		if $result == 0
			BC( "chat", "player", -1, "You have received the quest." )
			return
		endif
		
		$result = AcceptTask ( -1, $quest_id )
		if $result == 0
			SubPlayerInfo( -1, "item", $item_id, 1 )
		endif
		


	}