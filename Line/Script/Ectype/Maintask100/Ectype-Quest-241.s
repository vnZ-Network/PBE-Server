	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/03/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºEctype-Quest-241.s
	//		TaskID£ºË¯ÉñÈÎÎñ
	//
	//****************************************
	
	function OnTaskAccept(){
		$step = GetPlayerVar( -1, 3246 )
		if $step > 6
			SetPlayerVar( -1, 3246, 7 )
		endif
	}
	
	function OnTaskDone(){
		$ectype_ID = GetEctypeID( -1, 265 )
		SetPlayerVar( -1, 3246, 8 )
		FlyToMap( -1, 227, 90, 92 )
	}