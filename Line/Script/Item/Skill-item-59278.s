	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-item-59278.s
	//		TaskID:??????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 1
			BC( "screen", "player", -1, "Sorry! Only Berzerkers can learn the Blade Shield skill." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 11
//			BC( "screen", "player", -1, "GUID:07300000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 115
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV115." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 8025 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59278, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 8025, 1, 0 )
		
	}