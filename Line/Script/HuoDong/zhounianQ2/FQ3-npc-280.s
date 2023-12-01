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
	
	//59814   ????????
	//59815   ????
	//59816   ?????
	//59817   ?????
	//59820   ?????
	//59822   ?????????
	//59823   ????????
	//-----------------------??start--------------------------------
			$item1 = GetPlayerInfo( -1, "item", 59814)
			$item2 = GetPlayerInfo( -1, "item", 59815)
			$item3 = GetPlayerInfo( -1, "item", 59816)
			$item4 = GetPlayerInfo( -1, "item", 59817)
			$item5 = GetPlayerInfo( -1, "item", 59820)
			$item6 = GetPlayerInfo( -1, "item", 59822)
			
			if $item2 == 0
				DisableNpcOption(0)
			endif
				
			if $item6 == 0
				DisableNpcOption(1)
				DisableNpcOption(2)
			endif
			
			$ectype_id = GetEctypeID( -1 , 474 )
			if $ectype_id > 0
				DisableNpcOption(1)
			else
				DisableNpcOption(2)
			endif
			
			$item99 = $item99 + $item1
			$item99 = $item99 + $item2
			$item99 = $item99 + $item5
			$item99 = $item99 + $item6
			$isacc = IsTaskAccept( -1, 1987 )
			$isdone = IsTaskDone( -1, 1987 )
			
			if $item99 == 0
				DisableNpcOption(3)
			endif
			if $isacc != 1
				DisableNpcOption(3)
			endif
			if $isdone == 0
				DisableNpcOption(3)
			endif
			
			
			$item98 = $item98 + $item2
			$item98 = $item98 + $item3
			$item98 = $item98 + $item4
			
			if $item98 == 0
				DisableNpcOption(4)
			endif
	//-----------------------??end--------------------------------
	//59825	?????????
	//59826	???
	//59827	?????
	//59828	?????
	//59831	?????????
	//59832	????
	//59833	????????
