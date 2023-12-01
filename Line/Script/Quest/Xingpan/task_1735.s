//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/8/1
//	--		Author:??
//	--		Class:	.s
//	--		AIName:
//	--		Remark:?????????
//	----------------------------------------------------
	
	function OnTaskDone(){			
		  $Now_Yday =  GetSystemTime( "yday" )
			$num = GetPlayerVar( -1, 3321 )
			if $num == 0
				 EnableAstroPanel(-1)
				 BC( "dialogbox", "player", -1, "The Cosmos system has been unlocked. Press "Y" to open the Cosmos interface.")
				 $result = AcceptTask( -1, 1738 )
				 if $result == 0
				   BC( "messagebox", "player", -1, "The Cosmos system has been unlocked. Press "Y" to open the Cosmos interface. Visit the Astrolabe to get the Copernicus' Troubles daily quest." )		
				 endif
			endif
			//GetAstroPanelID(-1)
			//BC( "dialogbox", "player", -1, "GUID:08358000004")
			//AddAPPoint(1)			
			SetPlayerVar(-1, 3995, $Now_Yday )
	}


	function OnTaskFailedDone(){
		
		
	}
	
	function OnTaskAccept(){
		
	
	}