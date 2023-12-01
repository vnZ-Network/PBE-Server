//	----------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2011/6/28
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------
	
	function OnTaskDone(){
		  $mapID = GetPlayerInfo(-1,"mapid")
			AddMonsterByFloat( 30237, 1 , $mapID , 174 , 173 ,0 )
	}


	function OnTaskFailedDone(){
		
		
	}
	
	function OnTaskAccept(){
		
	
	}