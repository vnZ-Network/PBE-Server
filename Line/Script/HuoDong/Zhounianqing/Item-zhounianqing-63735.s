		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-63735.s
	//		TaskID:?????
	//****************************************
 
	function OnUseItem(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 55
			ReqAward( -1 , 4 , 1 )
			BC( "screen", "player", -1, "You've used a Lucky Sticker. Good luck!" )
		else
			ReqAward( -1 , 3 , 1 )
			BC( "screen", "player", -1, "You've used a Lucky Sticker. Good luck!" )
		endif
		
						
	}