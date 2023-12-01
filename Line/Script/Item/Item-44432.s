	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/17
	//		Author:??
	//		TaskName:Item-44432.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 44432 )
		if $Item < 1
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44432, 1 )
		if $SubItem != 0
			return
		endif
		#name = GetPlayerInfo( -1, "name" )
//		AddPlayerInfo( -1, "prename", 19912 )
		AddPlayerInfo( -1, "prename", 19913 )
		BC( "screen", "player", -1, " received the title BOI Fearless Warrior!")
		BC( "scrollbar", "servergroup", -1, "The hero ",#name," was the first to kill Hades in the Netherworld Returns event, and was bestowed the one-of-a-kind title: BOI Fearless Warrior!")
	}