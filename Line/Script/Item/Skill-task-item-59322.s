	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/09
	//		Author:??
	//		TaskName:Skill-task-item-59322.s
	//		TaskID:????-???
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 6
			BC( "screen", "player", -1, "Sorry! Only Summoners can learn Annihilation." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 11
//			BC( "screen", "player", -1, "GUID:07312000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 115
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV115." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 12021 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59322, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 12021, 1, 0 )
		
	}