//	5??????????	
//	6??????????	
//	7????????	
//	8???? - [????]	
//	9???????????

	//-----------------------??start--------------------------------
			$item11 = GetPlayerInfo( -1, "item", 59825)
			$item12 = GetPlayerInfo( -1, "item", 59826)
			$item13 = GetPlayerInfo( -1, "item", 59827)
			$item14 = GetPlayerInfo( -1, "item", 59828)
			$item15 = GetPlayerInfo( -1, "item", 59832)
			$item16 = GetPlayerInfo( -1, "item", 59831)
			
			if $item12 == 0
				DisableNpcOption(5)
			endif
				
			if $item16 == 0
				DisableNpcOption(6)
				DisableNpcOption(7)
			endif
			
			$ectype_id = GetEctypeID( -1 , 513 )
			if $ectype_id > 0
				DisableNpcOption(6)
			else
				DisableNpcOption(7)
			endif
			
			$item199 = $item199 + $item11
			$item199 = $item199 + $item12
			$item199 = $item199 + $item15
			$item199 = $item199 + $item16
			$isacc = IsTaskAccept( -1, 1727 )
			$isdone = IsTaskDone( -1, 1727 )
			
			if $item199 == 0
				DisableNpcOption(8)
			endif
			if $isacc != 1
				DisableNpcOption(8)
			endif
			if $isdone == 0
				DisableNpcOption(8)
			endif
			
			
			$item198 = $item198 + $item12
			$item198 = $item198 + $item13
			$item198 = $item198 + $item14
			
			if $item198 == 0
				DisableNpcOption(9)
			endif
	//-----------------------??end--------------------------------
		}
		
	
		function OnOption0(){
		//??????????
			$item2 = GetPlayerInfo( -1, "item", 59815)
			//59815   ????
			
			if $item2 == 0
				BC( "dialogbox" , "player" , -1 , "Quest item is missing!" )
				return
			endif
			
				$isacc = IsTaskAccept( -1, 1985 )
				if $isacc == 1
					AcceptTask( -1, 1985 )
				else
					BC( "screen" , "player" , -1 , "You have already received the Decisive Force quest." )
				endif
					
				$isacc = IsTaskAccept( -1, 1986 )
				if $isacc == 1
					AcceptTask( -1, 1986 )
				else
					BC( "screen" , "player" , -1 , "You have already received the Mighty Claws quest." )
				endif
				
		}
	
	
		function OnOption1(){
		//??????????
			$item6 = GetPlayerInfo( -1, "item", 59822)
			//59822   ?????????
			
			if $item6 > 0
				//???
				$succeed = FlyToEctype( -1 , 474 , 66 , 61 )
				if $succeed > 0
					$ectype_id = GetEctypeID( -1 , 474 )
					$ectype_uid = GetEctypeUniqueID( -1 , 474 )
					$playerid = GetPlayerID()
					//StartEctypeTimer( -1 , 474 , 1 )
					SetEctypeVar($ectype_id , 1 , 10 )
					SetEctypeVar($ectype_id , 110 , $playerid )
					DeleteNPC( 991, $ectype_id)
					BC( "screen" , "player" , -1 , "You entered the Evergreen Woods. Click on the White Tiger Core to begin the Trial of Wind." )
					//TellEctypeAdditionalInfo( -1 , "GUID:05302000004" )
				else
					BC( "dialogbox", "player", -1, "Try again later." )
					return
				endif
			else
				BC( "dialogbox", "player", -1 , "You don't have the White Tiger Core." )
			endif
			
		}
		
		function OnOption2(){
		//??????,??????
			$ectype_id = GetEctypeID( -1 , 474 )
			if $ectype_id > 0
				$result = ReleaseEctype ($ectype_id)
				BC( "screen" , "player" , -1 , "Instance has been reset." )
			endif
			
		}
	
	
		function OnOption3(){
			//??????--??
			$item1 = GetPlayerInfo( -1, "item", 59814)
			$item2 = GetPlayerInfo( -1, "item", 59815)
			$item5 = GetPlayerInfo( -1, "item", 59820)
			$item6 = GetPlayerInfo( -1, "item", 59822)
			
			$item99 = $item99 + $item1
			$item99 = $item99 + $item2
			$item99 = $item99 + $item5
			$item99 = $item99 + $item6
			$isacc = IsTaskAccept( -1, 1987 )
			$isdone = IsTaskDone( -1, 1987 )
			//BC( "dialogbox", "player", -1, "=", $item99, "=" , $isacc, "=" , $isdone, "=" )
	
			if $item99 == 0
				BC( "dialogbox", "player", -1, "You do not meet the conditions to receive the quest." )
				return
			endif
			if $isacc != 1
				BC( "dialogbox", "player", -1, "You have already received the Scarlet Phoenix Heart quest." )
				return
			endif
			if $isdone == 0
				BC( "dialogbox", "player", -1, "You have already finished this quest." )
				return
			endif
			
			AcceptTask( -1, 1987 )
			
		}
		
		
		function OnOption4(){
	
	//59814   ????????
	//59815   ????
	//59816   ?????
	//59817   ?????
	//59820   ?????
	//59822   ?????????
	//59823   ????????
	
			$item2 = GetPlayerInfo( -1, "item", 59815)
			$item3 = GetPlayerInfo( -1, "item", 59816)
			$item4 = GetPlayerInfo( -1, "item", 59817)
	
	
			if $item2 == 0
				BC( "screen", "player", -1, "You need White Tiger's Swiftness, White Tiger's Claw, Light Origin Crystal." )
				return
			endif
			if $item3 == 0
				BC( "screen", "player", -1, "You need White Tiger's Swiftness, White Tiger's Claw, Light Origin Crystal." )
				return
			endif
			if $item4 == 0
				BC( "screen", "player", -1, "You need White Tiger's Swiftness, White Tiger's Claw, Light Origin Crystal." )
				return
			endif
			
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			
			$result = SubPlayerInfo( -1, "item", 59815 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59816 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59817 ,1)
			$re = $re + $result
		
			if $re == 0
				$result = AddPlayerInfo( -1, "item", 59822 ,1)
				BC( "screen" , "player" , -1 , "You got the White Tiger Core." )
			endif
	
	
		}
		
		
