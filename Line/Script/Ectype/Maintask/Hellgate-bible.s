	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:??????3??
	//
	//****************************************
	
			function OnRequest(){
		}
	
	
	
		function OnOption0(){
			$id = GetEctypeID( -1, 217 )
			$wave1 = GetEctypeVar( -1, 0 )
			$x = GetPlayerInfo( -1, "mapx" )
			$y = GetPlayerInfo( -1, "mapy" )
			$n1 = GetEctypeVar( -1, 111 )
			$task = IsTaskDone( -1, 170 )
			$item = GetPlayerInfo( -1, "item", 12689 )
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			//??????????
				if $task == 0
						$delNPC = DeleteNPC( 411, $id )
						$addNPC = AddNPC( 412, $id )
						return
				endif		
				if $item > 0 
						$delNPC = DeleteNPC( 411, $id )
						$addNPC = AddNPC( 412, $id )		
						return
				endif								
			//?????????
				if $wave1 == 0
						BC( "screen", "player", -1, "Wraith Tome is emanating a powerful force, a fierce cold besieges you." )
						BC( "chat", "player", -1, "Wraith Tome is emanating a powerful force, a fierce cold besieges you." )
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
          				$monster = AddMonster( 55001, 1, $id, 100, 60, 1 )
          				$monster = AddMonster( 55001, 1, $id, 102, 60, 1 )
          				$monster = AddMonster( 55001, 1, $id, 99, 61, 1 )
          				$monster = AddMonster( 55001, 1, $id, 104, 61, 1 )
          				$monster = AddMonster( 55001, 1, $id, 98, 63, 1 )
          				$monster = AddMonster( 55001, 1, $id, 104, 63, 1 )
          				$monster = AddMonster( 55001, 1, $id, 99, 65, 1 )
          				$monster = AddMonster( 55001, 1, $id, 104, 65, 1 )
          				$monster = AddMonster( 55001, 1, $id, 100, 66, 1 )
          				$monster = AddMonster( 55001, 1, $id, 103, 66, 1 )
          				$monster = AddMonster( 55001, 1, $id, 101, 63, 1 )       				          				
          				
						$wave2 = SetEctypeVar( -1, 0, 1 )
				endif

			//????30,??
				if $n1 < 30
						BC( "dialogbox", "player", -1, "Wraith Tome is emanating a powerful force, you have to clear out the ghosts first." )					
						return
				endif
				
			//????????,???????????
				if $item < 1
			//??????,??
						if $nullitem < 1
							BC( "screen", "player", -1, "Bag is full, can not accept." )
							return
						else						
							$add = AddPlayerInfo( -1, "item", 12689, 1 )
							BC( "screen", "player", -1, "You feel the power in the Wraith Tome is out of control." )
							BC( "chat", "player", -1, "You feel the power in the Wraith Tome is out of control." )
							BC( "screen", "player", -1, "You put it in your bag, and a voice speaks in your mind, do not open it." )	
							BC( "chat", "player", -1, "You put it in your bag, and a voice speaks in your mind, do not open it." )	
						endif
				endif
				
				$delNPC = DeleteNPC( 411, $id )
				$addNPC = AddNPC( 412, $id )
			}
