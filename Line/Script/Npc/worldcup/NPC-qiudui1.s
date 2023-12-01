	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/5/22
	//		Author:???
	//		TaskName:
	//		TaskID:???
	//
	//****************************************

	
	//op0 4?1?
	//op1 4?10?
	//op2 4?100?
	//op3 ??1?
	//op4 ??10?
	//op5 ??100?
	//op6 ??
	//op7 4???
	//op8 ????
	
	
	function OnRequest(){
		
		//????????
		//4???
		//????????
	
		
		//DisableNpcOption(7)
		//DisableNpcOption(8)
		
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		
		//??2010?6????
		
		$Line = GetServerLineID()
		if $Line != 8
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			return
		endif
		
		if $Now_Year != 2010
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
		endif
		
		if $Now_Month != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
		endif
		
		//6?10?????4??
		if $Now_Mday >= 16
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			//DisableNpcOption(5)
			//DisableNpcOption(6)
		endif
		
		//6?15???????
		if $Now_Mday >= 22
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			//DisableNpcOption(5)
			//DisableNpcOption(6)
		endif
		
		
		//????
		
	}
	
	
	//????
	function OnOption0(){
		
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 16
			return
		endif
		
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 3995 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 1 )
		
		if $result == 0
				
			//????????????
			$num = $num + 1
			SetPlayerVar( -1 , 3995 , $num )
		
			//???????????
			$servernum = GetServerVar( 211 )
			$servernum = $servernum + 1
			SetServerVar( 211 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ????????????????" , $num )
			
			//???????
			$random = RandomNumber( 1 , 100 )
			if $random == 5
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			endif
			
		endif
		
	
	}
	
	
	//10???
	function OnOption1(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 16
			return
		endif
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count < 10
			BC( "dialogbox" , "player" , -1 , "N/A???,??????10???????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 3995 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 10 )
		
		if $result == 0
				
			//????????????
			$num = $num + 10
			SetPlayerVar( -1 , 3995 , $num )
		
			//???????????
			$servernum = GetServerVar( 211 )
			$servernum = $servernum + 10
			SetServerVar( 211 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ????????????????" , $num )
			
			//???????
			$random = RandomNumber( 1 , 10 )
			if $random == 5
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			endif
			
		endif
		
	
	}
	
	
		//100???
	function OnOption2(){
		
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 16
			return
		endif
		
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count <= 100
			BC( "dialogbox" , "player" , -1 , "N/A???,??????100???????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 3995 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 100 )
		
		if $result == 0
				
			//????????????
			$num = $num + 100
			SetPlayerVar( -1 , 3995 , $num )
		
			//???????????
			$servernum = GetServerVar( 211 )
			$servernum = $servernum + 100
			SetServerVar( 211 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ??????????????" , $num )
			
			//???????
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			
		endif
		
	
	}
	
	//????
	function OnOption3(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 22
			return
		endif
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 4028 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 1 )
		
		if $result == 0
				
			//????????????
			$num = $num + 1
			SetPlayerVar( -1 , 4028 , $num )
		
			//???????????
			$servernum = GetServerVar( 244 )
			$servernum = $servernum + 1
			SetServerVar( 244 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ????????????????" , $num )
			
			//???????
			$random = RandomNumber( 1 , 100 )
			if $random == 5
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			endif
			
			
		endif
		
	
	}
	
	
	//10???
	function OnOption4(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 22
			return
		endif
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count < 10
			BC( "dialogbox" , "player" , -1 , "N/A???,??????10???????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 4028 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 10 )
		
		if $result == 0
				
			//????????????
			$num = $num + 10
			SetPlayerVar( -1 , 4028 , $num )
		
			//???????????
			$servernum = GetServerVar( 244 )
			$servernum = $servernum + 10
			SetServerVar( 244 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ????????????????" , $num )
			
			//???????
			$random = RandomNumber( 1 , 10 )
			if $random == 5
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			endif
			
			
		endif
		
	
	}
	
	
		//100???
	function OnOption5(){
		//??
		$Now_Mday =  GetSystemTime( "mday" )
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		if $Now_Month != 6
			return
		endif
		
		if $Now_Mday >= 22
			return
		endif
		//?????1???,63749=??id
		$count = GetPlayerInfo( -1 , "item" , 63749  )
		if $count < 100
			BC( "dialogbox" , "player" , -1 , "N/A???,??????100???????!" )
			return
		endif
		
		//??????65000,????????
		$num = GetPlayerVar( -1 , 4028 )
		if $num >= 65000
			BC( "dialogbox" , "player" , -1 , "N/A???,????????????65000?!" )
			return
		endif
		
		
		//??????
		$result = SubPlayerInfo( -1 , "item" , 63749 , 100 )
		
		if $result == 0
				
			//????????????
			$num = $num + 100
			SetPlayerVar( -1 , 4028 , $num )
		
			//???????????
			$servernum = GetServerVar( 244 )
			$servernum = $servernum + 100
			SetServerVar( 244 , $servernum )
			
			
			BC( "screen" , "player" , -1 , "N/A??????????, ????????????????" , $num )
			
			//???????
				#name = GetPlayerInfo( -1 , "name" )
				BC( "screen" , "servergroup" , -1 , #name , "N/A????????,??????????????????????????!" )
			
			
		endif
		
	
	}
	
	//???????
	function OnOption6(){
	
		
		//???
		
		$tol1 = GetServerVar( 211 )
		$tol2 = GetServerVar( 212 )
		$tol3 = GetServerVar( 213 )
		$tol4 = GetServerVar( 214 )
		$tol5 = GetServerVar( 215 )
		$tol6 = GetServerVar( 216 )
		$tol7 = GetServerVar( 217 )
		$tol8 = GetServerVar( 218 )
		$tol9 = GetServerVar( 219 )
		$tol10 = GetServerVar( 220 )
		$tol11 = GetServerVar( 221 )
		$tol12 = GetServerVar( 222 )
		$tol13 = GetServerVar( 223 )
		$tol14 = GetServerVar( 224 )
		$tol15 = GetServerVar( 225 )
		$tol16 = GetServerVar( 226 )
		$tol17 = GetServerVar( 227 )
		$tol18 = GetServerVar( 228 )
		$tol19 = GetServerVar( 229 )
		$tol20 = GetServerVar( 230 )
		$tol21 = GetServerVar( 231 )
		$tol22 = GetServerVar( 232 )
		$tol23 = GetServerVar( 233 )
		$tol24 = GetServerVar( 234 )
		$tol25 = GetServerVar( 235 )
		$tol26 = GetServerVar( 236 )
		$tol27 = GetServerVar( 237 )
		$tol28 = GetServerVar( 238 )
		$tol29 = GetServerVar( 239 )
		$tol30 = GetServerVar( 240 )
		$tol31 = GetServerVar( 241 )
		$tol32 = GetServerVar( 242 )
		
		//????
		$allmoney = $allmoney + $tol1
		$allmoney = $allmoney + $tol2
		$allmoney = $allmoney + $tol3
		$allmoney = $allmoney + $tol4
		$allmoney = $allmoney + $tol5
		$allmoney = $allmoney + $tol6
		$allmoney = $allmoney + $tol7
		$allmoney = $allmoney + $tol8
		$allmoney = $allmoney + $tol9
		$allmoney = $allmoney + $tol10
		$allmoney = $allmoney + $tol11
		$allmoney = $allmoney + $tol12
		$allmoney = $allmoney + $tol13
		$allmoney = $allmoney + $tol14
		$allmoney = $allmoney + $tol15
		$allmoney = $allmoney + $tol16
		$allmoney = $allmoney + $tol17
		$allmoney = $allmoney + $tol18
		$allmoney = $allmoney + $tol19
		$allmoney = $allmoney + $tol20
		$allmoney = $allmoney + $tol21
		$allmoney = $allmoney + $tol22
		$allmoney = $allmoney + $tol23
		$allmoney = $allmoney + $tol24
		$allmoney = $allmoney + $tol25
		$allmoney = $allmoney + $tol26
		$allmoney = $allmoney + $tol27
		$allmoney = $allmoney + $tol28
		$allmoney = $allmoney + $tol29
		$allmoney = $allmoney + $tol30
		$allmoney = $allmoney + $tol31
		$allmoney = $allmoney + $tol32
		
		
		//??????
		$toc1 = GetServerVar( 244 )
		$toc2 = GetServerVar( 245 )
		$toc3 = GetServerVar( 246 )
		$toc4 = GetServerVar( 247 )
		$toc5 = GetServerVar( 248 )
		$toc6 = GetServerVar( 249 )
		$toc7 = GetServerVar( 250 )
		$toc8 = GetServerVar( 251 )
		$toc9 = GetServerVar( 252 )
		$toc10 = GetServerVar( 253 )
		$toc11 = GetServerVar( 254 )
		$toc12 = GetServerVar( 255 )
		$toc13 = GetServerVar( 256 )
		$toc14 = GetServerVar( 257 )
		$toc15 = GetServerVar( 258 )
		$toc16 = GetServerVar( 259 )
		$toc17 = GetServerVar( 260 )
		$toc18 = GetServerVar( 261 )
		$toc19 = GetServerVar( 262 )
		$toc20 = GetServerVar( 263 )
		$toc21 = GetServerVar( 264 )
		$toc22 = GetServerVar( 265 )
		$toc23 = GetServerVar( 266 )
		$toc24 = GetServerVar( 267 )
		$toc25 = GetServerVar( 268 )
		$toc26 = GetServerVar( 269 )
		$toc27 = GetServerVar( 270 )
		$toc28 = GetServerVar( 271 )
		$toc29 = GetServerVar( 272 )
		$toc30 = GetServerVar( 273 )
		$toc31 = GetServerVar( 274 )
		$toc32 = GetServerVar( 275 )
		
		
		$onemoney = $onemoney + $toc1
		$onemoney = $onemoney + $toc2
		$onemoney = $onemoney + $toc3
		$onemoney = $onemoney + $toc4
		$onemoney = $onemoney + $toc5
		$onemoney = $onemoney + $toc6
		$onemoney = $onemoney + $toc7
		$onemoney = $onemoney + $toc8
		$onemoney = $onemoney + $toc9
		$onemoney = $onemoney + $toc10
		$onemoney = $onemoney + $toc11
		$onemoney = $onemoney + $toc12
		$onemoney = $onemoney + $toc13
		$onemoney = $onemoney + $toc14
		$onemoney = $onemoney + $toc15
		$onemoney = $onemoney + $toc16
		$onemoney = $onemoney + $toc17
		$onemoney = $onemoney + $toc18
		$onemoney = $onemoney + $toc19
		$onemoney = $onemoney + $toc20
		$onemoney = $onemoney + $toc21
		$onemoney = $onemoney + $toc22
		$onemoney = $onemoney + $toc23
		$onemoney = $onemoney + $toc24
		$onemoney = $onemoney + $toc25
		$onemoney = $onemoney + $toc26
		$onemoney = $onemoney + $toc27
		$onemoney = $onemoney + $toc28
		$onemoney = $onemoney + $toc29
		$onemoney = $onemoney + $toc30
		$onemoney = $onemoney + $toc31
		$onemoney = $onemoney + $toc32
		
		
		//??????1000w???1000w
		$allmoney = $allmoney + 1000
		
		$onemoney = $onemoney + 1000
		
		
		$num = GetPlayerVar( -1 , 3995 )
		$no1num = GetPlayerVar( -1 , 4028 )
		
		
		BC( "dialogbox" , "player" , -1 , "N/A???????????" , $allmoney , "OOOO" , "N/A\n?????????????" , $onemoney , "OOOO" , "N/A\n??????????????" , $num , "N/A\n??????????????" , $no1num )
		
		
	
	}