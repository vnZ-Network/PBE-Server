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
//44465	??6?(??)
//44466	??6?(??)

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
//			if $chkhole == 6
//				#holename = "Special"
//			endif
		$sethole = 6
		$subitemID = 44465
		#itemname = "Ethereal Seal (Special)"
		//------------------
		call holename()
		
		$chkhole = GetBattlePetInfo(-1,"hole",$indexH)
		if $chkhole == -2
			$indexH += 1
			BC("dialogbox","player",-1,"Your Pet's ",$indexH," skill slots is not activated yet.")
			return
		endif
		if $chkhole == $sethole
			$indexH += 1
			BC("dialogbox","player",-1,"Your Pet's ",$indexH," skill slots' type is",#holename,"! Don't need to change it!")
			return
		endif
		
		while $indexW < 6
			$chkhole = GetBattlePetInfo(-1,"hole",$indexW)
			if $chkhole == $sethole
				$smh += 1
			endif
			$indexW += 1
		endwhile

//		if $smh < 4
//			BC("dialogbox","player",-1,"GUID:05228000008")
//			return
//		endif
//		if $smh == 5
			$itemN = GetPlayerInfo(-1,"item",$subitemID)
			if $itemN < 1
				BC("dialogbox","player",-1,"Please give me a ",#itemname,"!")
				return
			endif
			$res = SubPlayerInfo(-1,"item",$subitemID,1)
			if $res == 0
				$result = SetBattlePetInfo(-1,"hole",$indexH,$sethole)
				if $result == 0
					$indexH += 1
					BC("chat","player",-1,"Congratulations! Your Pet's ",$indexH," skill slots' type is ",#holename,"!")
					BC("messagebox","player",-1,"Congratulations! Your Pet's",$indexH," skill slots' type is ",#holename,"!")
				else
					BC("dialogbox","player",-1,"Failed!")
				endif
			endif
//		endif

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
