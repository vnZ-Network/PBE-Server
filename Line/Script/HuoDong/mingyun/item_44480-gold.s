	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){

		$playerid = GetPlayerID()
		
		$keyid = GetPlayerInfo( -1, "item", 44481 )
		//?????????
		if $keyid < 1
			BC( "dialogbox", "player", -1, "Insufficient Gold-gilded Keys!\nThey can be purchased from the Marketplace." )
			return
		endif
		
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"You need at least 2 empty slots in your bag!")
			return
		endif

		$nullitem = GetPlayerInfo($playerid,"nullitem",1)
		if $nullitem < 2
			BC("screen","player",-1,"Insufficient material bag slots!")
			return
		endif

		$del_count = SubPlayerInfo( -1, "item", 44480, 1 )
		if $del_count != 0
			return
		endif
		$del_count = SubPlayerInfo( -1, "item", 44481, 1 )
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo($playerid,"item",4995,5)
		AddPlayerInfo($playerid,"item",5,2)
		
		$randombuff = RandomNumber(0,9999)
		$isget = GetGlobalVar(123)
		$isget += 1
		$giftbuff = $isget / 15
		$giftbuff += 1
		if $randombuff < $giftbuff
			AddPlayerInfo($playerid,"item",62618,1)
			#name = GetPlayerInfo($playerid,"name")
			BC("chat","servergroup",-1,"Congratulations! Player ",#name," obtained an Overlord Octopus Egg from the Seafloor Gold Chest!")
			BC("screen","servergroup",-1,"Congratulations! Player ",#name," obtained an Overlord Octopus Egg from the Seafloor Gold Chest!")
			$isget = 0
		endif
		SetGlobalVar(123,$isget)
//		BC("screen","player",-1," = ",$isget)
}