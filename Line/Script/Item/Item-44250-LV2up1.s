  //		Modified:2012/6/15
	//		Author:???
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
//4913	???LV1???
//4914	???LV1???

//4917	???LV2?????
//4918	???LV2?????

//4919	???LV3?????
//4920	???LV3?????

//4921	???LV4?????
//4922	???LV4?????

//44250	??LV2???????
//44251	??LV2???????
//44252	??LV3???????
//44253	??LV3???????
//44254	??LV4???????
//44255	??LV4???????

		$item = GetPlayerInfo(-1,"item",4913)
		if $item < 5
			BC( "screen", "player", -1, "You need Blasting Flame Glyph LV1 x5 before you can upgrade!" )
			return
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$delete1 = SubPlayerInfo(-1,"item",4913,5)
		$delete2 = SubPlayerInfo(-1,"item",44250,1)
		$delete = $delete1 + $delete2
		if $delete == 0
			AddPlayerInfo(-1,"item",4917,1)
		endif


	}