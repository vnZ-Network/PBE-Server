		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59235.s
	//		TaskID:?????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	//????????
	$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
	if $nullitem < 1
		BC( "screen", "player", -1, "You need at least 1 open Bag slot.")
		return
	endif
	
	
	//????
	
	$sub = SubPlayerInfo( -1 , "item" , 59235 , 1 )
	if $sub != 0
		return
	endif
	
	//??????1-74?
	$level = GetPlayerInfo( -1 , "level" )
	
	if $level <= 74
		AddPlayerInfo( -1 , "item" , 59931 , 1 )
		return
	endif
		
	//??????75-89?
	
	if $level <= 89
		AddPlayerInfo( -1 , "item" , 59932 , 1 )
		return
	endif
	
	//??????90-104?
	
	if $level <= 104
		AddPlayerInfo( -1 , "item" , 59933 , 1 )
		return
	endif
		
	//105???
	
	AddPlayerInfo( -1 , "item" , 59934 , 1 )
	
	
	
}