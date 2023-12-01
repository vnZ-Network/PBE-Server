	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/04
	//		Author:??
	//		TaskName:?????NPC
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){		
		//??id 7646 ,0??????,1??????
		$result = IsTaskAccept( -1, 1758 )
		if $result == 0
			 DisableNpcOption(0)
		else if
			 DisableNpcOption(1)
		endif
	}  
//?????	
//44108	???????
//44109	???????
//44110	???????
	function OnOption0(){
		$line = GetServerLineID()
		if $line == 8
			$task = IsTaskAccept( -1, 1758 )
			if $task == 0
				 BC( "dialogbox", "player", -1, "You can return to Ancient Beast Island directly, don't need a Ancient Beast Island Teleportation Scroll.")
				 return
			endif
			$level = GetPlayerInfo( -1 , "level")
			if $level < 90 
				 BC( "dialogbox", "player", -1, "You must be at least LV90 to enter Ancient Beast Island. ")
				 return
			endif
			$item3 = GetPlayerInfo( -1 , "item", 44108)
			$item2 = GetPlayerInfo( -1 , "item", 44109)
			$item1 = GetPlayerInfo( -1 , "item", 44110)
			if $item1 < 1
				if $item2 < 1
					if $item3 < 1
				 		 BC( "dialogbox", "player", -1, "You need a Ancient Beast Island Teleportation Scroll to enter Ancient Beast Island!")
				 		 return
				 	endif
				endif 	
			endif
			$result1 = SubPlayerInfo( -1, "item", 44110, 1 )
			if $result1 == 0
				$result = AcceptTask( -1, 1758 )
				if $result == 0 			 
					 //BC( "screen", "player", -1 , "GUID:08061000003")
					 FlyToMap( -1, 291, 106, 108 )
					 return				
				endif
			else
				$result2 = SubPlayerInfo( -1, "item", 44109, 1 )
				if $result2 == 0
					$result = AcceptTask( -1, 1758 )
					if $result == 0 			 
						 //BC( "screen", "player", -1 , "GUID:08061000004")
						 FlyToMap( -1, 291, 106, 108 )
						 return				
					endif
				else
					$result3 = SubPlayerInfo( -1, "item", 44108, 1 )					
					if $result3 == 0
						$result = AcceptTask( -1, 1758 )
						if $result == 0 			 
							 //BC( "screen", "player", -1 , "GUID:08061000005")
							 FlyToMap( -1, 291, 106, 108 )
							 return				
						endif	
					endif				
				endif		
			endif		
		endif
		if $line == 7
			$task = IsTaskAccept( -1, 1758 )
			if $task == 0
				 BC( "dialogbox", "player", -1, "You can return to Ancient Beast Island directly, don't need a Ancient Beast Island Teleportation Scroll.")
				 return
			endif
			$level = GetPlayerInfo( -1 , "level")
			if $level < 90 
				 BC( "dialogbox", "player", -1, "You must be at least LV90 to enter Ancient Beast Island. ")
				 return
			endif
			$item3 = GetPlayerInfo( -1 , "item", 44108)
			$item2 = GetPlayerInfo( -1 , "item", 44109)
			$item1 = GetPlayerInfo( -1 , "item", 44110)
			if $item1 < 1
				if $item2 < 1
					if $item3 < 1
				 		 BC( "dialogbox", "player", -1, "You need a Ancient Beast Island Teleportation Scroll to enter Ancient Beast Island!")
				 		 return
				 	endif
				endif 	
			endif
			$result1 = SubPlayerInfo( -1, "item", 44110, 1 )
			if $result1 == 0
				$result = AcceptTask( -1, 1758 )
				if $result == 0 			 
					 //BC( "screen", "player", -1 , "GUID:08061000009")
					 FlyToMap( -1, 291, 106, 108 )
					 return				
				endif
			else
				$result2 = SubPlayerInfo( -1, "item", 44109, 1 )
				if $result2 == 0
					$result = AcceptTask( -1, 1758 )
					if $result == 0 			 
						 //BC( "screen", "player", -1 , "GUID:08061000010")
						 FlyToMap( -1, 291, 106, 108 )
						 return				
					endif
				else
					$result3 = SubPlayerInfo( -1, "item", 44108, 1 )		
					if $result3 == 0
						$result = AcceptTask( -1, 1758 )
						if $result == 0 			 
							 //BC( "screen", "player", -1 , "GUID:08061000011")
							 FlyToMap( -1, 291, 106, 108 )
							 return				
						endif	
					endif				
				endif		
		endif				
		endif
		BC( "dialogbox", "player", -1, "Ancient Beast Island is only available on Realms 7 and 8.")			
	}

//?????
	function OnOption1(){
		$line = GetServerLineID()
		if $line == 7
			$task = IsTaskAccept( -1, 1758 )
			if $task == 0
				 //BC( "screen", "player", -1 , "GUID:08061000013")
				 FlyToMap( -1, 291, 106, 108 )
				 return
			else
				 BC( "dialogbox", "player", -1, "Cannot enter Ancient Beast Island.")
				 return
			endif
		endif			
		if $line == 8
			$task = IsTaskAccept( -1, 1758 )
			if $task == 0
				 //BC( "screen", "player", -1 , "GUID:08061000015")
				 FlyToMap( -1, 291, 106, 108 )
				 return
			else
				 BC( "dialogbox", "player", -1, "Cannot enter Ancient Beast Island.")
				 return
			endif
		endif		
		BC( "dialogbox", "player", -1, "Ancient Beast Island is only available on Realms 7 and 8.")
	}
	
