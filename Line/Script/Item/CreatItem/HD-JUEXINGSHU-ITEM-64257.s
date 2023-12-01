	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:HD-JUEXINGSHU-ITEM-64257.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64257 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book of Frost Flare!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 2
			BC( "screen", "player", -1, "Only a Champion can learn Frost Flare!" )
			return
		endif
		
		$lv = GetSkillLevel( -1, 8120 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Frost Flare!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64257, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 8120, 1, 0 )
	
	}