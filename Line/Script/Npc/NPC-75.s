	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/07
	//		Author:???
	//		TaskName:NPC-75.s
	//		TaskID:???? ??NPC
	//
	//****************************************
	
	function OnRequest(){	
	
	}
	function OnOption0(){
		FlyToMap( -1 , 475 , 68 , 48 )
	}	
	
	//---------??????--------
	function OnOption1(){
		$info = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $info < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		$num = GetPlayerInfo( -1 , "item", 63421 )
		if $num < 5
			BC( "dialogbox", "player", -1, "You must have at least 5 Dim Star Fragments in order to trade for Constellation Wish Charms.")
			return
		endif
		$Subinfo = SubPlayerInfo( -1 , "item", 63421 , 5 )
		if $Subinfo != 0
			return
		endif
		AddPlayerInfo( -1, "item" , 63391 ,1 )
	}
	
	
	function OnOption2(){
	
		$Status1 = IsExistStatus( -1 , 10683 )
		$Status2 = IsExistStatus( -1 , 10684 )
		$Status3 = IsExistStatus( -1 , 10685 )
		$Status4 = IsExistStatus( -1 , 10686 )
		$Status5 = IsExistStatus( -1 , 10687 )
		$Status6 = IsExistStatus( -1 , 10688 )
		$Status7 = IsExistStatus( -1 , 10689 )
		$Status8 = IsExistStatus( -1 , 10690 )
		$Status9 = IsExistStatus( -1 , 10691 )
		$Status10 = IsExistStatus( -1 , 10692 )
		$Status11 = IsExistStatus( -1 , 10693 )
		$Status12 = IsExistStatus( -1 , 10694 )
		
		if $Status1 == 0
			FlyToMap( -1 , 133 , 65 , 68 )
			return
		endif
		if $Status2 == 0
			FlyToMap( -1 , 134 , 65 , 68 )
			return
		endif
		if $Status3 == 0
			FlyToMap( -1 , 135 , 65 , 68 )
			return
		endif
		if $Status4 == 0
			FlyToMap( -1 , 136 , 65 , 68 )
			return
		endif
		if $Status5 == 0
			FlyToMap( -1 , 137 , 65 , 68 )	
			return
		endif
		if $Status6 == 0
			FlyToMap( -1 , 138 , 65 , 68 )	
			return
		endif
		if $Status7 == 0
			FlyToMap( -1 , 139 , 65 , 68 )	
			return
		endif
		if $Status8 == 0
			FlyToMap( -1 , 140 , 65 , 68 )	
			return
		endif
		if $Status9 == 0
			FlyToMap( -1 , 141 , 65 , 68 )	
			return
		endif
		if $Status10 == 0
			FlyToMap( -1 , 142 , 65 , 68 )	
			return
		endif
		if $Status11 == 0
			FlyToMap( -1 , 143 , 65 , 68 )	
			return
		endif
		if $Status12 == 0
			FlyToMap( -1 , 144 , 65 , 68 )	
			return
		endif
		BC( "dialogbox", "player", -1, "You don't have the constellation Guardian Angel. You cannot return to the constellation temple.\nThe constellation temple you would return to is determined by the constellation Guardian Angel you have." )
		
		}
	