		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/19
	//		Author:??
	//		TaskName:Item-63702.s
	//		TaskID:??????????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????1?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "It requires 1 free bag slot to open this gift pack.")
			return
		endif
		
	//????
		$item = SubPlayerInfo( -1 , "item" , 63702 , 1 )
			if $item != 0
				return
			endif
			
			
	//???????
		AddPlayerInfo( -1 , "item" , 64297 , 6 )
		AddPlayerInfo( -1 , "money" , 600000 )
		
		BC( "screen", "player", -1, "You have acquired the reward of Athena. " )
		PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini", 1 )
	}