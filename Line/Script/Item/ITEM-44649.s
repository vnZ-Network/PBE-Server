	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/1/29
	//		Author:??
	//		TaskName:ITEM-44649.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID()
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You have less than 4 open bag slots." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif

		$getplayervar = GetPlayerVar(-1,348)
		if $getplayervar == 0
			AddPlayerInfo(-1,"item",54290,1)
			SetPlayerVar(-1,348,1)
			BC("chat","player",-1,"It's your first time opening the Springtime Value Pack. You've received the card Spring of the Snake!")
			BC("dialogbox","player",-1,"It's your first time opening the Springtime Value Pack. You've received the card Spring of the Snake!")
		endif
		
//???????+7???	4	44378
//??????	2	5
//?? 10w???	2	59323
//?????	1	44542

		AddPlayerInfo($playerid,"item",44378,4)
		AddPlayerInfo($playerid,"item",5,2)
		AddPlayerInfo($playerid,"item",59323,2)
		AddPlayerInfo($playerid,"item",44672,1)

	}
		