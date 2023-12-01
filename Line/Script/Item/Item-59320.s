	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-8-1
	//		Author:???
	//		TaskName:??????
	//		TaskID:item-59320
	//
	//****************************************
	
	function OnUseItem(){
		$RankList = GetRankListValue( 1, 110 )
		BC( "screen" , "player" , -1 , "The level of the 111th player's character is " , $RankList ,"Lv")	
		$FieldList = GetFieldRankListValue( 110 )
		BC( "screen" , "player" , -1 , "The Exalted level of the 111th player is " , $FieldList ,"Lv")
		$RankList2 = GetRankListValue( 1, 15 )
		BC( "screen" , "player" , -1 , "The level of the 16th player's character is " , $RankList2 ,"Lv")	
		$FieldList2 = GetFieldRankListValue( 15 )
		BC( "screen" , "player" , -1 , "The Exalted level of the 16th player is " , $FieldList2 ,"Lv")	
	
			
	}