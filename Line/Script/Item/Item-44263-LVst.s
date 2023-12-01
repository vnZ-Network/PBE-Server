  //		Modified:2012/6/15
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		
//4913	???LV1???
//4914	???LV1???

		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$item = GetPlayerInfo(-1,"item",44263)
		if $item < 10
			BC( "screen", "player", -1, "You don't have enough scrolls!" )
			return
		endif
		
		$itemid = RandomNumber(4913,4914)
		$del = SubPlayerInfo(-1,"item",44263,10)
		if $del == 0
			AddPlayerInfo(-1,"item",$itemid,1)
		endif


	}