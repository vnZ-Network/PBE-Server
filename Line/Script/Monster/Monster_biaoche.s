	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/13
	//		Author:???
	//		TaskName:Monster_biaoche.s
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		
		//???????????
		$nCharID = GetMonsterCharID()
		$num = GetDartProtectNum( $nCharID )
		
		//id?????
		$myid = GetPlayerID()
		if $myid <= 0
			
			return
		
		endif
		
//		//?bug??
//		if $num > 6
//			$num = 6
//		endif
		
//		$money = 50000
		
		AddPlayerInfo( -1 , "money" , 50000 )
		
		//????????
		$familyid = GetPlayerInfo( -1 , "guildid" )
		#familyname = GetPlayerInfo( -1 , "guildname" )
		
		#name = GetPlayerInfo( -1 , "name" )
		
		//????
		$playerid = GetDartProtectID( $nCharID , 0 )
		
		#name2 = GetPlayerInfo( $playerid , "name" )
		#familyname2 = GetPlayerInfo( $playerid , "guildname" )
		
		
		BC( "screen" , "servergroup" , -1 , "The hero " , #familyname , "  Legion's " , #name , " successfully seized the " , #familyname2 , "  Legion's " , #name2 , " Advanced Cart!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #familyname , "  Legion's " , #name , " successfully seized the " , #familyname2 , "  Legion's " , #name2 , " Advanced Cart!"  )
		
	}