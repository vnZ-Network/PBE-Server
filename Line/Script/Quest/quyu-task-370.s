	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011/11/14
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫quyu-task-370.s
	//		TaskID£∫
	//
	//****************************************
	
	
	function EnterArea(){
		
		$ectype_ID = GetEctypeID(-1, 544)
		$a = IsTaskAccept( -1, 370 )
  	if $a == 0 
  		OpenMask(2,$ectype_ID)
  	endif
  	
  }
  
  	function LeaveArea(){
	
	
	}