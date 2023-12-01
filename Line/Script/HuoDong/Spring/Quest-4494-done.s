	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010
	//		Author:???
	//		TaskName:Quest-4494-done.s
	//		TaskID:????????
	//****************************************
	
	function OnTaskFailedDone(){
		
		//??????,???????
		SendMail( -1 , "Armadura Angel's Letter" , "Thanks for your keeping your promise. We have enjoyed the festival together in the world of BoI. You should've received a gift pack by now. Please come back tomorrow. " , 0 , 63690 )
		//??????
		
		$history = GetGlobalVar( 970 )
		$history = $history + 1
		SetGlobalVar( 970 , $history )
	}