//-------------------------------------------------------------------------------
		
		function OnOption5(){
		//??????????
			$item2 = GetPlayerInfo( -1, "item", 59826)
			//59826	???

			
			if $item2 == 0
				BC( "dialogbox" , "player" , -1 , "Quest item is missing!" )
				return
			endif
			
				$isacc = IsTaskAccept( -1, 1725 )
				if $isacc == 1
					AcceptTask( -1, 1725 )
					SetPlayerVar( -1, 3303, 1 )
				else
					BC( "screen" , "player" , -1 , "You have already received the Ancient Turtle quest." )
				endif
					
				$isacc = IsTaskAccept( -1, 1726 )
				if $isacc == 1
					AcceptTask( -1, 1726 )
				else
					BC( "screen" , "player" , -1 , "You have already received the Mysterious Power quest." )
				endif
				
		}
	
	
		function OnOption6(){
		//??????????
			$item6 = GetPlayerInfo( -1, "item", 59831)
		//59831	?????????

			if $item6 > 0
				//???
				$succeed = FlyToEctype( -1 , 513 , 52 , 61 )
				if $succeed > 0
					$ectype_id = GetEctypeID( -1 , 513 )
					$ectype_uid = GetEctypeUniqueID( -1 , 513 )
					$playerid = GetPlayerID()
					//StartEctypeTimer( -1 , 513 , 1 )
					SetEctypeVar($ectype_id , 1 , 10 )
					SetEctypeVar($ectype_id , 110 , $playerid )
					BC( "screen" , "player" , -1 , "You entered the Miasma Realm. Click on the Obsidian Turtle Core to begin the Trial of the Void." )
					//TellEctypeAdditionalInfo( -1 , "GUID:05302000020" )
				else
					BC( "dialogbox", "player", -1, "Try again later." )
					return
				endif
			else
				BC( "dialogbox", "player", -1 , "You don't have the Obsidian Turtle Core." )
			endif
			
		}
		
		function OnOption7(){
		//??????,??????
			$ectype_id = GetEctypeID( -1 , 513 )
			if $ectype_id > 0
				$result = ReleaseEctype ($ectype_id)
				BC( "screen" , "player" , -1 , "Instance has been reset." )
			endif
			
		}
	
	
		function OnOption8(){
			//??????--??
	//59825	?????????
	//59826	???
	//59827	?????
	//59828	?????
	//59831	?????????
	//59832	????
			$item1 = GetPlayerInfo( -1, "item", 59825)
			$item2 = GetPlayerInfo( -1, "item", 59826)
			$item5 = GetPlayerInfo( -1, "item", 59831)
			$item6 = GetPlayerInfo( -1, "item", 59832)
			
			$item99 = $item99 + $item1
			$item99 = $item99 + $item2
			$item99 = $item99 + $item5
			$item99 = $item99 + $item6
			$isacc = IsTaskAccept( -1, 1727 )
			$isdone = IsTaskDone( -1, 1727 )
			//BC( "dialogbox", "player", -1, "=", $item99, "=" , $isacc, "=" , $isdone, "=" )
	
			if $item99 == 0
				BC( "dialogbox", "player", -1, "You do not meet the conditions to receive the quest." )
				return
			endif
			if $isacc != 1
				BC( "dialogbox", "player", -1, "You have already received the Obsidian Turtle Soul quest." )
				return
			endif
			if $isdone == 0
				BC( "dialogbox", "player", -1, "You have already finished this quest." )
				return
			endif
			
			AcceptTask( -1, 1727 )
			
		}
		
		
		function OnOption9(){
	
	//59825	?????????
	//59826	???
	//59827	?????
	//59828	?????
	//59831	?????????
	//59832	????
	
			$item2 = GetPlayerInfo( -1, "item", 59826)
			$item3 = GetPlayerInfo( -1, "item", 59827)
			$item4 = GetPlayerInfo( -1, "item", 59828)
	
	
			if $item2 == 0
				BC( "screen", "player", -1, "You need an Ancient Rune, Mysterious Tablet, and a Dark Origin Crystal." )
				return
			endif
			if $item3 == 0
				BC( "screen", "player", -1, "You need an Ancient Rune, Mysterious Tablet, and a Dark Origin Crystal." )
				return
			endif
			if $item4 == 0
				BC( "screen", "player", -1, "You need an Ancient Rune, Mysterious Tablet, and a Dark Origin Crystal." )
				return
			endif
			
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			
			$result = SubPlayerInfo( -1, "item", 59826 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59827 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59828 ,1)
			$re = $re + $result
		
			if $re == 0
				$result = AddPlayerInfo( -1, "item", 59831 ,1)
				BC( "screen" , "player" , -1 , "You got the Obsidian Turtle Core." )
			endif
	
	
		}
		//???????????
	function OnOption10(){
 		$count = GetPlayerInfo( -1, "item", 44084 )
 		
 		if $count <= 0
 			BC( "dialogbox", "player", -1, "You don't have a Dimensional Core!")
 			return
 		endif
 		
 		$result = SubPlayerInfo( -1, "item", 44084, 1 )
 		
 		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 59822, 1 )
	}
//???????????
	function OnOption11(){
 		$count = GetPlayerInfo( -1, "item", 44084 )
 		
 		if $count <= 0
 			BC( "dialogbox", "player", -1, "You don't have a Dimensional Core!")
 			return
 		endif
 		
 		$result = SubPlayerInfo( -1, "item", 44084, 1 )
 		
 		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 59831, 1 )
	}