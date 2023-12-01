	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/12/10
	//		Author：朱建臣
	//		TaskName：task-332.s
	//		TaskID：
	//
	//****************************************
	
	//记录杀怪数量 3306
	
	function OnTaskDone(){ 
		
		$ectype_ID = GetEctypeID(-1, 539)
		AddMonsterByFloat( 30513, 1, $ectype_ID, 149, 149, 0 )
	  DeleteMonster($ectype_ID,30521)
		DeleteMonster($ectype_ID 30522)
		DeleteMonster($ectype_ID,30523)
		AddMonsterByFloat(30538,1,$ectype_ID,163,158,0 )                             	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		
    
  }                  