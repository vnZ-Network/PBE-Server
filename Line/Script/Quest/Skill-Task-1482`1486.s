	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-Task-1482`1486.s
	//		TaskID:????
	//****************************************
	
	function OnTaskDone(){
	
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			LearnSkill( -1, 8022, 1, 0 )
			BC( "chat", "player", -1, "Through hard training, you have learned the Master Skill - Sword Flurry." )
			BC( "screen", "player", -1, "Through hard training, you have learned the Master Skill - Sword Flurry." )
			return
		endif
		if $profession == 2
			LearnSkill( -1, 8121, 1, 0 )
			BC( "chat", "player", -1, "Through hard training, you have learned the Master Skill - Consecration." )
			BC( "screen", "player", -1, "Through hard training, you have learned the Master Skill - Consecration." )
			return
		endif
		if $profession == 3
			LearnSkill( -1, 8221, 1, 0 )
			BC( "chat", "player", -1, "Through hard training, you have learned the Master Skill - Fission." )
			BC( "screen", "player", -1, "Through hard training, you have learned the Master Skill - Fission." )
			return
		endif
		if $profession == 4
			LearnSkill( -1, 8322, 1, 0 )
			BC( "chat", "player", -1, "Through hard training, you have learned the Master Skill - Magic Aura." )
			BC( "screen", "player", -1, "Through hard training, you have learned the Master Skill - Magic Aura." )
			return
		endif
		if $profession == 5
			LearnSkill( -1, 8422, 1, 0 )
			BC( "chat", "player", -1, "Through hard training, you have learned the Master Skill - Holy Infusion. " )
			BC( "screen", "player", -1, "Through hard training, you have learned the Master Skill - Holy Infusion. " )
			return
		endif
		if $profession == 6
			LearnSkill( -1, 12020, 1, 0 )
			BC( "chat", "player", -1, "You have mastered Tiger Pact." )
			BC( "screen", "player", -1, "You have mastered Tiger Pact." )
			return
		endif
	
	}