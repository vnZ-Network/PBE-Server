	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/16
	//		Author:???
	//		TaskName:NPC-Christmas-monster-55192.s
	//		TaskID:??B
	//
	//****************************************
	
	function OnDead(){
	
		$sex = GetPlayerInfo( -1 , "sex" )
		#name =  GetPlayerInfo ( -1 , "name"  )
		$day = GetSystemTime( "mday" )
		$month =  GetSystemTime( "month")
		
		$line = GetServerLineID()
		$yday = GetSystemTime( "yday" )
		$yday = $yday + 1
		
		$a = $yday * $yday
		$a1 = $a + 3
		$b = $a % 8
		$b1 = $a1 % 8
		$c = $b + 1	
		$c1 = $b1 + 1
		
		$n = GetServerVar( 139 )		
		$n = $n + 1
		SetServerVar( 139 , $n )
		
		if $month == 1
			if $day == 1
				if $line == $c
					if $n == 7
						DropMonsterItems( -1 , 60426)
						BC( "messagebox", "player", -1, "Congratulations! You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "screen", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "chat", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						return
					endif
					if $n == 17
						DropMonsterItems( -1 , 60426)
						BC( "messagebox", "player", -1, "Congratulations! You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "screen", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "chat", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						return
					endif	
				endif
				if $line == $c1
					if $n == 13
						DropMonsterItems( -1 , 60423)
						BC( "messagebox", "player", -1, "Congratulations! You received a Christmas gift, the Christmas Sled Mount." )
						BC( "screen", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
						BC( "chat", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
						return
					endif	
				endif
			endif
		endif
		if $month == 1
			if $day >= 2
				if $day <= 4
					if $line == $c
						if $n == 7
							DropMonsterItems( -1 , 60426)
							BC( "messagebox", "player", -1, "Congratulations! You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
							BC( "screen", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
							BC( "chat", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
							return
						endif
					endif
					if $line == $c1
						if $n == 13
							DropMonsterItems( -1 , 60423)
							BC( "messagebox", "player", -1, "Congratulations! You received a Christmas gift, the Christmas Sled Mount." )
							BC( "screen", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
							BC( "chat", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
							return
						endif	
					endif
				endif
			endif
		endif
		
		if $month == 12
			if $day == 31
				if $line == $c
					if $n == 7
						DropMonsterItems( -1 , 60426)
						BC( "messagebox", "player", -1, "Congratulations! You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "screen", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						BC( "chat", "servergroup", -1, "Congratulations!",#name,"You have won the great Christmas reward, the egg of an ultimate limited edition festival pet: Snowbear." )
						return
					endif
				endif
				if $line == $c1
					if $n == 13
						DropMonsterItems( -1 , 60423)
						BC( "messagebox", "player", -1, "Congratulations! You received a Christmas gift, the Christmas Sled Mount." )
						BC( "screen", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
						BC( "chat", "servergroup", -1, "Congratulations!",#name,"You received a Christmas gift, the Christmas Sled Mount." )
						return
					endif	
				endif
			endif
		endif
		
		$n = RandomNumber ( 0 , 999 )
			if $n < 970
				AddPlayerInfo( -1 , "money" , 300000 )
				BC( "messagebox", "player", -1, "Congratulations! You have won 300000 coins." )
				BC( "screen", "server", -1, "Congratulations!",#name,"You have won 300000 coins!" )
				BC( "chat", "server", -1, "Congratulations!",#name,"You have won 300000 coins!" )
				return
			else
				DropMonsterItems( -1 , 60416 )
				BC( "messagebox", "player", -1, "Congratulations! You have won a Meld Fruit. " )
				BC( "screen", "server", -1, "Congratulations!",#name,"You have won a Meld Fruit. " )
				BC( "chat", "server", -1, "Congratulations!",#name,"You have won a Meld Fruit. " )
			endif
			
	}