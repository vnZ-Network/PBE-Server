	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:??
	//		TaskName:GOD-Item-59201.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		//????????????????
		$result = HaveTitle( -1 , 21 )
		if $result != 0
		        BC( "screen", "player", -1, "You can only use a Spirit Badge after you've acquired the Demigod title." )
			return
		endif
		
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue == $godvaluemax
			BC( "screen", "player", -1, "Your Deity is full. You can't use a Spirit Badge." )
			return
		endif
				
		//??????
		$nfo = SubPlayerInfo( -1 , "item" , 59201, 1 )
		if $nfo != 0
			return
		endif
		
		//??????????100?
		AddPlayerInfo(-1,"godvalue",100)
			BC( "chat", "player", -1, "You have received 1000 Deity points." )

		}