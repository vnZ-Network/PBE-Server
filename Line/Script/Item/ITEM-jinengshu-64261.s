 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/27
	//		Author:???
	//		TaskName:ITEM-jinengshu-64261.s
	//		TaskID:????
	//****************************************


	function OnUseItem(){
		
		$skillbook = 64261
		$skillID = 8501
		$skillLevel = 1
		$condition = 0
		$lv = GetSkillLevel( -1, $skillID )
		if $lv != 0
			BC( "screen", "player", -1, "You have learned this skill." )
			return
		endif
		$del_cangbaotu_info = SubPlayerInfo ( -1 , "item" , $skillbook , 1 )
		if  $del_cangbaotu_info != 0
			return
		endif
		LearnSkill( -1, $skillID, $skillLevel, $condition )
		BC( "screen", "player", -1, "You have learned a new skill Stealth" )
	}