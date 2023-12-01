	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-394.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$mapid = GetPlayerInfo(-1,"mapid")
		
		AddMonsterByFloat(30613,1,$mapid,$x,$y,0,-1)
		PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
          
  }               