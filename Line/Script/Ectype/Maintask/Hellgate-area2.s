	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:????????????
	//
	//****************************************
		
	
	function EnterArea(){
		$id = GetEctypeID ( -1 , 217 )
		$buff = IsExistStatus(-1,11815)
	//???????BUFF,????
				if $buff != 0				
						$fly = FlyToMap( -1, $id, 68, 63 )
						BC( "screen", "player", -1, "A great power blocks your way. You have to get the goddess' blessing to get through." )
						BC( "chat", "player", -1, "A great power blocks your way. You have to get the goddess' blessing to get through." )						
				endif
			}
		function LeaveArea(){
		}		