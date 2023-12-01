	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/12
	//		Author:???
	//		TaskName:JS-Item-59226.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$Item = 59226
		$JS = 1000
		
		$nfo = SubPlayerInfo( -1, "item", $Item, 1 )
		if $nfo != 0
			return
		endif
		
		AddPlayerInfo( -1, "prestige", 45, $JS )
		BC( "chat", "player", -1, "You gain ",$JS," Salvation" )
		
		}