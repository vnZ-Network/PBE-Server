	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/10/16
	//		Author：祁晶
	//		TaskName：HD-shiliandongku-NPC2.s
	//		TaskID：试炼洞窟活动脚本-接任务的NPC对话进洞窟脚本
	//
	//****************************************



	function OnRequest(){


	}



	//挂在NPC2身上的第一个选项,从地图里出去
	function OnOption0(){
		FlyToMap(-1, 132, 55, 60 )
	}