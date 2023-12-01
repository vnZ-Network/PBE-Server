
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-4-11
	//		Author:???
	//		TaskName:???
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		$FieldLevel = GetFieldLevel(-1)

//		level^2*(level-19)/25*45
//		(5*FieldLevel*FieldLevel+3*FieldLevel+5000)*4

		$res = SubPlayerInfo(-1,"item",44246,1)
		if $res != 0
			return
		endif
		
		if $level < 45
			BC("screen","player",-1,"You must be at least LV45 to use this.")
			return
		endif
		
		$a1 = $level * $level
		$a2 = $level - 19
		$a3 = $a1 * $a2
		$a4 = $a3 / 25
		$exp = $a4 * 45
		AddPlayerInfo($playerid,"exp",$exp)
		
		if $FieldLevel > 0
			$b1 = $FieldLevel * $FieldLevel
			$b2 = $b1 * 5
			$b3 = $FieldLevel * 3
			$b4 = $b2 + $b3
			$b5 = $b4 + 5000
			$Fldexp = $b5 * 4
			AddFieldExp(-1,$Fldexp)
		endif

		$getsex = GetPlayerInfo(-1,"sex")
		if $getsex == 0
			BC("screen","player",-1,"Silya's energy is coming out! Warriors, onward!")
		else
			BC("screen","player",-1,"Silya's energy is coming out! May you know eternal joy!")
		endif
		
	}