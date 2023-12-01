	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-404.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  	
  	$ectype_ID = GetEctypeID(-1, 565)
  	
  	DeleteMonster($ectype_ID,30701)
  	AddMonsterByFloat(30701,1,$ectype_ID,255,213,0)
  

          
  }               