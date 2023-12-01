	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-task-item-59273.s
	//		TaskID:????-??
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 1
			BC( "screen", "player", -1, "Sorry! Only Berzerkers can learn the Sword Flurry skill." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 5
//			BC( "screen", "player", -1, "GUID:07307000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 100
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV100." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 8022 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59273, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 8022, 1, 0 )
		
	}