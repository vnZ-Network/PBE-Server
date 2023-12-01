//	---------------------------------------------------
//	--		Copyright£ºPERFECT WORLD
//	--		Modified£º2011/11/14
//	--		Author£º³ÂÔóè´
//	--		Class:	.s
//	--		AIName£º
//	--		Remark£º
//	----------------------------------------------------

	function OnTaskDone(){ 
		$map_id = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")


		AddMonsterByFloat( 30291, 1, 44, $posx , $posy , 1, -1 )
	
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		                  
  }                              
