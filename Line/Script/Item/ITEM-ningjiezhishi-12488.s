 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/27
	//		Author:???
	//		TaskName:ITEM-ningjiezhishi-12488.s
	//		TaskID:  
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		$a = GetPlayerInfo( -1, "item", 12488 )
		$b = GetPlayerInfo( -1, "item", 12489 )
		if $a < 1
			BC( "screen", "player", -1, "You need 1 Stone of Congealment to build the pillar of oceanic mercy." )
			return
		endif
		if $b < 10
			BC( "screen", "player", -1, "You need 10 Coral Essences to build the pillar of oceanic mercy." )
			return
		endif
		$info1 = SubPlayerInfo ( -1 , "item" ,12489, 10 )
		if  $info1 != 0
			return
		endif
		$info2 = SubPlayerInfo ( -1 , "item" ,12488, 1 )
		if  $info2 != 0
			return
		endif
		AddPlayerInfo( -1,"item" , 12490, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Pillar of Oceanic Mercy!" )
		
	}