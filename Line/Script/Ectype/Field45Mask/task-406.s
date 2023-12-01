	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-406.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
  	$ectype_ID = GetEctypeID(-1, 565)
  	
  	DeleteMonster($ectype_ID,30700)
  	DeleteMonster($ectype_ID,30705)

  	
  	AddMonsterByFloat(30700,1,$ectype_ID,110,110,0)

          
  }               