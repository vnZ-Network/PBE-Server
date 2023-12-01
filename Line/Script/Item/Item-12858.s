	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/30
	//		Author:???
	//		TaskName:Item-12858.s
	//		TaskID:12858-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$istask = IsTaskAccept(-1,346)
		if $istask != 0
			BC("screen","player",-1,"You haven't accepted the quest yet, that item can't be used!")
			return
		endif
		
		$daoju1 = GetPlayerInfo(-1,"item",12858)
		$daoju2 = GetPlayerInfo(-1,"item",12859)
		if $daoju1 > 0
			if $daoju2 > 0
				$result1 = SubPlayerInfo(-1,"item",12858,1)
				$result2 = SubPlayerInfo(-1,"item",12859,1)
				if $result1 == 0
					if $result2 == 0
						AddPlayerInfo(-1,"item",12857,1)
					endif
				endif
			else
				BC("screen","player",-1,"You don't have the Right half of the Titan Beacon, this item can't be used!")
				return
			endif
		else
			BC("screen","player",-1,"You don't have the Left half of the Titan Beacon, this item can't be used!")
			return
		endif
	}