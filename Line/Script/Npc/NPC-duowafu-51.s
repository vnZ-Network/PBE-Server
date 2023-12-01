	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/02
	//		Author:???
	//		TaskName:NPC-duowafu-51.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnRequest(){	
		$result = IsTaskAccept(-1, 1398 )
		if $result != 0
			DisableNpcOption(0)
			return
		endif
	}
	function OnOption0(){
		$Status = IsExistStatus(-1,11591)
		if $Status != 0
			BC( "dialogbox", "player", -1, "Listen to me very carefully, human. Alchemy Solution is a precious invention of ours. I don't see any reason that I should offer it to you this easily." )
			return
		endif
		//----30?????????-----
		$info = GetPlayerInfo( -1 , "item",6024)
		if $info < 30
			BC( "dialogbox", "player", -1, "I am so hungry! Hey, can you get me 30 Pineapples?! I don't have the money at the moment, but... what if I give you this Alchemy Solution in exchange? " )
			return
		else
			$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
			if $nullitem < 1
				BC( "messagebox", "player", -1, "Your bag is full!" )
				return
			endif
			$del = SubPlayerInfo ( -1 , "item" ,6024,30 )
			if  $del != 0
				return
			endif
			BC( "screen", "player", -1, "You have acquired Alchemy Solution" )
			AddPlayerInfo ( -1 ,"item",12473, 1 )
		endif

	}
	
	
	