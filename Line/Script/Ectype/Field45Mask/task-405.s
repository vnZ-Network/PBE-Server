	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-405.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  	
  	
  	$ectype_ID = GetEctypeID(-1, 565)
  	DeleteMonster($ectype_ID,30708)
  	DeleteMonster($ectype_ID,30719)
  	DeleteMonster($ectype_ID,30720)
  	DeleteMonster($ectype_ID,30721)
  	DeleteMonster($ectype_ID,30728)
  	
  	AddMonsterByFloat(30719,1,$ectype_ID,208,100,0,-1,90)
  	AddMonsterByFloat(30720,1,$ectype_ID,203,105,0,-1,135)
  	AddMonsterByFloat(30721,1,$ectype_ID,211,105,0,-1,180)
  	AddMonsterByFloat(30728,1,$ectype_ID,207,105,0,-1,180)
  

          
  }               