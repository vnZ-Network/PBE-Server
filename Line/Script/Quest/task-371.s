	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-371.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 544)
		DeleteMonster($ectype_ID,53131)
		
		AddMonsterByFloat( 53134, 1, $ectype_ID, 110, 99, 1 )
		AddMonsterByFloat( 53131, 1, $ectype_ID, 106, 108, 1, -1 )

          
  }                      