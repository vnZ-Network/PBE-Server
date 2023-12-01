	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:NPC-guild-137.s
	//		TaskID:???? ???????
	//
	//****************************************
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1 , "level")
		if $level < 31
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
		endif
		if $level > 30
			if $level < 45
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
			endif
		endif
		if $level > 44
			if $level < 60
				DisableNpcOption(0)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(6)
				DisableNpcOption(7)
			endif
		endif
		if $level > 59
			if $level < 75
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(7)
			endif
		endif
		if $level > 74
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
	}
	
	//31-44 ??????
	function OnOption0(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 4
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 31
			return
		endif
		if $level > 44
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "item", 64003 )
		if $stone < 60
			BC( "dialogbox", "player", -1, "Insufficient [Raw Jade]. You need 60 [Raw Jade] to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "item", 64003 , 60 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 5000 )
				AddPlayerInfo( -1 , "exp" , $exp )
				AddPlayerInfo( -1 , "guildoffer" , 2 )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 60 [Raw Jade], and have earned 5000 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "item", 64003 , 60 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 5000 )
			AddPlayerInfo( -1 , "guildoffer" , 2 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 60 [Raw Jade], and have earned 5000 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
		endif 
		
	}
	//45-59 ?????
	function OnOption1(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 5
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$level = GetPlayerInfo( -1 , "level")
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 45
			return
		endif
		if $level > 59
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "item", 64004 )
		if $stone < 60
			BC( "dialogbox", "player", -1, "Insufficient [Pure Jade]. You need 60 [Pure Jade] to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "item", 64004 , 60 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 8500 )
				AddPlayerInfo( -1 , "guildoffer" , 2 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 60 [Pure Jade], and have earned 8500 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "item", 64004 , 60 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 8500 )
			AddPlayerInfo( -1 , "guildoffer" , 2 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 60 [Pure Jade], and have earned 8500 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
		endif 
		
	}
	//59-74 ?????
	function OnOption2(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 6
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 60
			return
		endif
		if $level > 74
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "item", 64005 )
		if $stone < 60
			BC( "dialogbox", "player", -1, "Insufficient [Obsidian Powder]. You need 60 [Obsidian Powder] to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "item", 64005 , 60 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 11000 )
				AddPlayerInfo( -1 , "guildoffer" , 3 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 60 [Obsidian Powder], and have earned 11000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "item", 64005 , 60 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 11000 )
			AddPlayerInfo( -1 , "guildoffer" , 3 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 60 [Obsidian Powder], and have earned 11000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
		endif 
		
	}
	//75?? ????????
	function OnOption3(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 7
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 75
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "item", 64006 )
		if $stone < 60
			BC( "dialogbox", "player", -1, "Insufficient [Flawless Obsidian Powder]. You need 60 [Flawless Obsidian Powder] to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "item", 64006 , 60 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 15000 )
				AddPlayerInfo( -1 , "guildoffer" , 3 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 60 [Flawless Obsidian Powder], and have earned 15000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "item", 64006 , 60 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 15000 )
			AddPlayerInfo( -1 , "guildoffer" , 3 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 60 [Flawless Obsidian Powder], and have earned 15000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
		endif 
		
	}
	
		
	//31-44 7000
	function OnOption4(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 4
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 31
			return
		endif
		if $level > 44
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1 , "money" )
		if $stone < 7000
			BC( "dialogbox", "player", -1, "Insufficient coins. You need 7000 coins to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "money", 7000 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 5000 )
				AddPlayerInfo( -1 , "exp" , $exp )
				AddPlayerInfo( -1 , "guildoffer" , 2 )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 7000 coins, and have earned 5000 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "money", 7000 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 5000 )
			AddPlayerInfo( -1 , "guildoffer" , 2 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 7000 coins, and have earned 5000 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
		endif 
		
	}
	//45-59 12000
	function OnOption5(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 5
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 45
			return
		endif
		if $level > 59
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "money" )
		if $stone < 12000
			BC( "dialogbox", "player", -1, "Insufficient coins. You need 12000 coins to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "money", 12000 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 8500 )
				AddPlayerInfo( -1 , "guildoffer" , 2 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 12000 coins, and have earned 8500 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "money" , 12000 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 8500 )
			AddPlayerInfo( -1 , "guildoffer" , 2 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 12000 coins, and have earned 8500 Funds for the guild.\nYour Contribution gains by 2\nYour EXP reward: " , $exp )
		endif 
		
	}
	//60-74 17000
	function OnOption6(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 6
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 60
			return
		endif
		if $level > 74
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "money" )
		if $stone < 17000
			BC( "dialogbox", "player", -1, "Insufficient coins. You need 17000 coins to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "money" , 17000 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 11000 )
				AddPlayerInfo( -1 , "guildoffer" , 3 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 17000 coins, and have earned 11000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "money", 17000 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 11000 )
			AddPlayerInfo( -1 , "guildoffer" , 3 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 17000 coins, and have earned 11000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
		endif 
		
	}
	//75?? 22000
	function OnOption7(){
		
		$level = GetPlayerInfo( -1 , "level")
		
		$a = $level * 7
		
		$b = $level - 29
		$c = $b * 7
		$d = $c + 200
		
		$e = $level / 15
		$f = $e + 3
		$g = $f * 41
		
		$j = $g * $d
		$k = $j * $a
		$l = $k / 1000
		
		$exp = $l
		
		$week = GetSystemTime( "week" )
		if $week != 5
			BC( "dialogbox", "player", -1, "Event 'Before the Final Showdown' is available only on Friday." )
			return
		endif
		
		$gid = GetPlayerInfo( -1 , "guildid")
		$goffer = GetPlayerInfo( -1 , "guildoffer")
		$nowtime = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3716 )
		$round = GetPlayerVar( -1 , 3717 )
		$round = $round + 1
		
//----------------????---------------------------
		if $level < 75
			return
		endif
//----------------????---------------------------		
		if $gid == 0
			BC( "dialogbox", "player", -1, "You don't belong to a guild.")
			return
		endif
		if $goffer < 20
			BC( "dialogbox", "player", -1, "Your Contribution is not 20 yet." )
			return
		endif
		$stone = GetPlayerInfo( -1, "money" )
		if $stone < 22000
			BC( "dialogbox", "player", -1, "Insufficient coins. You need 22000 coins to finish the donation." )
			return
		endif
		if $lasttime == $nowtime
			if $round <= 3
				$SubItem = SubPlayerInfo( -1, "money",22000 )
				if $SubItem != 0
					return
				endif
				AddPlayerInfo( -1 , "guildmoney" , 15000 )
				AddPlayerInfo( -1 , "guildoffer" , 3 )
				AddPlayerInfo( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3717 , $round )
				BC( "dialogbox", "player", -1, "You have made ",$round," donations today.\nThis time you donated 22000 coins, and have earned 15000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
				return
			else
				BC( "dialogbox", "player", -1, "You have made 3 donations today. Please come back tomorrow.\nIt's our duty to make preparation for the victory over Glacier City!\nThank you for your participation!" )
				return
			endif
		else
			$SubItem = SubPlayerInfo( -1, "money", 22000 )
			if $SubItem != 0
				return
			endif
			AddPlayerInfo( -1 , "guildmoney" , 15000 )
			AddPlayerInfo( -1 , "guildoffer" , 3 )
			AddPlayerInfo( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3717 , 1 )
			SetPlayerVar( -1 , 3716 , $nowtime )
			BC( "dialogbox", "player", -1, "It's your first donation today.\nThis time you donated 22000 coins, and have earned 15000 Funds for the guild.\nYour Contribution gains by 3\nYour EXP reward: " , $exp )
		endif 
		
	}