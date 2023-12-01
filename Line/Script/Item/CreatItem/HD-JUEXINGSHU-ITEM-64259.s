	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:HD-JUEXINGSHU-ITEM-64259.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64259 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book of Frozen Flame!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 4
			BC( "screen", "player", -1, "Only a Magus can learn Frozen Flame!" )
			return
		endif
		
		$lv = GetSkillLevel( -1, 8320 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Frozen Flame!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64259, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 8320, 1, 0 )
	
	}