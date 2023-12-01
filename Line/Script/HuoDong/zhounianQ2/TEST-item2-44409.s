//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/04/07
	//		Author：胡斌涛
	//		TaskName：测试
	//		TaskID：
	//
	//****************************************
	function OnUseItem(){


		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$week = GetSystemTime("week")
		$yday = GetSystemTime("yday")
		$yweek = GetNowWeek()
		$second = GetSystemTime("second")
		$level = GetPlayerInfo(-1,"level")
		$FLDlevel = GetFieldLevel($playerid)
		$ExpPT = GetPlayerInfo($playerid,"exp")
		$fExpPT = GetFieldLevel($playerid)
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = $mapid

		BC("chat","player",-1," - - - - - - - ")
		BC("chat","player",-1," - - - - - - - ")
		BC("chat","player",-1," - - - - - - - ")
		BC("chat","player",-1," - - - - - - - ")
		BC("chat","player",-1," - <time> - "," | ",$hour," : ",$minute," : ",$second," |"
		BC("screen","player",-1,$year,"-",$month,"-",$mday," | ",$hour," : ",$minute," : ",$second," | week = ",$week," | yday = ",$yday," | yweek = ",$yweek)
		BC("screen","player",-1,"mapid = ",$mapid," | playerid = ",$playerid," | guildid = ",$guildid)
		//---------------------------------------------------------常规
		

		
		//---------------------------------------------------------变量
		
		
		
		
		
	}