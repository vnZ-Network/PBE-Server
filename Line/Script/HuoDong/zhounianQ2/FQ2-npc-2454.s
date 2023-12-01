	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:???????
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){

//59797	?????????
//59798	???????
//59799	?????
//59800	????
//59801	????
//59802	????
//59804	?????????      
//59805	????????
//59807	?????

	}
	

	function OnOption0(){
	//??"???????"
		$item1 = GetPlayerInfo( -1, "item", 59798)
		
		if $item1 == 0
			BC( "dialogbox" , "player" , -1 , "You don't have a Flawed Icewisp Stone\n\n" )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$random0 = RandomNumber ( 0, 299 )
		
		if $random0 < 100
			$result = SubPlayerInfo( -1, "item", 59798 ,1)
			$re = $re + $result
			if $re == 0
				$result = AddPlayerInfo( -1, "item", 59799 ,1)
				BC( "dialogbox" , "player" , -1 , "Success! The Flawed Icewisp Shard has been transformed into the Stone of Coldflow. Take it back to Rydan in Atlantis!" )
				SetPlayerVar(-1, 3301, 0 )
			endif
		else
			$result = SubPlayerInfo( -1, "item", 59798 ,1)
			$re = $re + $result
			if $re == 0
				$result = AddPlayerInfo( -1, "item", 59801 ,1)
				BC( "dialogbox" , "player" , -1 , "The repair attempt failed, leaving only an Icespirit Shard. However, all is not lost. Read the Tattered Page to learn more." )
				SetPlayerVar(-1, 3301, 2 )
			endif
		endif
				


	}


