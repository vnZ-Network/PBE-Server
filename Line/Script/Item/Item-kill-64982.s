	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/25
	//		Author:???
	//		TaskName:Item-kill-64982.s
	//		TaskID:?????-????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$Levelmin = 35
		$Levelmax = 200
		$QuestId = 1650
		$ItemId1 = 64982
		#ItemName = "Dragon Emperor's Royal Seal"
		//??????ID
		$need_item = 12259
						
		//------------------
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < $Levelmin
			BC( "screen", "player", -1, "Level too low to acquire this quest." )
			return
		endif
		
		if $level > $Levelmax
			BC( "screen", "player", -1, "Level too high to acquire this quest." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", $need_item )
		if $count <= 0
			BC( "screen", "player", -1, "You don't have the requisite Deed of Trust for that quest." )
			return
		endif
		
		$task_count = GetTaskCount ( -1 )
		if $task_count >= 20
			BC( "screen", "player", -1, "Quest list is full. Cannot acquire new quests." )
			return
		endif
		
		$result = IsTaskAccept( -1, $QuestId )
		if $result == 0
			BC( "screen", "player", -1, "You have acquired that quest already." )
			return	
		endif
		
		$result = SubPlayerInfo( -1, "item", $ItemId1, 1 )
		if $result != 0
			return
		endif
		
		AcceptTask ( -1, $QuestId )
		BC( "messagebox", "player", -1, "You have acquired Advanced Consignment:",#ItemName,"." )
		
	}	