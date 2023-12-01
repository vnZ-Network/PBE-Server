	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/13
	//		Author:??
	//		TaskName:ITEM-kaibaoguo70.s
	//		TaskID:?????
	//
	//****************************************



	function OnUseItem(){
	

		//?????????????????
		$count = GetPackMaxCount(-1 , 0)
		if $count == 20
			BC( "screen", "player", -1, "You cannot use that when you have less than 25 slots in your bag." )
			return
		endif
		if $count == 70
			BC( "screen", "player", -1, "You have already extended your bag by other means. You cannot extend it anymore." )
			return
		endif
		//?????,???????5???
		$a = $count % 5
		if $a != 0
			BC( "screen", "player", -1, "System error! Unable to extend bag now. Please contact the customer service." )
			return
		endif
		
		$is_revalue = SubPlayerInfo(-1 ,"item" ,70 , 1)
		if $is_revalue != 0
			return
		endif
		//????
		$newcount = $count + 5
		SetPackMaxCount(-1 , 0 , $newcount)
		BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount,)

	}
