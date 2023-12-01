	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:HD-JUEXINGSHU-ITEM-64258.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64258 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book of Black Ice!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 3
			BC( "screen", "player", -1, "Only an Slayer can learn Black Ice!" )
			return
		endif
		
		$lv = GetSkillLevel( -1, 8220 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Black Ice!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64258, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 8220, 1, 0 )
	
	}