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
//59802	????
//59804	?????????      
		$ectype_id = GetPlayerInfo( -1, "mapid" )
		if $ectype_id >= 14655
			if $ectype_id <= 14700
				$ispass = GetEctypeVar($ectype_id , 1 )
				//BC( "screen" , "player" , -1 , $ispass )
				if $ispass == 10
					//??-??????,???ID??????-------
					SetEctypeVar( -1 , 1 , 15 )
					PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
					AddMonsterByFloat( 51737 , 1, $ectype_id, 144, 136, 1 )
				endif
				
				if $ispass == 25
					//???
					//FlyToMap( -1, 475, 60, 50)
					MapPlayerFlyToMap( $ectype_id, 475, 60, 50)
					BC( "screen" , "player" , -1 , "Reset the instance to start a new test." )
				endif
				
				if $ispass == 20
					//???
					$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
					if $nullitem < 1
						BC( "screen", "player", -1, "You do not have enough space in your bag.")
						return
					endif
					$result = SubPlayerInfo( -1, "item", 59804 ,1)
					if $result == 0
						$result = AddPlayerInfo( -1, "item", 59802 ,1)
						BC( "screen" , "player" , -1 , "You obtained the Emerald Dragon Eye" )
						//FlyToMap( -1, 475, 60, 50)
						MapPlayerFlyToMap( $ectype_id, 475, 60, 50)
					endif
				endif
				
			else
				BC( "screen", "player", -1, "Nothing happens." )
			endif
		else
			BC( "screen", "player", -1, "Nothing happens." )
		endif
		
		
	}