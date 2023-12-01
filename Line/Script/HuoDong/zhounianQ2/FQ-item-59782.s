	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????3??
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$ectype_id = GetPlayerInfo( -1, "mapid" )
		if $ectype_id >= 14503
			if $ectype_id <= 14602
				$ispass = GetEctypeVar($ectype_id , 1 )
				//BC( "screen" , "player" , -1 , $ispass )
				if $ispass == 10
					//??-??????,???ID??????-------
					SetEctypeVar( -1 , 1 , 15 )
					$item1 = GetPlayerInfo( -1, "item", 59780)
					AddStatus( -1, 7628, 1 )
					if $item1 == 0
						//??
						AddMonsterByFloat( 51731 , 1, $ectype_id, 102, 162, 1 )
					else
						//??
						AddMonsterByFloat( 51732 , 1, $ectype_id, 102, 162, 1 )
					endif
					//------------------------------------------
				endif
				
				if $ispass == 25
					//???
					FlyToMap( -1, 475, 60, 50)
					BC( "screen" , "player" , -1 , "Reset the instance to start a new test." )
				endif
				
				if $ispass == 20
					//???
					$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
					if $nullitem < 1
						BC( "screen", "player", -1, "You do not have enough space in your bag.")
						return
					endif
					$result = SubPlayerInfo( -1, "item", 59782 ,1)
					if $result == 0
						$result = AddPlayerInfo( -1, "item", 59780 ,1)
						BC( "screen" , "player" , -1 , "You got a Scarlet Phoenix Feather." )
						FlyToMap( -1, 475, 60, 50)
					endif
				endif
				
			else
				BC( "screen", "player", -1, "Nothing happens." )
			endif
		else
			BC( "screen", "player", -1, "Nothing happens." )
		endif
		
		
	}