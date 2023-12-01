	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/09
	//		Author:??
	//		TaskName:Skill-item-59321.s
	//		TaskID:???????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 6
			BC( "screen", "player", -1, "Sorry! Only Summoners can learn the Tortoise Pact skill." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 5
//			BC( "screen", "player", -1, "GUID:07306000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 100
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV100." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 12020 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59321, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 12020, 1, 0 )
		
	}