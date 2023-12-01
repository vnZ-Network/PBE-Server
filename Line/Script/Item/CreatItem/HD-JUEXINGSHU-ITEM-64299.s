	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/03
	//		Author:??
	//		TaskName:HD-JUEXINGSHU-ITEM-64288.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64299 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book for Binding Void!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 6
			BC( "screen", "player", -1, "Only a Summoner can learn Binding Void!" )
			return
		endif
		
		$lv = GetSkillLevel( -1, 12033 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Cold Steel!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64299, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 12033, 1, 0 )
	
	}