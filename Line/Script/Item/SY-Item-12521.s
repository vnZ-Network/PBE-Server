	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Item-12521.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
		$task = IsTaskAccept( -1, 1596 )
		if $task == 0
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 12521 )
		if $Item < 1
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Quest list is full. Please delete some quests and try again." )	
			return
		endif
				
		BC( "messagebox", "player", -1, "You have already taken the quest Rhea's Award" )
		AcceptTask( -1, 1596 )
		
	}