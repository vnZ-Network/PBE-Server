	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/18
	//		Author��¬��
	//		TaskName��Hellgate-area.s
	//		TaskID������֮������ʥ�����򴥷�
	//
	//****************************************
	
		function EnterArea(){
		}
	
		
	
	function LeaveArea(){
		$task = IsTaskDone( -1, 170 )
		$item = GetPlayerInfo( -1, "item", 12689 )

		//�����������ʾ�ţ������ж��Ƿ��е��ߣ����û�е�������ʾʥ����������ʾ��
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
			
		
		
		