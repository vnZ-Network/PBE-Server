	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/09/18
	//		Author:???
	//		TaskName:Guoqing-Putiantongqing-59432.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 20
			BC( "screen", "player", -1, "Your character level is not over 20 yet." )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 59432 )
		if 	$count < 1
			BC( "screen", "player", -1, "You do not have enough Spring Festival Gift Boxes." )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 59432, 1)
		if $revalue != 0
			return
		endif
			
		if $level > 60		
			$m = RandomNumber ( 1, 10000 )
			//???
			if $m < 1500
				AddPlayerInfo(-1,"item",59312,1)
			endif
			//?????
			if $m < 2000
				if $m >= 1500
					AddPlayerInfo(-1,"item",59311,1)
				endif
			endif
			//????
			if $m < 2500
				if $m >= 2000
					AddPlayerInfo(-1,"item",2,1)
				endif
			endif
			//??????????
			if $m < 3000
				if $m >= 2500
					AddPlayerInfo(-1,"item",60500,1)
				endif
			endif
			if $m < 3500
				if $m >= 3000
					AddPlayerInfo(-1,"item",60501,1)
				endif
			endif
			if $m < 4000
				if $m >= 3500
					AddPlayerInfo(-1,"item",60502,1)
				endif
			endif
			//????
			if $m < 4500
				if $m >= 4000
					AddPlayerInfo(-1,"item",64179,1)
				endif
			endif
			//????
			if $m < 5000
				if $m >= 4500
					AddPlayerInfo(-1,"item",64040,1)
				endif
			endif
			if $m < 5500
				if $m >= 5000
					AddPlayerInfo(-1,"item",64041,1)
				endif
			endif
			if $m < 6000
				if $m >= 5500
					AddPlayerInfo(-1,"item",64042,1)
				endif
			endif
			if $m < 6500
				if $m >= 6000
					AddPlayerInfo(-1,"item",64043,1)
				endif
			endif
			if $m < 7000
				if $m >= 6500
					AddPlayerInfo(-1,"item",64044,1)
				endif
			endif
			//???????
			if $m < 7500
				if $m >= 7000
					AddPlayerInfo(-1,"item",2311,1)
				endif
			endif
			if $m < 8000
				if $m >= 7500
					AddPlayerInfo(-1,"item",2312,1)
				endif
			endif
			//??????
			if $m < 8300
				if $m >= 8000
					AddPlayerInfo(-1,"item",64245,1)
				endif
			endif
			if $m < 8500
				if $m >= 8300
					AddPlayerInfo(-1,"item",64246,1)
				endif
			endif
			//
			if $m < 9996
				if $m >= 8500
					AddPlayerInfo(-1,"item",59141,2)
				endif
			endif
			if $m < 9999
				if $m >= 9996
					AddPlayerInfo(-1,"item",63553,1)
				endif
			endif
			//??
			if $m == 10000
				$a = GetGlobalVar(8)
				$a = $a + 1
				if $a < 3
					AddPlayerInfo(-1,"item",62503,1)
					SetGlobalVar(8,$a)
				else
					AddPlayerInfo(-1,"item",63553,1)
				endif
			endif
		else
			$m = RandomNumber ( 1, 10000 )
			//???
			if $m < 8000
				AddPlayerInfo(-1,"item",59312,1)
			endif
			//?????
			if $m < 9500
				if $m >= 8000
					AddPlayerInfo(-1,"item",59311,1)
				endif
			endif
			//????
			if $m >= 9500
				AddPlayerInfo(-1,"item",2,1)
			endif
		endif
			
				

						
			
	
	}