	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-401.s
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
  	$map = GetPlayerInfo(-1,"mapid")
  	
  	AddMonsterByFloat(30619,1,$map,$x,$y,0)
  

          
  }               