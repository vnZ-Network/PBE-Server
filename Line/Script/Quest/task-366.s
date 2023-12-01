	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-366.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
		$ectype_ID = GetEctypeID(-1, 544)
		OpenMask(1,$ectype_ID)
		
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 544)
		DeleteMonster($ectype_ID,53119)
		AddMonsterByFloat( 53119, 1, $ectype_ID, 214, 174, 1 )
		AddMonsterByFloat( 53122, 1, $ectype_ID, 222, 172, 1 )

          
  }                      