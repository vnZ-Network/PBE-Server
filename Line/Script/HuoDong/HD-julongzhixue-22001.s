    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/07
	//		Author:??
	//		TaskName:HD-julongzhixue-22001.s
	//		TaskID:????-22001??????
	//
	//****************************************
	function OnDead(){
		
	//1????????
	
	//??????
		//??????????ID
		$dragon_squama_drop = 63130
		//????????ID 
		//$dragon_squama_need = 0
		//?????????????
		$need_level = 1
		//??????????,1-36?
		//$need_squama_level = 1
		//??????????,1-36?
		//$drop_squama_level = 1
	//????????	
		
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id != -1
			$level = GetPlayerInfo($teamplayer1_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer1_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer1_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer1_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer1_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer1_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif

		if $teamplayer2_id != -1
			$level = GetPlayerInfo($teamplayer2_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer2_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer2_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer2_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer2_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer2_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif
		
		
		if $teamplayer3_id != -1
			$level = GetPlayerInfo($teamplayer3_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer3_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer3_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer3_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer3_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer3_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif
		
		if $teamplayer4_id != -1
			$level = GetPlayerInfo($teamplayer4_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer4_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer4_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer4_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer4_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer4_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif
		
		
		if $teamplayer5_id != -1
			$level = GetPlayerInfo($teamplayer5_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer5_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer5_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer5_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer5_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer5_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif
		
		
		if $teamplayer6_id != -1
			$level = GetPlayerInfo($teamplayer6_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer6_id )

			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level >= $need_level
					$bag_count = GetPlayerInfo( $teamplayer6_id, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "chat", "player", -1, "Your bag is full, you dropped your Dragonscale" )
					else
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer6_id, "item",63243, 1 )
						endif
						AddPlayerInfo( $teamplayer6_id, "item",$dragon_squama_drop, 1 )
						BC( "chat", "player", $teamplayer6_id, "You got a Dragonscale dipped in the blood and ashes of the dragon." )
					endif
				endif
			else
			endif
		endif

	}