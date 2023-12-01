	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/05
	//		Author:?? ???
	//		TaskName:NPC-rongyuxipk.s
	//		TaskID:????PK????
	//
	//****************************************
	
	
	function OnRequest(){
//------????-------------		
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )

		if $prestige < 2000
			if $prestige >= 0
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
			endif
		endif
		if $prestige < 10000
			if $prestige >= 2000
				DisableNpcOption(2)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
			endif
		endif
		if $prestige < 22000
			if $prestige >= 10000
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(5)
				DisableNpcOption(6)
			endif
		endif
		if $prestige < 30000
			if $prestige >= 22000
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(6)
			endif
		endif
		if $prestige >= 30000
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
	}

	function OnOption0(){									
	
	$pk = GetPlayerInfo(-1 , "prestige" , 0)
	if $pk <= 0
		BC( "screen", "player", -1, "I don't feel any corruption of slaughter on you. You don't need to wash off your guilt." )
		return
	endif
	
	$goodness = GetPlayerInfo(-1 , "prestige" , 29)
	if $goodness < 1000
		BC( "screen", "player", -1, "Unable to proceed. Your Charity is less than 1000." )
		return
	endif
	
	$money = GetPlayerInfo(-1 , "money" )
	if $money < 5000
		BC( "screen", "player", -1, "Unable to proceed. Your cash is less than 5000 coins." )
		return
	endif
	
	
	//?????	
	SubPlayerInfo(-1 , "prestige", 29, 1000)
	SubPlayerInfo(-1 , "money", 5000)
	//??PK?
	if $pk >= 10
		SubPlayerInfo(-1 , "prestige", 0, 10)
		BC( "screen", "player", -1, "The bloodthirsty soul is leaving your body." )	
	else
		SubPlayerInfo(-1 , "prestige", 0, $pk)
		BC( "screen", "player", -1, "You are clear of the corruption of the will of slaughter." )	
	endif
		
	
	}
	
	function OnOption1(){
		
		$Info = GetPlayerInfo( -1, "prestige", 29 )
		if $Info > 99
			$Sub0 = SubPlayerInfo( -1, "prestige", 29, 100 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 63244, 1 )
			return
		else
			BC( "dialogbox", "player", -1, "Your Charity is lower than 100." )
			return
		endif
		
	}		
								
	function OnOption2(){
		$id = GetPlayerID()
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $prestige < 0
			return
		endif
		if $prestige >= 2000
			return
		endif
		$Score = GetPlayerBattleScore( $id )
		if $Score < 2000
			BC( "dialogbox", "player", -1, "You have less than 2000 Glory." )
			return
		endif
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		AddPlayerBattleScore( $id , -2000 )
		AddPlayerInfo( -1 , "item", 64295 , 1 )
		AddPlayerInfo( -1 , "prestige", 10 , 100 )
		BC( "screen", "player", -1, "You have used 2000 Honor points." )
	}
	
	function OnOption3(){
		$id = GetPlayerID()
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $prestige < 2000
			return
		endif
		if $prestige >= 10000
			return
		endif
		
		$Score = GetPlayerBattleScore( $id )
		if $Score < 1800
			BC( "dialogbox", "player", -1, "You have less than 1800 Glory." )
			return
		endif
		
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		AddPlayerBattleScore( $id , -1800 )
		AddPlayerInfo( -1 , "item", 64295 , 1 )
		AddPlayerInfo( -1 , "prestige", 10 , 100 )
		BC( "screen", "player", -1, "You have used 1800 Honor points." )
		
	}
	
	function OnOption4(){
		$id = GetPlayerID()
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $prestige < 10000
			return
		endif
		if $prestige >= 22000
			return
		endif
		$Score = GetPlayerBattleScore( $id )
		if $Score < 1500
			BC( "dialogbox", "player", -1, "You have less than 1500 Glory." )
			return
		endif
		
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		AddPlayerBattleScore( $id , -1500 )
		AddPlayerInfo( -1 , "item", 64295 , 1 )
		AddPlayerInfo( -1 , "prestige", 10 , 100 )
		BC( "screen", "player", -1, "You have used 1500 Honor points." )
		
	}
	
	function OnOption5(){
		$id = GetPlayerID()
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $prestige < 22000
			return
		endif
		if $prestige >= 30000
			return
		endif
		$Score = GetPlayerBattleScore( $id )
		if $Score < 1250
			BC( "dialogbox", "player", -1, "You have less than 1250 Glory." )
			return
		endif
		
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		AddPlayerBattleScore( $id , -1250 )
		AddPlayerInfo( -1 , "item", 64295 , 1 )
		AddPlayerInfo( -1 , "prestige", 10 , 100 )
		BC( "screen", "player", -1, "You have used 1250 Honor points." )
		
	}
	function OnOption6(){
		$id = GetPlayerID()
		$prestige = GetPlayerInfo( -1 , "prestige", 10 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $prestige < 30000
			return
		endif
		$Score = GetPlayerBattleScore( $id )
		if $Score < 1000
			BC( "dialogbox", "player", -1, "You have less than 1000 Glory." )
			return
		endif
		
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		AddPlayerBattleScore( $id , -1000 )
		AddPlayerInfo( -1 , "item", 64295 , 1 )
		AddPlayerInfo( -1 , "prestige", 10 , 100 )
		BC( "screen", "player", -1, "You have used 1000 Honor points." )
	}	