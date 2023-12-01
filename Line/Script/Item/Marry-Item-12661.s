	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Marry-Item-12661.s
	//		TaskID:????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$item = GetPlayerInfo( -1, "item", 12661 )
		if $item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 12661, 1 )
		if $Sub != 0
			return
		endif
		
		PlayEffect(-1,"common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini")
		AddPlayerInfo( -1, "item", 12659, 1 )
		
	}	