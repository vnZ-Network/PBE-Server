		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011/04/07
		//		Author:???
		//		TaskName:???????
		//		TaskID:
		//
		//****************************************
		
		
	
		function OnOption0(){
			//??????
			$isacc = IsTaskAccept( -1, 1726 )
			if $isacc == 1
				BC( "screen" , "player" , -1 , "Nothing happens." )
			else
				$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
				if $nullitem < 1
					BC( "screen", "player", -1, "You do not have enough space in your bag.")
					return
				endif
				$hp = GetPlayerInfo( -1, "maxhp" )
				$mp = GetPlayerInfo( -1, "maxmp" )
				$mp = $mp / 3
				$xx = $hp + $mp
				//BC( "screen" , "player" , -1 , "xx=" , $xx )
				if $xx > 200000
					BC( "messagebox" , "player" , -1 , "You got the Mysterious Tablet." )
					SetTaskDone( -1 , 1726 )
					AddPlayerInfo( -1, "item",  59828 , 1)
				else
					BC( "screen" , "player" , -1 , "A powerful monster has appeared!" )
					$md = GetPlayerInfo( -1, "mapid" )
					$mx = GetPlayerInfo( -1, "mapposx" )
					$my = GetPlayerInfo( -1, "mapposy" )
					AddMonsterByFloat( 51747 , 1 , $md , $mx , $my , 1 )
					PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				endif
			endif
			
			
		}
	
	