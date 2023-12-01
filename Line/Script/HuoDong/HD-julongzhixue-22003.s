    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/07
	//		Author:??
	//		TaskName:HD-julongzhixue-22003.s
	//		TaskID:????-22003??????
	//
	//****************************************
	function OnDead(){
	
	//??????
		//??????????ID
		$dragon_squama_drop = 63132
		//????????ID 
		$dragon_squama_need = 63131
		//?????????????
		$need_level = 5
		//??????????,1-36?
		$need_squama_level = 2
		//??????????,1-36?
		$drop_squama_level = $need_squama_level + 1
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
			//??????????????
			$count = GetPlayerInfo( $teamplayer1_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer1_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer1_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer1_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer1_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer1_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
		
		
		if $teamplayer2_id != -1
			$level = GetPlayerInfo($teamplayer2_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer2_id )
			//??????????????
			$count = GetPlayerInfo( $teamplayer2_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer2_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer2_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer2_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer2_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer2_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
		
		
		
		if $teamplayer3_id != -1
			$level = GetPlayerInfo($teamplayer3_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer3_id )
			//??????????????
			$count = GetPlayerInfo( $teamplayer3_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer3_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer3_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer3_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer3_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer3_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
		
		
		
		if $teamplayer4_id != -1
			$level = GetPlayerInfo($teamplayer4_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer4_id )
			//??????????????
			$count = GetPlayerInfo( $teamplayer4_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer4_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer4_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer4_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer4_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer4_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
		
		
		
		if $teamplayer5_id != -1
			$level = GetPlayerInfo($teamplayer5_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer5_id )
			//??????????????
			$count = GetPlayerInfo( $teamplayer5_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer5_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer5_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer5_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer5_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer5_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
		
		
		
		
		if $teamplayer6_id != -1
			$level = GetPlayerInfo($teamplayer6_id,"level")
			//????????.????????????
			$len = GetPlayerDistance( -1 , $teamplayer6_id )
			//??????????????
			$count = GetPlayerInfo( $teamplayer6_id, "item", $dragon_squama_need )
			//????????.???????
			if $len <= 30
				//??????????,??????
				if $level < $need_level
					if $count > 0
						BC( "chat", "player", $teamplayer6_id, "You cannot upgrade your Dragonscale." )
					endif
				else
					if $count > 0
						$ran_number = RandomNumber(1 , 16400)
						if $ran_number == 1
							AddPlayerInfo( $teamplayer6_id, "item",63243, 1 )
						endif
						SubPlayerInfo( $teamplayer6_id ,"item",$dragon_squama_need, 1 )
						AddPlayerInfo( $teamplayer6_id, "item",$dragon_squama_drop, 1 )
						BC( "screen", "player", $teamplayer6_id, "Your level ", $need_squama_level ," scale is dipped into dragon blood upgrading to level ",$drop_squama_level," scale!" )
					endif
				endif
			else
			endif
		endif
		
	}