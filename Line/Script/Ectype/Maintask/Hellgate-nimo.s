	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:????
	//
	//****************************************

	
		function OnDead(){
						$id = GetEctypeID( -1, 217 )
						$add = AddNPC( 239, $id )
						$open = GetGlobalVar(1)
						$open = $open + 1
						$op =  SetGlobalVar( 1,$open )
						#name = GetPlayerInfo(-1,"name")
						$n = 50 - $open
						if $open < 50 
								BC( "scrollbar", "server", -1, "The hero ",#name," has successfully killed Nemo. Kill him ",$n," more times and the portal to the Land of the Dead will open in the Atrium." )
						endif
						
						SetPlayerVar(-1,235,1)
						SetPlayerVar(-1,237,0)
						$tiaozhan = IsExistStatus(-1 , 21606 )
						if $tiaozhan != 0
							return
						endif
						AddStatus( -1, 21606, 2 )
						$zuobi = GetPlayerVar(-1,236)
						if $zuobi == 1
							SetPlayerVar(-1,236,0)
							return
						endif
						$yinka = RandomNumber(0,6)
						if $yinka == 0
							$HorN = HaveTarot( -1 , 12009 )
							if $HorN != 0
								return
							endif
							AddTarotCard( -1 , 12009 )
						endif
						
					}