	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011/11/14
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫quyu-task-283.s
	//		TaskID£∫
	//
	//****************************************
	
	
	function EnterArea(){
		$a = IsTaskAccept( -1, 283 )
  	if $a == 0 
  		DeleteMonster(280,30275)
  	  DeleteMonster(280,30276)
  		AddMonsterByFloat( 30275, 1, 280, 174, 160, 0 )
  		AddMonsterByFloat( 30276, 1, 280, 179, 160, 0 )
  	endif
  	
  }
  
  	function LeaveArea(){
	
			//SetServerVar( 286, 0 )
  		//SetServerVar( 287, 0 )
	
	}