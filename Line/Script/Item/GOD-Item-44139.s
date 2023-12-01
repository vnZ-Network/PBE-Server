	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/29
	//		Author:???
	//		TaskName:GOD-Item-44139.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$Item = 44139
		$God = 50000
		
		$Title = HaveTitle( -1, 21 )
		if $Title != 0
		   BC( "screen", "player", -1, "Sorry! To use this you must have a Demigod or higher title." )
			 return
		endif
		
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Sorry! Your Deity is at its maximum. Unable to use." )
			return
		endif
				
		//??????
		$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
		if $nfo != 0
			return
		endif
		
		//??????????100?
		AddPlayerInfo( -1, "godvalue", $God )
		BC( "chat", "player", -1, "You gain ",$God," Deity" )

		}