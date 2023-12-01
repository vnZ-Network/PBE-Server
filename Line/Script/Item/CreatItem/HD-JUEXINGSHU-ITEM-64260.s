	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:HD-JUEXINGSHU-ITEM-64260.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64260 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book Binding Void!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 5
			BC( "screen", "player", -1, "Only a Heretic can learn Binding Void!" )
			return
		endif
		
		$lv = GetSkillLevel( -1, 8421 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Binding Void!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64260, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 8421, 1, 0 )
	
	}