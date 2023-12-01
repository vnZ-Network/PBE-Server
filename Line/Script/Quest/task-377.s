	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-377.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  	
  	DeleteMonster(562,30604)
  	$x = GetPlayerInfo(-1,"mapposx")
  	$y = GetPlayerInfo(-1,"mapposy")
  	$map = GetPlayerInfo(-1,"mapid")
  	AddMonsterByFloat(30604,1,$map,$x,$y,0,-1)

          
  }               