	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/18
	//		Author：卢鑫
	//		TaskName：Hellgate-area.s
	//		TaskID：地狱之门亡灵圣经区域触发
	//
	//****************************************
	
		function EnterArea(){
		}
	
		
	
	function LeaveArea(){
		$task = IsTaskDone( -1, 170 )
		$item = GetPlayerInfo( -1, "item", 12689 )

		//任务完成则显示门，否则判断是否有道具，如果没有道具则显示圣经，否则显示门
				if $task == 0				
						AddNPC( 412, -1 )	
				else
						if $item < 1
								AddNPC( 411, -1 )	
						else
								AddNPC( 412, -1 )					
						endif
				endif
			}
			
		
		
		