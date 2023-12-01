	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/10
	//		Author:???
	//		TaskName:AV-NPC-98.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$Line = GetServerLineID()
		if $Line != 2
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
		endif
		
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 >= 1000
			if $Now_Week != 1
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
				DisableNpcOption(13)
				DisableNpcOption(14)
				DisableNpcOption(15)
			endif
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
				DisableNpcOption(13)
				DisableNpcOption(14)
				DisableNpcOption(15)
		endif
		if $level >= 30
			if $level <= 50
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
				DisableNpcOption(13)
				DisableNpcOption(14)
				DisableNpcOption(15)
			endif
		endif
		if $level >= 51
			if $level <= 60
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
				DisableNpcOption(13)
				DisableNpcOption(14)
				DisableNpcOption(15)
			endif
		endif
		if $level >= 61
			if $level <= 75
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
				DisableNpcOption(13)
				DisableNpcOption(14)
				DisableNpcOption(15)
			endif
		endif
		if $level >= 76
			if $level <= 90
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(13)
				DisableNpcOption(14)
			endif
		endif
		if $level >= 91
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
				DisableNpcOption(10)
				DisableNpcOption(11)
				DisableNpcOption(12)
		endif
	}

	function OnOption0(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 > 1000
			$GetSerVar1 = 1000
		endif
		BC( "dialogbox", "player", -1, "We strive to explore the unknown to discover new magic items. In order for our research to advance, we need as many contributions as possible.\nContribution Progress ",$GetSerVar1,"/1000." )
	}	
	
	function OnOption1(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
				return
		endif
		if $level > 50
				return
		endif
		
		$ItemID = 64146
		$ItemNum = 30
		#ItemName = "Shield of Ghosts"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
			
	}
	
	function OnOption2(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
				return
		endif
		if $level > 50
				return
		endif
		
		$ItemID = 64151
		$ItemNum = 30
		#ItemName = "Eye of Terror"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption3(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
				return
		endif
		if $level > 50
				return
		endif
		
		$ItemID = 64153
		$ItemNum = 30
		#ItemName = "Mermaid Scale"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption4(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 51
				return
		endif
		if $level > 60
				return
		endif
		
		$ItemID = 64156
		$ItemNum = 60
		#ItemName = "Lizard Horn"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption5(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 51
				return
		endif
		if $level > 60
				return
		endif
		
		$ItemID = 64157
		$ItemNum = 60
		#ItemName = "Snake Hair"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption6(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 51
				return
		endif
		if $level > 60
				return
		endif
		
		$ItemID = 64161
		$ItemNum = 60
		#ItemName = "Pharaoh's Blood"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption7(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 61
				return
		endif
		if $level > 75
				return
		endif
		
		$ItemID = 64162
		$ItemNum = 60
		#ItemName = "Guardian's Edge"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption8(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 61
				return
		endif
		if $level > 75
				return
		endif
		
		$ItemID = 64164
		$ItemNum = 60
		#ItemName = "Lizard's Tail"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
		
	function OnOption9(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 61
				return
		endif
		if $level > 75
				return
		endif
		
		$ItemID = 64166
		$ItemNum = 60
		#ItemName = "Vine of Protection"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption10(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 76
				return
		endif
		if $level > 90
				return
		endif
		
		$ItemID = 64165
		$ItemNum = 60
		#ItemName = "Karth's Rage"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption11(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 76
				return
		endif
		if $level > 90
				return
		endif
		
		$ItemID = 64167
		$ItemNum = 60
		#ItemName = "Shining Sand"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption12(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 76
				return
		endif
		if $level > 90
				return
		endif
		
		$ItemID = 64163
		$ItemNum = 60
		#ItemName = "Tomb Raiding Shovel"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption13(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 91
				return
		endif
		
		$ItemID = 64167
		$ItemNum = 60
		#ItemName = "Shining Sand"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption14(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 91
				return
		endif
		
		$ItemID = 64163
		$ItemNum = 60
		#ItemName = "Tomb Raiding Shovel"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function OnOption15(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "The Donation Event is available in Realm 2." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 76
				return
		endif
		
		$ItemID = 64169
		$ItemNum = 60
		#ItemName = "Chained Ice Heart"
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < $ItemNum 
			BC( "dialogbox", "player", -1, "Insufficient ",#ItemName,"! You need ",$ItemNum," of them." )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3679 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		if $TaskVar == $time0
			if $TaskVar1 >= 5
				BC( "dialogbox", "player", -1, "You cannot donate any more today. Please come back tomorrow." )
				return
			endif
		else
			SetPlayerVar( -1, 3679, $time0 )
			SetPlayerVar( -1, 3678, 0 )
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID, $ItemNum )
		if $SubItem != 0
			return
		endif
		
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = $TaskVar1 + 1
		SetPlayerVar( -1, 3678, $TaskVar1 )
		$TaskVar1 = GetPlayerVar( -1, 3678 )
		$TaskVar1 = 5 - $TaskVar1
		BC( "dialogbox", "player", -1, "Donation finished. Donations you can make today: ",$TaskVar1," donations." )
			
		$Now_Week =  GetSystemTime( "week" )
		$GetSerVar1 = GetServerVar( 66 )
		if $GetSerVar1 < 1000
			$ServerVar = 66
			$ServerValue = GetServerVar( $ServerVar )
			$ServerValue = $ServerValue + 1
			SetServerVar( $ServerVar, $ServerValue )
			$GetSerVar1 = GetServerVar( 66 )
			if $GetSerVar1 == 1000
				BC( "screen", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				BC( "scrollbar", "servergroup", -1, "The contribution have been completed for this week. The Expeditionists thank you for participating.")
				SetServerVar( 66, 1001 )
			endif
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has donated a lot of magical materials and contributed a lot to the Expedition Union's collection work. Current donation level: ",$GetSerVar1,"/1000." )
			AddPlayerInfo( -1, "prestige", 9, 15 )
			call addExp()
		else
			if $Now_Week == 1
				AddPlayerInfo( -1, "prestige", 9, 15 )
			  call addExp()
			else
				BC( "dialogbox", "player", -1, "The donation of magical materials has ended." )
				return
			endif
		endif
		
		
		
	}
	
	function addExp(){
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 1000
			if $prestige < 5000
				$Title = HaveTitle( -1, 41 )
				if $Title != 0
					AddTitle( -1, 41 )
				endif
			endif	
		endif
		if $prestige >= 5000
			if $prestige < 12000
				$Title = HaveTitle( -1, 42 )
				if $Title != 0
					AddTitle( -1, 42 )
				endif
			endif	
		endif
		if $prestige >= 12000
				$Title = HaveTitle( -1, 43 )
				if $Title != 0
					AddTitle( -1, 43 )
				endif
		endif
		
		$PlayerLevel = GetPlayerInfo( -1, "level" )
		if $PlayerLevel >= 30
			if $PlayerLevel < 55
				$level = GetPlayerInfo( -1, "level" )
				$level = $level * $level
				$level = $level * 25
				$level = $level / 10
				AddPlayerInfo( -1, "exp", $level )
				return
			endif
		endif
		if $PlayerLevel >= 55
			if $PlayerLevel < 57
				AddPlayerInfo( -1, "exp", 8964 )
				return
			endif
		endif
		if $PlayerLevel >= 57
			if $PlayerLevel < 59
				AddPlayerInfo( -1, "exp", 13120 )
				return
			endif
		endif
		if $PlayerLevel >= 59
			if $PlayerLevel < 61
				AddPlayerInfo( -1, "exp", 19390 )
				return
			endif
		endif
		if $PlayerLevel >= 61
			if $PlayerLevel < 63
				AddPlayerInfo( -1, "exp", 26395 )
				return
			endif
		endif
		if $PlayerLevel >= 63
			if $PlayerLevel < 65
				AddPlayerInfo( -1, "exp", 33672 )
				return
			endif
		endif
		if $PlayerLevel >= 65
			if $PlayerLevel < 67
				AddPlayerInfo( -1, "exp", 41347 )
				return
			endif
		endif
		if $PlayerLevel >= 67
			if $PlayerLevel < 69
				AddPlayerInfo( -1, "exp", 49710 )
				return
			endif
		endif
		if $PlayerLevel >= 69
			if $PlayerLevel < 71
				AddPlayerInfo( -1, "exp", 58140 )
				return
			endif
		endif
		if $PlayerLevel >= 71
			if $PlayerLevel < 73
				AddPlayerInfo( -1, "exp", 72090 )
				return
			endif
		endif
		if $PlayerLevel >= 73
			if $PlayerLevel < 75
				AddPlayerInfo( -1, "exp", 87885 )
				return
			endif
		endif
		if $PlayerLevel >= 75
			if $PlayerLevel < 77
				AddPlayerInfo( -1, "exp", 102600 )
				return
			endif
		endif
		if $PlayerLevel >= 77
			if $PlayerLevel < 79
				AddPlayerInfo( -1, "exp", 117990 )
				return
			endif
		endif
		if $PlayerLevel >= 79
			if $PlayerLevel < 81
				AddPlayerInfo( -1, "exp", 134100 )
				return
			endif
		endif
		if $PlayerLevel >= 81
			if $PlayerLevel < 83
				AddPlayerInfo( -1, "exp", 150975 )
				return
			endif
		endif
		if $PlayerLevel >= 83
			if $PlayerLevel < 85
				AddPlayerInfo( -1, "exp", 168660 )
				return
			endif
		endif
		if $PlayerLevel >= 85
			if $PlayerLevel < 87
				AddPlayerInfo( -1, "exp", 187200 )
				return
			endif
		endif
		if $PlayerLevel >= 87
			if $PlayerLevel < 89
				AddPlayerInfo( -1, "exp", 206640 )
				return
			endif
		endif
		if $PlayerLevel >= 89
			if $PlayerLevel < 91
				AddPlayerInfo( -1, "exp", 227025 )
				return
			endif
		endif
		if $PlayerLevel >= 91
			AddPlayerInfo( -1, "exp", 248400 )
			return
		endif
		
	}	