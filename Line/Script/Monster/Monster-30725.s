//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2012/6/28
//	--		Author:???
//	--		Class:	Monster-30715.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

	function OnDead(){
		

	$playerid = GetPlayerID()
	$ectype_ID = GetEctypeID($playerid,565)
	
	AddNpcByPos( 1127, $ectype_ID, 144, 220, 180000, 0 )
	BC("messagebox","player",-1,"The portal back to Atlantis has opened!")
	}