	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-330.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
		$ectype_ID = GetEctypeID(-1, 539)
		DeleteMonster($ectype_ID,30520)
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 539)
		AddMonsterByFloat( 30520, 3, $ectype_ID, 76, 241, 1 )
		AddMonsterByFloat( 30520, 4, $ectype_ID, 85, 247, 1 )
		AddMonsterByFloat( 30520, 3, $ectype_ID, 94, 242, 1 )
		AddMonsterByFloat( 30520, 4, $ectype_ID, 97, 254, 1 )
		AddMonsterByFloat( 30520, 3, $ectype_ID, 95, 248, 1 )
          
  }                      