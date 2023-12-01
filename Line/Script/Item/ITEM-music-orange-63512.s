	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/27
	//		Author:???
	//		TaskName:ITEM-music-orange-63512.s
	//		TaskID:?????
	//
	//****************************************


      function OnUseItem(){

         	
		$result = IsTaskAccept( -1 , 956 )
		if $result != 0
			BC( "messagebox", "player", -1 ,"You don't have Music Gem!" )
			return
		endif

		$n = GetPlayerVar(-1, 3202 )
		if $n == 2
			BC( "messagebox", "player", -1 ,"You Music Gem is orange! You don't need to change the color." )
			return
		endif

		$result = SubPlayerInfo( -1 , "item" , 63512 , 1)
		if $result == 0
			SetPlayerVar(-1, 3202, 2)
			SubPlayerInfo( -1 , "item" , 12159 , -1)
			SubPlayerInfo( -1 , "item" , 12160 , -1) 
			SubPlayerInfo( -1 , "item" , 12161 , -1) 
			SubPlayerInfo( -1 , "item" , 12162 , -1)          			
			AddPlayerInfo( -1 , "item" , 12160 , 1) 
			AddStatus(-1 , 11658 , 1)      			
			BC( "messagebox", "player", -1 ,"You Music Gem color has been changed to orange." )         			
		endif      		


	}