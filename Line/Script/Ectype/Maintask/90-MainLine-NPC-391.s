 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:???
	//		TaskName:90-MainLine-NPC-391.s
	//		TaskID: ?? ????
	//
	//****************************************

	function OnRequest(){
	
		

	}
	
	function OnOption0(){
		
		$a = GetPlayerInfo( -1 , "item" , 12614 )
		if $a == 0
			BC( "screen" , "player" , -1 , "The Tree of Purity needs to be nourished with the Water of Purity to be reborn." )
			BC( "chat" , "player" , -1 , "The Tree of Purity needs to be nourished with the Water of Purity to be reborn." )
			return
		endif
		$info = SubPlayerInfo( -1, "item", 12614 , 1  )
		if $info != 0
			return
		endif
		ChangeNpcMode( -1 , 113 , 391 , ..\Data\Sceneobjs\huisuo_yewai_80\huisuo_yewai_80_shuD.pwm3 , "" )
		AddPlayerInfo( -1 , "item" , 12615 , 1 )
		BC( "screen" , "player" , -1 , "Your compassion is rewarded with the spirit of the world - the seed of the Tree of Life." )
		BC( "chat" , "player" , -1 , "Your compassion is rewarded with the spirit of the world - the seed of the Tree of Life." )
	}
	
	