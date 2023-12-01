	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-item-59284.s
	//		TaskID:????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 5
//			BC( "screen", "player", -1, "GUID:07305000000" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 100
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV100." )
			return
		endif
		
		$skill1 = GetSkillLevel( -1, 8026 )
		if $skill1 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$skill2 = GetSkillLevel( -1, 8124 )
		if $skill2 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$skill3 = GetSkillLevel( -1, 8223 )
		if $skill3 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$skill4 = GetSkillLevel( -1, 8323 )
		if $skill4 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$skill5 = GetSkillLevel( -1, 8425 )
		if $skill5 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif

		$skill6 = GetSkillLevel( -1, 12019 )
		if $skill5 > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 59284, 1 )
		if $result != 0
			return
		endif
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			LearnSkill( -1, 8026, 1, 0 )
		endif
		if $profession == 2
			LearnSkill( -1, 8124, 1, 0 )
		endif
		if $profession == 3
			LearnSkill( -1, 8223, 1, 0 )
		endif
		if $profession == 4
			LearnSkill( -1, 8323, 1, 0 )
		endif
		if $profession == 5
			LearnSkill( -1, 8425, 1, 0 )
		endif
		if $profession == 6
			LearnSkill( -1, 12019, 1, 0 )
		endif		
		BC( "chat", "player", -1, "You've learned the Sacred Armor skill." )
		BC( "screen", "player", -1, "You've learned the Sacred Armor skill." )
		return
		
	}