	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
//?????????????
//?????????????
//?????????????
//?????????????
//?????????????
//?????????????
//44463	??5?(??)
//44464	??6?(??)

	function OnRequest(){
		
	}
	
	function OnOption0(){
		$indexH = 0
		call checkhole()
	}
	
	function OnOption1(){
		$indexH = 1
		call checkhole()
	}
	
	function OnOption2(){
		$indexH = 2
		call checkhole()
	}
	
	function OnOption3(){
		$indexH = 3
		call checkhole()
	}
	
	function OnOption4(){
		$indexH = 4
		call checkhole()
	}
	
	function OnOption5(){
		$indexH = 5
		call checkhole()
	}
	
	function checkhole(){

		$clever = GetBattlePetInfo(-1,"clever")
		if $clever < 0
			BC("dialogbox","player",-1,"You didn't summon a Pet!")
			return
		endif
		
		$smh = 0
		$indexW = 0
		//------------------
//			if $chkhole == 4
//				#holename = "Passive"
//			endif
		$sethole = 4
		//------------------
		call holename()
		
		$chkhole = GetBattlePetInfo(-1,"hole",$indexH)
		if $chkhole == -2
			$indexH += 1
			BC("dialogbox","player",-1,"Your Pet's ",$indexH," skill slots are not activated yet.")
			return
		endif
		if $chkhole == $sethole
			$indexH += 1
			BC("dialogbox","player",-1,"Your Pet's ",$indexH," skill slots' type is  ",#holename,"! Don't need to change it!")
			return
		endif
		
		while $indexW < 6
			$chkhole = GetBattlePetInfo(-1,"hole",$indexW)
			if $chkhole == $sethole
				$smh += 1
			endif
			$indexW += 1
		endwhile
		
		if $smh < 4
			BC("dialogbox","player",-1,"Your Pet needs 4 passive skill slots to use Ethereal Seal LV5 (Passive), and 5 passive skill slots to use Ethereal Seal LV6 (Passive).")
			return
		endif
		
		if $smh == 4
			$itemN = GetPlayerInfo(-1,"item",44463)
			if $itemN < 1
				BC("dialogbox","player",-1,"Your activated Pet has 4 passive skill slots already.\nPlease give me an Ethereal Seal LV5 (Passive)!")
				return
			endif
			$res = SubPlayerInfo(-1,"item",44463,1)
			if $res == 0
				$result = SetBattlePetInfo(-1,"hole",$indexH,$sethole)
				if $result == 0
					$indexH += 1
					BC("chat","player",-1,"Congratulations! Your Pet's ",$indexH,"skill slots' type is ",#holename,"!")
					BC("messagebox","player",-1,"Congratulations!\nYour Pet's ",$indexH,"skill slots' type is ",#holename,"!")
				else
					BC("dialogbox","player",-1,"Failed!")
				endif
			endif
		endif
		if $smh == 5
			$itemN = GetPlayerInfo(-1,"item",44464)
			if $itemN < 1
				BC("dialogbox","player",-1,"Your activated Pet has 5 passive skill slots already.\nPlease give me an Ethereal Seal LV6 (Passive)!")
				return
			endif
			$res = SubPlayerInfo(-1,"item",44464,1)
			if $res == 0
				$result = SetBattlePetInfo(-1,"hole",$indexH,$sethole)
				if $result == 0
					$indexH += 1
					BC("chat","player",-1,"Congratulations! Your Pet's ",$indexH,"skill slots' type is ",#holename,"!")
					BC("messagebox","player",-1,"Congratulations!\nYour Pet's ",$indexH,"skill slots' type is ",#holename,"!")
				else
					BC("dialogbox","player",-1,"Failed!")
				endif
			endif
		endif

	}
	
	function holename(){
		
			if $sethole == 1
				#holename = "Attack"
			endif
			if $sethole == 2
				#holename = "Auxiliary"
			endif
			if $sethole == 3
				#holename = "Support"
			endif
			if $sethole == 4
				#holename = "Passive"
			endif
			if $sethole == 5
				#holename = "Fortify"
			endif
			if $sethole == 6
				#holename = "Special"
			endif
			if $sethole == -2
				#holename = "Not activated yet."
			endif
		
	}
