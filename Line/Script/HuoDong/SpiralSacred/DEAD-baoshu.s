//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	DEAD-baoshu.s
//	--		TaskID:??????
//	----------------------------------------------------

	function OnDead(){
		
		
		$monid = GetMonsterTemplateID(-1)
		$monid = $monid - 32229
		$ectype_ID = GetCurEctypeID()
		$playerid = GetEctypeVar($ectype_ID,$monid)
		$toushu = GetPlayerVar($playerid,3548)
		BC( "chat", "player", $playerid, "You roll a ",$toushu,"points ")
		BC( "screen", "player", $playerid, "You roll a ",$toushu,"points ")
		
	}