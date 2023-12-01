	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-7-20
	//		Author:
	//		TaskName:
	//		TaskID:item-59883
	//
	//****************************************
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 4042 )
		$nowtime = GetSystemTime( "yday" )
		if $time == $nowtime
			BC( "screen", "player", -1, "This item can only be used once per day." )
			return
		endif
		
		$Sub1 = SubPlayerInfo( -1, "item", 59883, 1 )
		if $Sub1 != 0
			return
		endif
		
		SetPlayerVar( -1 , 4042 , $nowtime )
		AddPlayerInfo( -1, "exp", 200000000 )
		BC( "screen", "player", -1, "You take in the power of the Guardian Essence, and gain 200,000,000 EXP!" )
		
		
		
	}