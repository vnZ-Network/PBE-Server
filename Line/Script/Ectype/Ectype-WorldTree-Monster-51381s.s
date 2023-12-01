  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-05-08
	//		Author:???
	//		TaskName:monster-51381
	//		TaskID:?????????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )
		$kill = GetEctypeVar($ectype_ID,10)
		$kill = $kill + 1 
		SetEctypeVar($ectype_ID,10,$kill)
		$nun1 = 8
		$nun2 = 20
		$nun3 = 36
		$nun4 = 56
		if $kill <= $nun4
			if $kill > $nun3
				BC("screen","map",$ectype_ID,"Invaders killed: ",$kill," / ",$nun4)
			endif
		endif
		if $kill <= $nun3
			if $kill > $nun2
				BC("screen","map",$ectype_ID,"Invaders killed: ",$kill," / ",$nun3)
			endif
		endif
		if $kill <= $nun2
			if $kill > $nun1
				BC("screen","map",$ectype_ID,"Invaders killed: ",$kill," / ",$nun2)
			endif
		endif
		if $kill <= $nun1
			if $kill > 0
				BC("screen","map",$ectype_ID,"Invaders killed: ",$kill," / ",$nun1)
			endif
		endif
		if $kill == $nun1
			BC("screen","map",$ectype_ID,"A new wave of monsters is coming!")
		endif
		if $kill == $nun2
			BC("screen","map",$ectype_ID,"A new wave of monsters is coming!")
		endif
		if $kill == $nun3
			BC("screen","map",$ectype_ID,"A new wave of monsters is coming!")
		endif
		if $kill == $nun4
			BC("screen","map",$ectype_ID,"The ultimate monster is about to appear!")
		endif
		
	}