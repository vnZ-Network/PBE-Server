	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/15
	//		Author:???
	//		TaskName:ITEM-Explor-bless-63391.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		
		$BlessMaxNum = 60
		$BlessMinNum = 50
		$x = GetPlayerInfo( -1, "mapposx")
		$y = GetPlayerInfo( -1, "mapposy")
		$mapid = GetPlayerInfo( -1, "mapid")
		$Bless = GetPlayerInfo( -1, "item",63391)

	//-----------????NPC??------------------------
	//	?SERVER??????
		$Aries = GetServerVar( 121 )
		$Taurus = GetServerVar( 122 )
		$Gemini = GetServerVar( 123 )
		$Cancer = GetServerVar( 124 )
		$Leo = GetServerVar( 125 )
		$Virgo = GetServerVar( 126 )
		$Libra = GetServerVar( 127 )
		$Scorpio = GetServerVar( 128 )
		$Sagittariu = GetServerVar( 129 )
		$Capricorn = GetServerVar( 130 )
		$Aquarius = GetServerVar( 131 )
		$Pisces = GetServerVar( 132 )
		
		$Hide = GetServerVar(133)
		
		$Status1 = IsExistStatus( -1 , 10683 )
		$Status2 = IsExistStatus( -1 , 10684 )
		$Status3 = IsExistStatus( -1 , 10685 )
		$Status4 = IsExistStatus( -1 , 10686 )
		$Status5 = IsExistStatus( -1 , 10687 )
		$Status6 = IsExistStatus( -1 , 10688 )
		$Status7 = IsExistStatus( -1 , 10689 )
		$Status8 = IsExistStatus( -1 , 10690 )
		$Status9 = IsExistStatus( -1 , 10691 )
		$Status10 = IsExistStatus( -1 , 10692 )
		$Status11 = IsExistStatus( -1 , 10693 )
		$Status12 = IsExistStatus( -1 , 10694 )
		
	
		
	//---------??NPC????------??----
		if $Hide == 0
		//------??-----$constellation1--------
			if $mapid == 133
				if $Status1 == 0
					$Subinfo1 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo1 != 0
						return
					endif
					$Aries = $Aries + 1
					$Aries1 = 60 - $Aries
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Aries Temple needs ",$Aries1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 121 , $Aries )
					if $Aries == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186 , "The Arietid meteor shower has come to Aries Temple. The Pisces Guardian Angel is being activated!" )
						BC( "chat", "map", 186, "The Arietid meteor shower has come to Aries Temple. The Pisces Guardian Angel is being activated!" )
						BC( "screen", "map", 133 , "The Arietid meteor shower has come. The Aries Guardian Angel may soon activate!" )
						BC( "chat", "map", 133, "The Arietid meteor shower has come. The Aries Guardian Angel may soon activate!" )
					endif	
					if $Aries == $BlessMaxNum
						SetServerVar( 133 , 1 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Aries is the winning sign! You can obtain your reward if you have a Aries Guardian Angel.")
						BC( "chat", "map", 186, "Aries is the winning sign! You can obtain your reward if you have a Aries Guardian Angel.")
						BC( "screen", "map", 133, "Aries is the winning sign! You can obtain your reward if you have a Aries Guardian Angel.")
						BC( "chat", "map", 133, "Aries is the winning sign! You can obtain your reward if you have a Aries Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Aries Protection] ")
					return
				endif
			endif		
		//------??-----$constellation2--------
			if $mapid == 134
				if $Status2 == 0
					$Subinfo2 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo2 != 0
						return
					endif
					$Taurus = $Taurus + 1
					$Taurus1 = 60 - $Taurus 
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Taurus Temple needs ",$Taurus1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 122 , $Taurus )
					if $Taurus == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Taurid meteor shower has come to Taurus Temple. The Taurus Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Taurid meteor shower has come to Taurus Temple. The Taurus Guardian Angel is being activated!")
						BC( "screen", "map", 134, "The Taurid meteor shower has come. The Taurus Guardian Angel may soon activate!")
						BC( "chat", "map", 134, "The Taurid meteor shower has come. The Taurus Guardian Angel may soon activate!")
					endif	
					if $Taurus == $BlessMaxNum
						SetServerVar( 133 , 2 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Taurus is the winning sign! You can obtain your reward if you have a Taurus Guardian Angel.")
						BC( "chat", "map", 186, "Taurus is the winning sign! You can obtain your reward if you have a Taurus Guardian Angel.")
						BC( "screen", "map", 134, "Taurus is the winning sign! You can obtain your reward if you have a Taurus Guardian Angel.")
						BC( "chat", "map", 134, "Taurus is the winning sign! You can obtain your reward if you have a Taurus Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Taurus Protection] ")
					return
				endif
			endif	
		//------??-----$constellation3--------
			if $mapid == 135
				if $Status3 == 0
					$Subinfo3 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo3 != 0
						return
					endif
					$Gemini = $Gemini + 1
					$Gemini1 = 60 - $Gemini
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Gemini Temple needs ",$Gemini1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 123 , $Gemini )
					if $Gemini == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186 , "The Geminid meteor shower has come to Gemini Temple. The Gemini Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Geminid meteor shower has come to Gemini Temple. The Gemini Guardian Angel is being activated!")
						BC( "screen", "map",135 , "The Geminid meteor shower has come. The Gemini Guardian Angel may soon activate!")
						BC( "chat", "map", 135, "The Geminid meteor shower has come. The Gemini Guardian Angel may soon activate!")
					endif	
					if $Gemini == $BlessMaxNum
						SetServerVar( 133 , 3 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Gemini is the winning sign! You can obtain your reward if you have a Gemini sign.")
						BC( "chat", "map", 186, "Gemini is the winning sign! You can obtain your reward if you have a Gemini sign.")
						BC( "screen", "map", 135, "Gemini is the winning sign! You can obtain your reward if you have a Gemini sign.")
						BC( "chat", "map", 135, "Gemini is the winning sign! You can obtain your reward if you have a Gemini sign.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Gemini Protection] ")
					return
				endif
			endif	
		//------??-----$constellation4--------
			if $mapid == 136
				if $Status4 == 0
					$Subinfo4 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo4 != 0
						return
					endif
					$Cancer = $Cancer + 1
					$Cancer1 = 60 - $Cancer
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Cancer Temple needs ",$Cancer1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 124 , $Cancer )
					if $Cancer == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Geminid meteor shower has come to Gemini Temple. The Gemini Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Geminid meteor shower has come to Gemini Temple. The Gemini Guardian Angel is being activated!")
						BC( "screen", "map", 136, "The Cancerian meteor shower has come. The Cancer Guardian Angel may soon activate!")
						BC( "chat", "map", 136, "The Cancerian meteor shower has come. The Cancer Guardian Angel may soon activate!")
					endif	
					if $Cancer == $BlessMaxNum
						SetServerVar( 133 , 4 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Cancer is the winning sign! You can obtain your reward if you have a Cancer Guardian Angel.")
						BC( "chat", "map", 186, "Cancer is the winning sign! You can obtain your reward if you have a Cancer Guardian Angel.")
						BC( "screen", "map", 136, "Cancer is the winning sign! You can obtain your reward if you have a Cancer Guardian Angel.")
						BC( "chat", "map", 136, "Cancer is the winning sign! You can obtain your reward if you have a Cancer Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Cancer Protection] ")
					return
				endif
			endif
		//------??-----$constellation5--------
			if $mapid == 137
				if $Status5 == 0
					$Subinfo5 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo5 != 0
						return
					endif
					$Leo = $Leo + 1
					$Leo1 = 60 - $Leo
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Leo Temple needs ",$Leo1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 125 , $Leo )
					if $Leo == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Leonid meteor shower has come to Leo Temple. The Leo Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Leonid meteor shower has come to Leo Temple. The Leo Guardian Angel is being activated!")
						BC( "screen", "map", 137, "The Leonid meteor shower has come. The Leo Guardian Angel may soon activate!")
						BC( "chat", "map", 137, "The Leonid meteor shower has come. The Leo Guardian Angel may soon activate!")
						endif	
					if $Leo == $BlessMaxNum
						SetServerVar( 133 , 5 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Leo is the winning sign! You can obtain your reward if you have a Leo Guardian Angel.")
						BC( "chat", "map", 186, "Leo is the winning sign! You can obtain your reward if you have a Leo Guardian Angel.")
						BC( "screen", "map", 137, "Leo is the winning sign! You can obtain your reward if you have a Leo Guardian Angel.")
						BC( "chat", "map", 137, "Leo is the winning sign! You can obtain your reward if you have a Leo Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Leo Protection] ")
					return
				endif
			endif
		//------??-----$constellation6--------
			if $mapid == 138
				if $Status6 == 0
					$Subinfo6 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo6 != 0
						return
					endif
					$Virgo = $Virgo + 1
					$Virgo1 = 60 - $Virgo
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Virgo Temple needs ",$Virgo1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 126 , $Virgo )
					if $Virgo == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Virginid meteor shower has come to Virgo Temple. The Virgo Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Virginid meteor shower has come to Virgo Temple. The Virgo Guardian Angel is being activated!")
						BC( "screen", "map", 138, "The Virginid meteor shower has come. The Virgo Guardian Angel may soon activate!")
						BC( "chat", "map", 138, "The Virginid meteor shower has come. The Virgo Guardian Angel may soon activate!")
					endif	
					if $Virgo == $BlessMaxNum
						SetServerVar( 133 , 6 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Virgo is the winning sign! You can obtain your reward if you have a Virgo Guardian Angel.")
						BC( "chat", "map", 186, "Virgo is the winning sign! You can obtain your reward if you have a Virgo Guardian Angel.")
						BC( "screen", "map", 138, "Virgo is the winning sign! You can obtain your reward if you have a Virgo Guardian Angel.")
						BC( "chat", "map", 138, "Virgo is the winning sign! You can obtain your reward if you have a Virgo Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Virgo Protection] ")
					return
				endif
			endif
		//------??-----$constellation7--------
			if $mapid == 139
				if $Status7 == 0
					$Subinfo7 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo7 != 0
						return
					endif
					$Libra = $Libra + 1
					$Libra1 = 60 - $Libra
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Libra Temple needs ",$Libra1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 127 , $Libra )
					if $Libra == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Librid meteor shower has come to Libra Temple. The Libra Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Librid meteor shower has come to Libra Temple. The Libra Guardian Angel is being activated!")
						BC( "screen", "map", 139, "The Librid meteor shower has come. The Libra Guardian Angel may soon activate!")
						BC( "chat", "map", 139, "The Librid meteor shower has come. The Libra Guardian Angel may soon activate!")
					endif	
					if $Libra == $BlessMaxNum
						SetServerVar( 133 , 7 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Libra is the winning sign! You can obtain your reward if you have a Libra Guardian Angel.")
						BC( "chat", "map", 186, "Libra is the winning sign! You can obtain your reward if you have a Libra Guardian Angel.")
						BC( "screen", "map", 139, "Libra is the winning sign! You can obtain your reward if you have a Libra Guardian Angel.")
						BC( "chat", "map", 139, "Libra is the winning sign! You can obtain your reward if you have a Libra Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Libra Protection] ")
					return
				endif
			endif
		//------??-----$constellation8--------
			if $mapid == 140
				if $Status8 == 0
					$Subinfo8 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo8 != 0
						return
					endif
					$Scorpio = $Scorpio + 1
					$Scorpio1 = 60 - $Scorpio
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Scorpio Temple needs ",$Scorpio1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 128 , $Scorpio )
					if $Scorpio == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Scorpiid meteor shower has come. The Scorpio Guardian Angel may soon activate!")
						BC( "chat", "map", 186, "The Scorpiid meteor shower has come. The Scorpio Guardian Angel may soon activate!")
						BC( "screen", "map", 140, "The Scorpiid meteor shower has come. The Scorpio Guardian Angel may soon activate!")
						BC( "chat", "map", 140, "The Scorpiid meteor shower has come. The Scorpio Guardian Angel may soon activate!")
					endif	
					if $Scorpio == $BlessMaxNum
						SetServerVar( 133 , 8 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Scorpio is the winning sign! You can obtain your reward if you have a Scorpio Guardian Angel.")
						BC( "chat", "map", 186, "Scorpio is the winning sign! You can obtain your reward if you have a Scorpio Guardian Angel.")
						BC( "screen", "map", 140, "Scorpio is the winning sign! You can obtain your reward if you have a Scorpio Guardian Angel.")
						BC( "chat", "map", 140, "Scorpio is the winning sign! You can obtain your reward if you have a Scorpio Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Scorpio Protection] ")
					return
				endif
			endif
		//------??-----$constellation9--------
			if $mapid == 141
				if $Status9 == 0
					$Subinfo9 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo9 != 0
						return
					endif
					$Sagittariu = $Sagittariu + 1
					$Sagittariu1 = 60 - $Sagittariu
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Sagittarius Temple needs ",$Sagittariu1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 129 , $Sagittariu )
					if $Sagittariu == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Sagittariid meteor shower has come to Sagittarius Temple. The Sagittarius Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Sagittariid meteor shower has come to Sagittarius Temple. The Sagittarius Guardian Angel is being activated!")
						BC( "screen", "map", 141, "The Sagittariid meteor shower has come. The Sagittarius Guardian Angel may soon activate!")
						BC( "chat", "map", 141, "The Sagittariid meteor shower has come. The Sagittarius Guardian Angel may soon activate!")
					endif	
					if $Sagittariu == $BlessMaxNum
						SetServerVar( 133 , 9 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Sagittarius is the winning sign! You can obtain your reward if you have a Sagittarius Guardian Angel.")
						BC( "chat", "map", 186, "Sagittarius is the winning sign! You can obtain your reward if you have a Sagittarius Guardian Angel.")
						BC( "screen", "map", 141, "Sagittarius is the winning sign! You can obtain your reward if you have a Sagittarius Guardian Angel.")
						BC( "chat", "map", 141, "Sagittarius is the winning sign! You can obtain your reward if you have a Sagittarius Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Sagittarius Protection] ")
					return
				endif
			endif
		//------??-----$constellation10--------
			if $mapid == 142
				if $Status10 == 0
					$Subinfo10 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo10 != 0
						return
					endif
					$Capricorn = $Capricorn + 1
					$Capricorn1 = 60 - $Capricorn
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Capricorn Temple needs ",$Capricorn1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 130 , $Capricorn )
					if $Capricorn == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Capricornid meteor shower has come to Capricorn Temple. The Capricorn Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Capricornid meteor shower has come to Capricorn Temple. The Capricorn Guardian Angel is being activated!")
						BC( "screen", "map", 142, "The Capricornid meteor shower has come. The Capricorn Guardian Angel may soon activate!")
						BC( "chat", "map", 142, "The Capricornid meteor shower has come. The Capricorn Guardian Angel may soon activate!")
					endif	
					if  $Capricorn == $BlessMaxNum
						SetServerVar( 133 , 10 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Capricorn is the winning sign! You can obtain your reward if you have a Capricorn Guardian Angel.")
						BC( "chat", "map", 186, "Capricorn is the winning sign! You can obtain your reward if you have a Capricorn Guardian Angel.")
						BC( "screen", "map", 142, "Capricorn is the winning sign! You can obtain your reward if you have a Capricorn Guardian Angel.")
						BC( "chat", "map", 142, "Capricorn is the winning sign! You can obtain your reward if you have a Capricorn Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Capricorn Protection] ")
					return
				endif
			endif
		//------??-----$constellation11--------
			if $mapid == 143
				if $Status11 == 0
					$Subinfo11 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo11 != 0
						return
					endif
					$Aquarius = $Aquarius + 1
					$Aquarius1 = 60 - $Aquarius
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Aquarius Temple needs ",$Aquarius1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 131 , $Aquarius )
					if $Aquarius == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Aquarid meteor shower has come to Aquarius Temple. The Aquarius Guardian Angel is being activated!")
						BC( "chat", "map", 186, "The Aquarid meteor shower has come to Aquarius Temple. The Aquarius Guardian Angel is being activated!")
						BC( "screen", "map", 143, "The Aquarid meteor shower has come. The Aquarius Guardian Angel may soon activate!")
						BC( "chat", "map", 143, "The Aquarid meteor shower has come. The Aquarius Guardian Angel may soon activate!")
					endif	
					if $Aquarius == $BlessMaxNum
						SetServerVar( 133 , 11 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Aquarius is the winning sign! You can obtain your reward if you have a Aquarius Guardian Angel.")
						BC( "chat", "map", 186, "Aquarius is the winning sign! You can obtain your reward if you have a Aquarius Guardian Angel.")
						BC( "screen", "map", 143, "Aquarius is the winning sign! You can obtain your reward if you have a Aquarius Guardian Angel.")
						BC( "chat", "map", 143, "Aquarius is the winning sign! You can obtain your reward if you have a Aquarius Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Aquarius Protection] ")
					return
				endif
			endif
		
		//------??-----$constellation12--------
			if $mapid == 144
				if $Status12 == 0
					$Subinfo12 = SubPlayerInfo( -1 , "item", 63391 , 1 )
					if $Subinfo12 != 0
						return
					endif
					$Pisces = $Pisces + 1
					$Pisces1 = 60 - $Pisces
					BC( "screen", "player", -1 , "You have used one Constellation Wish Charm. To become the day's winning sign, Pisces Temple needs ",$Pisces1," more." )
					PlayEffect( -1 , "common\liuxing\keep\tx_liuxing_keep_01.ini" )
					SetServerVar( 132 , $Pisces )
					if $Pisces == $BlessMinNum
						PlayEffect( -1 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						BC( "screen", "map", 186, "The Pascid meteor shower has come. The Pisces Guardian Angel may soon activate!")
						BC( "chat", "map", 186, "The Pascid meteor shower has come. The Pisces Guardian Angel may soon activate!")
						BC( "screen", "map", 144, "The Pascid meteor shower has come. The Pisces Guardian Angel may soon activate!")
						BC( "chat", "map", 144, "The Pascid meteor shower has come. The Pisces Guardian Angel may soon activate!")
					endif	
					if $Pisces == $BlessMaxNum
						SetServerVar( 133 , 12 )
						PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
						PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
						BC( "screen", "map", 186, "Pisces is the winning sign! You can obtain your reward if you have a Pisces Guardian Angel.")
						BC( "chat", "map", 186, "Pisces is the winning sign! You can obtain your reward if you have a Pisces Guardian Angel.")
						BC( "screen", "map", 144, "Pisces is the winning sign! You can obtain your reward if you have a Pisces Guardian Angel.")
						BC( "chat", "map", 144, "Pisces is the winning sign! You can obtain your reward if you have a Pisces Guardian Angel.")
					endif
					return
				else
					BC( "screen", "player", -1 , "You cannot make wishes without [Pisces Protection] ")
					return
				endif
			endif
			BC( "dialogbox", "player", -1 , "You cannot activate Constellation Wish Charms here. It can only be done within your zodiac temple.")
			
	//---------??NPC????------??----
	//---------??NPc????----------
		else
			BC( "screen", "player", -1 , "Today's lucky constellation has been set. [Constellation Wish Charm] has expired.")
			return
		endif
		
	}					
