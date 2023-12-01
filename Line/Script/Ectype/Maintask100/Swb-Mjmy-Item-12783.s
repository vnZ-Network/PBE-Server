
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Item-12783.s
	//		TaskID:  
	//****************************************
	
//	function OnUseItem(){
//		
//		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
//		if $no_bag < 1
//			BC( "screen", "player", -1, "GUID:04492000000" )
//			return
//		endif
//		$info = GetPlayerInfo( -1, "item", 12783 )
//		if $info < 3
//			BC( "screen", "player", -1, "GUID:04492000001" )
//			return
//		endif
//		$info = SubPlayerInfo( -1, "item", 12783 , 3 )
//		if $info != 0
//			return
//		endif
//		AddPlayerInfo( -1, "item", 12784 , 3 )
//	}