	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/08
	//		Author:ZZQ
	//		TaskName:ITEM-39116.s
	//		TaskID:BC
	//
	//****************************************
	
	
	function OnUseItem(){

			
		$item = GetPlayerInfo( -1, "item", 39116 )
		$mapid = GetPlayerInfo(-1,"mapid")
		$guildid = GetPlayerInfo(-1,"guildid")
		
		if $item < 1
			BC( "screen", "player", -1, "Sorry! You don't have the required item." )
			return
		endif

		
		$Sub = SubPlayerInfo( -1, "item", 39116, 1 )
		
		if $Sub0 != 0
				return
		endif		
				
		BC( "chat", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "chat", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "chat", "team", $team , "Ah! It's 300,000!" )
		BC( "chat", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "chat", "player", -1 , "Ah! It's 300,000!" )
		BC( "chat", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "screen", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "screen", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "screen", "team", $team , "Ah! It's 300,000!" )
		BC( "screen", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "screen", "player", -1 , "Ah! It's 300,000!" )
		BC( "screen", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "messagebox", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "messagebox", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "messagebox", "team", $team , "Ah! It's 300,000!" )
		BC( "messagebox", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "messagebox", "player", -1 , "Ah! It's 300,000!" )
		BC( "messagebox", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "npctip", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "npctip", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "npctip", "team", $team , "Ah! It's 300,000!" )
		BC( "npctip", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "npctip", "player", -1 , "Ah! It's 300,000!" )
		BC( "npctip", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "dialogbox", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "dialogbox", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "dialogbox", "team", $team , "Ah! It's 300,000!" )
		BC( "dialogbox", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "dialogbox", "player", -1 , "Ah! It's 300,000!" )
		BC( "dialogbox", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "longdialogbox", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "longdialogbox", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "longdialogbox", "team", $team , "Ah! It's 300,000!" )
		BC( "longdialogbox", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "longdialogbox", "player", -1 , "Ah! It's 300,000!" )
		BC( "longdialogbox", "servergroup", -1 , "Ah! It's 300,000!" )
		
		BC( "scrollbar", "server", -1 ,"Ah! It's 300,000!" )	
		BC( "scrollbar", "map", $mapid , "Ah! It's 300,000!" )
//		BC( "scrollbar", "team", $team , "Ah! It's 300,000!" )
		BC( "scrollbar", "guild", $guildid , "Ah! It's 300,000!" )
		BC( "scrollbar", "player", -1 , "Ah! It's 300,000!" )
		BC( "scrollbar", "servergroup", -1 , "Ah! It's 300,000!" )
		
		AddPlayerInfo( -1, "money", 300000 )
				
		}