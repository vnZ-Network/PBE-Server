	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/11
	//		Author:??
	//		TaskName:ITEM-huodong63191.s
	//		TaskID:?????????????-??
	//
	//****************************************


     function OnUseItem(){

         	
		$result = IsTaskAccept( -1 , 956 )
			//?????????
		if $result != 0
			BC( "messagebox", "player", -1 ,"You don't have Music Gem!" )
			return
		endif

		$n = GetPlayerVar(-1, 3202 )
		if $n == 4
			BC( "messagebox", "player", -1 ,"You Music Gem is green! You don't need to change the color." )
			return
		endif

		$result = SubPlayerInfo( -1 , "item" , 63191 , 1)
		if $result == 0
			SetPlayerVar(-1, 3202, 4)
			SubPlayerInfo( -1 , "item" , 12159 , -1)
			SubPlayerInfo( -1 , "item" , 12160 , -1) 
			SubPlayerInfo( -1 , "item" , 12161 , -1) 
			SubPlayerInfo( -1 , "item" , 12162 , -1)          			
			AddPlayerInfo( -1 , "item" , 12162 , 1)
			AddStatus(-1 , 11660 , 1)      			
			BC( "messagebox", "player", -1 ,"You Music Gem color has been changed to green." )         			
		endif      		


	}