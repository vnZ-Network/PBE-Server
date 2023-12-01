	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:Marry-NPC-1975.s
	//		TaskID:????(?)
	//
	//****************************************
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			DisableNpcOption(0)
		endif
		
		$item = GetPlayerInfo( -1, "item", 52100 )
		if $item > 0
			DisableNpcOption(1)
		endif
		
		$temp_sex = GetPlayerInfo( -1, "sex" )
		if $temp_sex == 0
			$result = IsTaskAccept( -1, 1595 )
			if $result == 0
				DisableNpcOption(0)
			endif
		
			$donetask = IsTaskDone( -1, 1595 )
			if $donetask == 0
				DisableNpcOption(0)
			endif
		
			$donetask1 = IsTaskDone( -1, 1654 )
			if $donetask1 != 0
				DisableNpcOption(1)
			endif
		else
			$result = IsTaskAccept( -1, 1655 )
			if $result == 0
				DisableNpcOption(0)
			endif
		
			$donetask = IsTaskDone( -1, 1655 )
			if $donetask == 0
				DisableNpcOption(0)
			endif
		
			$donetask1 = IsTaskDone( -1, 1656 )
			if $donetask1 != 0
				DisableNpcOption(1)
			endif
		endif
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			$Task1 = IsTaskDone( -1, 1595 )
			if $Task1 == 0
				$Task2 = IsTaskAccept( -1, 1654 )
				if $Task2 == 0
					DisableNpcOption(2)
				endif
				$Task2 = IsTaskDone( -1, 1654 )
				if $Task2 == 0
					DisableNpcOption(2)
				endif
			else
				DisableNpcOption(2)
			endif
		endif
		
		if $sex == 1
			$Task3 = IsTaskDone( -1, 1655 )
			if $Task3 == 0
				$Task4 = IsTaskAccept( -1, 1656 )
				if $Task4 == 0
					DisableNpcOption(2)
				endif
				$Task4 = IsTaskDone( -1, 1656 )
				if $Task4 == 0
					DisableNpcOption(2)
				endif
			else
				DisableNpcOption(2)
			endif
		endif
		
	}
	
	
	function OnOption0(){		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			BC( "dialogbox", "player", -1, "You are not LV50 yet." )
			return
		endif
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count != 2
			BC( "dialogbox", "player", -1, "You must form a 2-member-party with your friend before you take the quest." )
			return
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 15
			//?????????????
			BC( "dialogbox", "player", -1, "One or more of your party members is too far from you." )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$temp_sex = GetPlayerInfo( $teamplayer1_id, "sex" )
		$temp_sex1 = GetPlayerInfo( $teamplayer2_id, "sex" )
		if $temp_sex == $temp_sex1
			BC( "dialogbox", "player", -1, "A marriage is available between two characters of different genders." )
			return
		endif
		
		$Marry = CheckRelation( $teamplayer1_id, $teamplayer2_id )
		if $Marry == 3
			BC( "dialogbox", "player", -1, "You have already married." )
			return
		endif
		
		//1???
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif
			$player = MeetMarriageReq( $teamplayer1_id )
			if $player != 0
				BC( "dialogbox", "player", -1, "Sorry! You haven't reached the engagement requirements as follows:\n1. Friendship has reached at least 10000\n2. Each are of the opposite sex\n3. Neither are already married\n4. Each have reached at least LV50." )
				return
			endif		
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif
			$player = MeetMarriageReq( $teamplayer2_id )
			if $player != 0
				BC( "dialogbox", "player", -1, "Sorry! You haven't reached the engagement requirements as follows:\n1. Friendship has reached at least 10000\n2. Each are of the opposite sex\n3. Neither are already married\n4. Each have reached at least LV50." )
				return
			endif	
		endif
		//-------------------------------------------
//		$result = IsTaskAccept( -1, 1595 )
//		if $result == 0
//			BC( "dialogbox", "player", -1, "GUID:08097000010" )
//			return
//		endif
//		
//		$donetask = IsTaskDone( -1, 1595 )
//		if $donetask == 0
//			BC( "dialogbox", "player", -1, "GUID:08097000011" )
//			return
//		endif
		if $temp_sex == 0
			$donetask = IsTaskDone( $teamplayer1_id, 1595 )
			if $donetask == 0
				BC( "dialogbox", "player", $teamplayer1_id, "You have already finished the quest. Please help your friend finish it." )
			else
				AcceptTask( $teamplayer1_id, 1595 )
			endif
		else
			$donetask = IsTaskDone( $teamplayer1_id, 1655 )
			if $donetask == 0
				BC( "dialogbox", "player", $teamplayer1_id, "You have already finished the quest. Please help your friend finish it." )
			else
				AcceptTask( $teamplayer1_id, 1655 )
			endif
		endif
		if $temp_sex1 == 0
			$donetask = IsTaskDone( $teamplayer2_id, 1595 )
			if $donetask == 0
				BC( "dialogbox", "player", $teamplayer2_id, "You have already finished the quest. Please help your friend finish it." )
			else
				AcceptTask( $teamplayer2_id, 1595 )
			endif
		else
			$donetask = IsTaskDone( $teamplayer2_id, 1655 )
			if $donetask == 0
				BC( "dialogbox", "player", $teamplayer2_id, "You have already finished the quest. Please help your friend finish it." )
			else
				AcceptTask( $teamplayer2_id, 1655 )
			endif
		endif
		
	}
	
	function OnOption1(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			BC( "dialogbox", "player", -1, "You are not LV50 yet." )
			return
		endif
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count != 2
			BC( "dialogbox", "player", -1, "Stay in a 2-member-party with your love to get betrothed." )
			return
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 15
			//?????????????
			BC( "dialogbox", "player", -1, "One or more of your party members is too far from you." )
			return
		endif
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$temp_sex = GetPlayerInfo( $teamplayer1_id, "sex" )
		$temp_sex1 = GetPlayerInfo( $teamplayer2_id, "sex" )
		if $temp_sex == $temp_sex1
			BC( "dialogbox", "player", -1, "Only characters of opposite genders can get betrothed." )
			return
		endif
		
		$Marry = CheckRelation( $teamplayer1_id, $teamplayer2_id )
		if $Marry == 3
			BC( "dialogbox", "player", -1, "You have already married." )
			return
		endif
		
		//1???
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif
			$player = MeetMarriageReq( $teamplayer1_id )
			if $player != 0
				BC( "dialogbox", "player", -1, "Sorry! You haven't reached the engagement requirements as follows:\n1. Friendship has reached at least 10000\n2. Each are of the opposite sex\n3. Neither are already married\n4. Each have reached at least LV50." )
				return
			endif
			$temp_sex = GetPlayerInfo( $teamplayer1_id, "sex" )
			if $temp_sex == 0
				$donetask = IsTaskDone( $teamplayer1_id, 1654 )
				if $donetask != 0
					BC( "dialogbox", "player", -1, "Your friend has not finished a related quest for marriage yet." )
					return
				endif
			else
				$donetask = IsTaskDone( $teamplayer1_id, 1656 )
				if $donetask != 0
					BC( "dialogbox", "player", -1, "Your friend has not finished a related quest for marriage yet." )
					return
				endif
			endif
			$bag_count = GetPlayerInfo( $teamplayer1_id, "nullitem", 0 )
			//??????????
			if $bag_count < 1
				BC( "dialogbox", "player", -1, "One or more of your party members has insufficient bag slots." )
				return
			endif		
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				BC( "dialogbox", "player", -1, "You friend is not LV50 yet." )
				return
			endif
			$player = MeetMarriageReq( $teamplayer2_id )
			if $player != 0
				BC( "dialogbox", "player", -1, "You and your partner have not met one or more of the requirements below:\nFriendship 10000+.\nYour partner is of the opposite gender.\nYour partner and yourself are LV50+\nNeither you or your partner are already married." )
				return
			endif
			$temp_sex1 = GetPlayerInfo( $teamplayer2_id, "sex" )
			if $temp_sex1 == 0
				$donetask = IsTaskDone( $teamplayer2_id, 1654 )
				if $donetask != 0
					BC( "dialogbox", "player", -1, "Your friend has not finished a related quest for marriage yet." )
					return
				endif
			else
				$donetask = IsTaskDone( $teamplayer2_id, 1656 )
				if $donetask != 0
					BC( "dialogbox", "player", -1, "Your friend has not finished a related quest for marriage yet." )
					return
				endif
			endif
			$bag_count = GetPlayerInfo( $teamplayer2_id, "nullitem", 0 )
			//??????????
			if $bag_count < 1
				BC( "dialogbox", "player", -1, "One or more of your party members has insufficient bag slots." )
				return
			endif
		endif
		//-------------------------------------------
		$money = GetPlayerInfo( $team_headerID, "money" )
		if $money < 1680000
			BC( "dialogbox", "player", -1, "You need 1,680,000 coins to get married." )
			return
		endif
		//--------------------------------------------
		
		$SubPlayer = SubPlayerInfo( $team_headerID, "money", 1680000 )
		if $SubPlayer != 0
			return
		endif
		
		SetMarryQuestPlayerID( $teamplayer1_id, $teamplayer2_id )
		SetMarryQuestPlayerID( $teamplayer2_id, $teamplayer1_id )
		AddPlayerInfo( $teamplayer1_id, "item", 52100, 1 )
		AddPlayerInfo( $teamplayer2_id, "item", 52100, 1 )
		
	}
	
	function OnOption2(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Sorry! Your bag slot is full." )
			return
		endif
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AcceptTask( -1, 1654 )
		else
			AcceptTask( -1, 1656 )
		endif
		
	}	