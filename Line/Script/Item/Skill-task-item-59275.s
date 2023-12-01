	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-task-item-59275.s
	//		TaskID:????-??
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 3
			BC( "screen", "player", -1, "Sorry! Only Slayers can learn the Fission skill." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 5
//			BC( "screen", "player", -1, "GUID:07309000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 100
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV100." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 8221 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59275, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 8221, 1, 0 )
		
	}