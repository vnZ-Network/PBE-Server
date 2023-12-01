	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-403.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  	
  	$ectype_ID = GetEctypeID(-1, 565)
  	
  	DeleteMonster($ectype_ID,30715)
  	DeleteMonster($ectype_ID,30716)
  	DeleteMonster($ectype_ID,30717)
  	DeleteMonster($ectype_ID,30718)
  	DeleteMonster($ectype_ID,30707)
  	
  	AddMonsterByFloat(30724,1,$ectype_ID,210,172,0)
  	SetEctypeVar($ectype_ID,3,0)
  	SetEctypeVar($ectype_ID,4,0)
  	SetEctypeVar($ectype_ID,5,0)
  	SetEctypeVar($ectype_ID,6,0)
  	StartEctypeTimer($ectype_ID,2)
  	StartEctypeTimer($ectype_ID,3)
  	StartEctypeTimer($ectype_ID,4)
  	StartEctypeTimer($ectype_ID,5)
  	
//  	AddMonsterByFloat(30715,1,$map,223,183,0)
//  	AddMonsterByFloat(30716,1,$map,223,159,0)
//  	AddMonsterByFloat(30717,1,$map,196,159,0)
//  	AddMonsterByFloat(30718,1,$map,196,183,0)
  

          
  }               