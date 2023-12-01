	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/22
	//		Author:??
	//		TaskName:ITEM-zhuanhuan-53848.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
		//???????ID
		$old = 53848
		//???????ID
		$new = 4673
		
		//???????????		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Sorry! Your material bag is full!" )
			return
		endif

		//??????????
		$old_count = GetPlayerInfo( -1, "item", $old )
		
		//??????200,??????200?,??????
		if $old_count > 200
			$del_count = 200
		else
			$del_count = $old_count
		endif
			
		//?????
		$del_result = SubPlayerInfo( -1, "item", $old, $del_count )
		//????????
		if $del_result == 0
			//?????????????
			$add_result = AddPlayerInfo( -1, "item", $new, $del_count )
			if $add_result == 0
				BC( "screen", "player", -1, "Congratulations! You now have Sealed Stardust in your material bag." )
			endif
		endif
	}