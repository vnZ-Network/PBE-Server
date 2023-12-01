	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???(??,??,??)
	//		TaskName:??????????
	//		TaskID:831-FateGoddess.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$times = GetEctypeVar($ectype_id,66)
		if $times >= 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif					

}
	
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$gold = GetEctypeVar($ectype_id,67)
		$gold = $gold + 1
		SetEctypeVar($ectype_id,67,$gold)
		
		$times = GetEctypeVar($ectype_id,66)
		$times = $times + 1
		SetEctypeVar($ectype_id,66,$times)
		
		BC("dialogbox","player",-1,"You've chosen: Coins! At the end of your adventure, you will receive bonus Adventure Coins.")
		PlayEffect(0,"common\NpcStateEffect\ChuanSong.ini")  
		
		
	}
	
	function OnOption1(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$gem = GetEctypeVar($ectype_id,68)
		$gem = $gem + 1
		SetEctypeVar($ectype_id,68,$gem)
		
		$times = GetEctypeVar($ectype_id,66)
		$times = $times + 1
		SetEctypeVar($ectype_id,66,$times)
		
		BC("dialogbox","player",-1,"You've chosen: Gems! At the end of your adventure, you will receive bonus gems.")
		PlayEffect(0,"common\NpcStateEffect\BaoShi.ini")    
		
				
	}
	
	function OnOption2(){
	
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$crystal = GetEctypeVar($ectype_id,69)
		$crystal = $crystal + 1
		SetEctypeVar($ectype_id,69,$crystal)
		
		$times = GetEctypeVar($ectype_id,66)
		$times = $times + 1
		SetEctypeVar($ectype_id,66,$times)
		
		BC("dialogbox","player",-1,"You've chosen: Crystals! At the end of your adventure, you will receive bonus crystals.")
		PlayEffect(0,"common\NpcStateEffect\ZhuangBeiQiangHua.ini")
	
	
		
	}
			