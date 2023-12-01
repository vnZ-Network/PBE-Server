//	---------------------------------------------------
//	--		Copyright£ºPERFECT WORLD
//	--		Modified£º2011/11/14
//	--		Author£º³ÂÔóè´
//	--		Class:	.s
//	--		AIName£º
//	--		Remark£º
//	----------------------------------------------------

	function OnTaskDone(){ 	
  }                              

  function OnTaskFailedDone(){                              
  }                              
                                 
  function OnTaskAccept(){ 
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		AddMonsterByFloat( 30293, 1, 44, $posx , $posy , 1, -1 )    
		                  
  }                              
