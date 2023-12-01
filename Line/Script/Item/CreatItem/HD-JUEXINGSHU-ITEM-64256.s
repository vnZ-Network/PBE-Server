	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:HD-JUEXINGSHU-ITEM-64256.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
	//???????????
		$count = GetPlayerInfo( -1, "item", 64256 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the Skill Book of Cold Steel!" )
			return
		endif
		
		$info = GetPlayerInfo( -1, "profession" )
		if $info != 1
			BC( "screen", "player", -1, "Only a Berzerker can learn Cold Steel!" )
			return
		endif
			
		$lv = GetSkillLevel( -1, 8021 )
		if $lv > 0
			BC( "screen", "player", -1, "You have learned Cold Steel!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64256, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		$skill = LearnSkill( -1, 8021, 1, 0 )
	
	}