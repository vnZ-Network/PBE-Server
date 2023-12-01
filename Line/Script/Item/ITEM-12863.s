	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/1
	//		Author:???
	//		TaskName:ITEM-12863.s
	//		TaskID:12863
	//
	//****************************************
	
	function OnUseItem(){
		
		$istask = IsTaskAccept(-1,361)
		if $istask != 0
			BC("screen","player",-1,"You don't have the quest for this item.")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		
		if $map == 543
			if $x > 69
				if $x < 73
					if $y > 146
						if $y < 150
							$result = SubPlayerInfo(-1,"item",12863,1)
							if $result == 0
								BC("screen","player",-1,"SQUEEEEAK! Uncle! Uncle!")
								PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
								AddMonsterByFloat(53141,$map,$x,$y,0,-1)
								AddPlayerInfo(-1,"item",12864,1)
								return
							endif
						else
							BC("screen","player",$id,"The Suspicious Rat isn't anywhere nearby...")
							return
						endif
					else
						BC("screen","player",$id,"The Suspicious Rat isn't anywhere nearby...")
						return
					endif
				else
					BC("screen","player",$id,"The Suspicious Rat isn't anywhere nearby...")
					return
				endif
			else
				BC("screen","player",$id,"The Suspicious Rat isn't anywhere nearby...")
				return
			endif
		else
			BC("screen","player",$id,"The Suspicious Rat isn't anywhere nearby...")
			return
		endif
		
	}