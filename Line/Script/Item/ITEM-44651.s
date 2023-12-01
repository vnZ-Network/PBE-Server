	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/1/29
	//		Author:??
	//		TaskName:ITEM-44651.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
//		if $bag_count2 < 1
//			BC( "screen", "player", -1, "GUID:06282000001" )
//			return
//		endif
		
		//????
 		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		$sex = GetPlayerInfo(-1, "sex" )
		$n = RandomNumber(1,5)
		if $sex == 1
			if $n == 1
				AddPlayerInfo( -1 , "item" , 44662 , 1 )		
			endif
			if $n == 2
				AddPlayerInfo( -1 , "item" , 44663 , 1 )		
			endif	
			if $n == 3
				AddPlayerInfo( -1 , "item" , 44664 , 1 )		
			endif	
			if $n == 4
				AddPlayerInfo( -1 , "item" , 44665 , 1 )		
			endif	
			if $n == 5
				AddPlayerInfo( -1 , "item" , 44666 , 1 )		
			endif				
		endif		
		if $sex == 0
			if $n == 1
				AddPlayerInfo( -1 , "item" , 44667 , 1 )		
			endif
			if $n == 2
				AddPlayerInfo( -1 , "item" , 44668 , 1 )		
			endif	
			if $n == 3
				AddPlayerInfo( -1 , "item" , 44669 , 1 )		
			endif	
			if $n == 4
				AddPlayerInfo( -1 , "item" , 44670 , 1 )		
			endif	
			if $n == 5
				AddPlayerInfo( -1 , "item" , 44671 , 1 )		
			endif		
		endif				
	}
		