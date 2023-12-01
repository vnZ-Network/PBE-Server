//-----------------------------------------|
//	Script : SERVER Script                |
//	Author : Zenn                         |
//   Date   : 2010                         |
//-----------------------------------------|HIDE HERE
	//------------------------------|
	//        On Server Start       |
	//------------------------------| [ Check Variable when Server Start UP ]
		function OnServerStartup(){
		//-------------------------|
		//      System             |
		//-------------------------|     
			$Line = GetServerLineID()
			$Min =  GetSystemTime( "minute")
			$Hour =  GetSystemTime( "hour" )
			$Now_Mday =  GetSystemTime( "mday" )
			$Now_Month =  GetSystemTime( "month" )
			$Now_Year =  GetSystemTime( "year" )
			$Now_Week =  GetSystemTime( "week" )
			$Now_Yday =  GetSystemTime( "yday" )
			call bawangzhangNPC()
		//-------------------------|
		//      Varible            |
		//-------------------------|
			$OsiVar = GetServerVar( 99 )
			$AskVar = GetServerVar( 999 )
		//-------------------------|
		//      Set Server Var     |
		//-------------------------|
			SetServerVar( 28, 0 )
			SetServerVar( 40, 0 )
			SetServerVar( 41, 0 )
			SetServerVar( 42, 0 )
			SetServerVar( 43, 0 )
			SetServerVar( 44, 0 )
			SetServerVar( 45, 0 )
			SetServerVar( 46, 0 )
			SetServerVar( 47, 0 )
			SetServerVar( 59, 0 )
			SetServerVar( 61, 0 )
			SetServerVar( 62, 0 )
			SetServerVar( 63, 0 )
			SetServerVar( 70, 0 )
			SetServerVar( 71, 0 )
			SetServerVar( 72, 0 )
			SetServerVar( 73, 0 )
			SetServerVar( 74, 0 )
			SetServerVar( 75, 0 )
			SetServerVar( 76, 0 )
			SetServerVar( 77, 0 )
			SetServerVar( 78, 0 )
			SetServerVar( 79, 0 )
			SetServerVar( 81, 0 )
			SetServerVar( 82, 0 )
			SetServerVar( 83, 0 )
			SetServerVar( 84, 0 ) 
			SetServerVar( 90, 0 )
			SetServerVar( 93, 0 )                             
			SetServerVar( 96, 0 )
			SetServerVar( 97, 0 )
			SetServerVar( 98, 0 )
			SetServerVar( 100, 0 )
			SetServerVar( 101, 0 )
			SetServerVar( 102, 0 )
			SetServerVar( 103, 0 )
			SetServerVar( 141, 0 )
			SetServerVar( 142, 0 )
			SetServerVar( 143, 0 )
			SetServerVar( 144, 0 )
			SetServerVar( 145, 0 )
			SetServerVar( 146, 0 )
		//-------------------------|
		//      Set Global Var     |
		//-------------------------|
			SetGlobalVar( 6, 0 )
			SetGlobalVar( 7, 0 )              
			SetGlobalVar( 91, 0 )
			SetGlobalVar( 92, 0 )
			SetGlobalVar( 93, 0 )
			SetGlobalVar( 65, 0 )
		//-------------------------|
		//      Delete NPC         |
		//-------------------------|
			DeleteNPC( 1809 )
			DeleteNPC( 1810 )
			DeleteNPC( 1811 )
			DeleteNPC( 1812 )
			DeleteNPC( 1813 )
			DeleteNPC( 1814 )
			DeleteNPC( 1815 )
			DeleteNPC( 1816 )
			DeleteNPC( 1817 )
			DeleteNPC( 1818 )
			DeleteNPC( 1819 )
			DeleteNPC( 1820 )
			DeleteNPC( 1821 )
			DeleteNPC( 1822 )
			DeleteNPC( 1823 )
			DeleteNPC( 1824 )
			DeleteNPC( 1793 )
			DeleteNPC( 1797 )
			DeleteNPC( 1802 )
			DeleteNPC( 1806 )
			DeleteNPC( 1936 )
			DeleteNPC( 1937 )
			DeleteNPC( 1938 )
			DeleteNPC( 1939 )
			DeleteNPC( 1940 )
			DeleteNPC( 1941 )
			DeleteNPC( 1942 )
			DeleteNPC( 1943 )
			DeleteNPC( 1944 )
			DeleteNPC( 1945 )
			DeleteNPC( 1946 )
			DeleteNPC( 1947 )
			DeleteNPC( 1948 )
			DeleteNPC( 1949 )
			DeleteNPC( 1950 )
			DeleteNPC( 1951 )
			DeleteNPC( 1952 )
			DeleteNPC( 1953 )
			DeleteNPC( 1954 )
			DeleteNPC( 1955 )
			DeleteNPC( 1956 )
			DeleteNPC( 1957 )
			DeleteNPC( 1958 )
			DeleteNPC( 1959 )
			DeleteNPC( 1960 )
			DeleteNPC( 1961 )
			DeleteNPC( 1962 )
			DeleteNPC( 1963 )
			DeleteNPC( 1964 )
			DeleteNPC( 1965 )
			DeleteNPC( 891 )
			DeleteNPC( 892 )
			DeleteNPC( 893 )
			DeleteNPC( 894 )
			DeleteNPC( 895 )
			DeleteNPC( 896 )
			DeleteNPC( 897 )
			DeleteNPC( 898 )
			DeleteNPC( 899 )
			DeleteNPC( 900 )
			DeleteNPC( 901 )
			DeleteNPC( 902 )
			DeleteNPC( 1131 )
			DeleteNPC( 1132 )
			DeleteNPC( 1133 )
			DeleteNPC( 1134 )
			DeleteNPC( 1135 )
			DeleteNPC( 1136 )
			DeleteNPC( 1137 )
			DeleteNPC( 1138 )
			DeleteNPC( 1139 )
			DeleteNPC( 1140 )
			DeleteNPC( 1141 )
			DeleteNPC( 1142 )
			DeleteNPC( 1143 )
			DeleteNPC( 1144 )
			DeleteNPC( 1145 )
			DeleteNPC( 1146 )
			DeleteNPC( 1147 )
			DeleteNPC( 1148 )
			DeleteNPC( 1149 )
			DeleteNPC( 1150 )
			DeleteNPC( 1151 )
			DeleteNPC( 1152 )
			DeleteNPC( 1153 )
			DeleteNPC( 1154 )
			DeleteNPC( 1155 )
			DeleteNPC( 1156 )
			DeleteNPC( 1157 )
			DeleteNPC( 1158 )
			DeleteNPC( 932 )
			DeleteNPC( 920 )
			DeleteNPC( 921 )
			DeleteNPC( 922 )
			DeleteNPC( 923 )
			DeleteNPC( 924 )
			DeleteNPC( 925 )
			DeleteNPC( 1866 )
			DeleteNPC( 154 )
			DeleteNPC( 169 )
			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )  
			DeleteNPC(2319)
			DeleteNPC(2320)
			DeleteNPC(2321) 
			DeleteNPC(2322)
			DeleteNPC(2323)
			DeleteNPC(2324)
			DeleteNPC(2325)
			DeleteNPC(2326)
			DeleteNPC(2327)
			DeleteNPC(2328)
			DeleteNPC(2329) 
			DeleteNPC(910)
			DeleteNPC(911)
			DeleteNPC(912)
			DeleteNPC(913)
			DeleteNPC(914)
			DeleteNPC(915)
			DeleteNPC(916)
			DeleteNPC(917)
			DeleteNPC(918)
			DeleteNPC(919) 
			DeleteNPC(1129)  
		//-------------------------|
		//      AddMonster         |
		//-------------------------|
			AddMonster(30251, 1, 111, 33, 55, 0)
			AddMonster(30251, 1, 2, 32, 91, 0)
			AddMonsterByFloat( 55173, 1, 59, 100, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 206,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 204,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 202,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 200,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 198,0 )
			AddMonsterByFloat( 55173, 1, 59, 100, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 98, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 96, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 94, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 92, 196,0 )
			AddMonsterByFloat( 55173, 1, 59, 90, 196,0 )
			AddMonsterByFloat(30250, 1, 2, 150, 245, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 2, 140, 206, 0, 0, 45)
			AddMonsterByFloat(30250, 1, 2, 160, 206, 0, 0, 135)
			AddMonsterByFloat(30250, 1, 2, 157, 185, 0, 0, 45)
			AddMonsterByFloat(30250, 1, 2, 142, 185, 0, 0, 135)
			AddMonsterByFloat(30250, 1, 2, 109, 206, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 2, 109, 192, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 2, 202, 193, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 2, 212, 193, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 2, 146, 154, 0, 0, 45)
			AddMonsterByFloat(30250, 1, 2, 156, 154, 0, 0, 135)               
			AddMonsterByFloat(30252, 1, 2, 153, 199, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 111, 153, 247, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 111, 154, 236, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 111, 144, 202, 0, 0, 45)
			AddMonsterByFloat(30250, 1, 111, 164, 202, 0, 0, 135)
			AddMonsterByFloat(30250, 1, 111, 164, 183, 0, 0, 45)
			AddMonsterByFloat(30250, 1, 111, 144, 183, 0, 0, 135)
			AddMonsterByFloat(30250, 1, 111, 209, 177, 0, 0, 0)
			AddMonsterByFloat(30250, 1, 111, 209, 163, 0, 0, 0)
			AddMonsterByFloat(30252, 1, 111, 157, 194, 0, 0, 0)
			AddMonsterByFloat( 32233, 1, 2, 80, 181, 0 )                    
		//-------------------------|
		//      Code Check         |
		//-------------------------|
					
			if $OsiVar == 0
			DeleteNPC( 1885 )
			endif

			$AskVar = $AskVar + 1
			SetServerVar( 999, $AskVar )

			$Hour =  GetSystemTime( "hour" )
			if $Hour == 20
			SetServerVar(55,0)
			SetServerVar(56,0)
			SetServerVar(57,0)
			SetServerVar( 121 , 0 )
			SetServerVar( 122 , 0 )
			SetServerVar( 123 , 0 )
			SetServerVar( 124 , 0 )
			SetServerVar( 125 , 0 )
			SetServerVar( 126 , 0 )
			SetServerVar( 127 , 0 )
			SetServerVar( 128 , 0 )
			SetServerVar( 129 , 0 )
			SetServerVar( 130 , 0 )
			SetServerVar( 131 , 0 )
			SetServerVar( 132 , 0 )
			SetServerVar( 133 , 0 )
			endif

			if $Now_Week == 4
			if $Hour >= 21
			SetServerVar(23, 0)
			SetServerVar(30 ,0)
			endif
			endif

			if  $Hour > 19
			if $Hour < 22
			SetServerVar( 190 , 0 )
			SetServerVar( 191 , 0 )
			SetServerVar( 192 , 0 )
			SetServerVar( 193 , 0 )
			SetServerVar( 194 , 0 )
			SetServerVar( 195 , 0 )
			endif
			endif
			if  $Hour == 20
			if $Min <= 30
			SetServerVar( 139, 0 )
			endif
			endif
			if $Now_Year == 2021
			if $Now_Month == 1
			if $Now_Mday >= 21
						if $Now_Mday <= 31
						AddNPC(2322)
						AddNPC(2323)
						AddNPC(2324)
						AddNPC(2325)
						AddNPC(2326)
						AddNPC(2327)
						AddNPC(2328)
						AddNPC(2329)
						endif
			endif
			endif
			endif

			if $Now_Year == 2021
			if $Now_Month == 9
			if $Now_Mday >= 10
						if $Now_Mday <= 20
						AddNPC(919)
						endif
			endif
			endif
			endif
		}
	//------------------------------|
	//        On Timer              |
	//------------------------------| [ Function Run base on Timelapse ]
		function OnTimer() {
		//-------------------------|
		//      System             |
		//-------------------------|               
			$Line = GetServerLineID()
			$Min =  GetSystemTime( "minute")
			$Hour =  GetSystemTime( "hour" )
			$Now_Mday =  GetSystemTime( "mday" )
			$Now_Month =  GetSystemTime( "month" )
			$Now_Year =  GetSystemTime( "year" )
			$Now_Week =  GetSystemTime( "week" )
			$Now_Yday =  GetSystemTime( "yday" )
			$lingtu = DomainIsOpen()

			$temp_time = $Hour % 2
			
			if $Hour == 23
			if $Min == 59
			call SystemLog()
			endif
			endif
			
			if $temp_time == 1
			if $Min == 0
			SetServerVar( 50 , 0)
			endif
			endif

			if $Now_Week == 1
			SetServerVar( 147 , 0)
			endif
			if $Now_Week == 2
			SetServerVar( 147 , 0)
			endif
			if $Now_Week == 3
			SetServerVar( 147 , 0)
			endif

			$H = GetSystemTime("hour")
			$M = GetSystemTime("minute")
			$H = $H * 100
			$Time = $H + $M
		//-------------------------|
		//      Call Function      |
		//-------------------------| 
			//call RanDungeon()
			//call ResourceSP()         
		//-------------------------|
		//      New Year Event     |
		//-------------------------|
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 19
						if $Hour == 20
							if $Min == 0
								AddNPC(1131)
								AddNPC(1132)
								AddNPC(1133)
								AddNPC(1134)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 20
						if $Hour == 20
							if $Min == 0
								AddNPC(1135)
								AddNPC(1136)
								AddNPC(1137)
								AddNPC(1138)
								DeleteNPC(1131)
								DeleteNPC(1132)
								DeleteNPC(1133)
								DeleteNPC(1134)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 21
						if $Hour == 20
							if $Min == 0
								AddNPC(1139)
								AddNPC(1140)
								AddNPC(1141)
								AddNPC(1142)
								DeleteNPC(1135)
								DeleteNPC(1136)
								DeleteNPC(1137)
								DeleteNPC(1138)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 22
						if $Hour == 20
							if $Min == 0
								AddNPC(1143)
								AddNPC(1144)
								AddNPC(1145)
								AddNPC(1146)
								DeleteNPC(1139)
								DeleteNPC(1140)
								DeleteNPC(1141)
								DeleteNPC(1142)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 23
						if $Hour == 20
							if $Min == 0
								AddNPC(1147)
								AddNPC(1148)
								AddNPC(1149)
								AddNPC(1150)
								DeleteNPC(1143)
								DeleteNPC(1144)
								DeleteNPC(1145)
								DeleteNPC(1146)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 24
						if $Hour == 20
							if $Min == 0
								AddNPC(1151)
								AddNPC(1152)
								AddNPC(1153)
								AddNPC(1154)
								DeleteNPC(1147)
								DeleteNPC(1148)
								DeleteNPC(1149)
								DeleteNPC(1150)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Month == 2
					if $Now_Mday == 25
						if $Hour == 20
							if $Min == 0
								AddNPC(1155)
								AddNPC(1156)
								AddNPC(1157)
								AddNPC(1158)
								DeleteNPC(1151)
								DeleteNPC(1152)
								DeleteNPC(1153)
								DeleteNPC(1154)
							endif
						endif
					endif
				endif
			endif
			if $Now_Year == 2013
				if $Now_Yday >= 36
					if $Now_Yday <= 120
						AddNPC(1129)
					endif
				endif
			endif
		//-------------------------|
		//      Daily Function     |
		//-------------------------|
			call XiTongGongGao()
			call Bossthree()
			call BossFour()
			call TwoHours()
			call Basaka()
			call zhuque()
			call qinglong()
			call baihu()
			call xuanwu()
			call Pyramid()
			call datanbao()
			call JuanXian()
			call PetRefresh()
			call Baituboss()
			call nimo()
			call hunzhuaddexp()
			call diantai()
			call mingyunenci()
			call halloween()
			call siegewar()
			call nianshou()
			call valentine()
			call mingyuntanbao()
			call longdinixi()
			call mingjiezailin()
			call bawangzhang()
			call TMC()
			call GodofWater()
			call TitanQuest()
			call OnNovember2012()
		//-------------------------|
		//      Check Rank         |
		//-------------------------|
			$RankList = GetRankListValue( 1, 499 )
			if $RankList < 50
			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			AddNPC( 2113 )
			AddNPC( 2114 )
			AddNPC( 2115 )
			AddNPC( 2116 )
			AddNPC( 2117 )
			endif
			if $RankList >= 50
			if $RankList <= 69
			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )
			AddNPC( 2108 )
			AddNPC( 2109 )
			AddNPC( 2110 )
			AddNPC( 2111 )
			AddNPC( 2112 )
			endif
			endif
			if $RankList >= 70
			if $RankList <= 89
			DeleteNPC( 2098 )
			DeleteNPC( 2099 )
			DeleteNPC( 2100 )
			DeleteNPC( 2101 )
			DeleteNPC( 2102 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )
			AddNPC( 2103 )
			AddNPC( 2104 )
			AddNPC( 2105 )
			AddNPC( 2106 )
			AddNPC( 2107 )
			endif
			endif
			if $RankList >= 90
			DeleteNPC( 2103 )
			DeleteNPC( 2104 )
			DeleteNPC( 2105 )
			DeleteNPC( 2106 )
			DeleteNPC( 2107 )
			DeleteNPC( 2108 )
			DeleteNPC( 2109 )
			DeleteNPC( 2110 )
			DeleteNPC( 2111 )
			DeleteNPC( 2112 )
			DeleteNPC( 2113 )
			DeleteNPC( 2114 )
			DeleteNPC( 2115 )
			DeleteNPC( 2116 )
			DeleteNPC( 2117 )
			AddNPC( 2098 )
			AddNPC( 2099 )
			AddNPC( 2100 )
			AddNPC( 2101 )
			AddNPC( 2102 )
			endif
		//-------------------------|
		//      Check Rank         |
		//-------------------------|
			if $Hour == 20
			if $Min == 30
			BC("screen", "server", -1 , "The Destroy Source of Consumption Event is open in Sunken Atlantis on Realm 4! ")
			BC("chat", "server", -1 , "The Destroy Source of Consumption Event is open in Sunken Atlantis on Realm 4! ")
			if $Line == 4
						$n = RandomNumber ( 0 , 3 )
						if $n == 0
						AddMonster( 12049 , 1 , 537 , 19 , 19 , 0 )
						endif
						if $n == 1
						AddMonster( 12049 , 1 , 537 , 63 , 51 , 0 )
						endif
						if $n == 2
						AddMonster( 12049 , 1 , 537 , 59 , 97 , 0 )
						endif
						if $n == 3
						AddMonster( 12049 , 1 , 537 , 91 , 20 , 0 )
						endif
			endif
			endif
			endif
			if $Hour == 20
			if $Min == 1
			BC("screen", "server", -1 , "Achinoth the Giant has appeared on realm 6 in Soulbound Crypt Level 3!")
			BC("chat", "server", -1 , "Achinoth the Giant has appeared on realm 6 in Soulbound Crypt Level 3!")
			if $Line == 6
						$n = RandomNumber ( 0 , 4 )
						if $n == 0
						AddMonster( 30007 , 1 , 164 , 36 , 52 , 1 )
						endif
						if $n == 1
						AddMonster( 30007 , 1 , 164 , 74 , 60 , 1 )
						endif
						if $n == 2
						AddMonster( 30007 , 1 , 164 , 84 , 98 , 1 )
						endif
						if $n == 3
						AddMonster( 30007 , 1 , 164 , 33 , 97 , 1 )
						endif
						if $n == 4
						AddMonster( 30007 , 1 , 164 , 55 , 63 , 1 )
						endif
			endif
			endif
			endif
			if $Hour == 20
			if $Min == 1
						SetServerVar(55,0)
						SetServerVar(56,0)
						SetServerVar(57,0)
						SetServerVar( 121 , 0 )
						SetServerVar( 122 , 0 )
						SetServerVar( 123 , 0 )
						SetServerVar( 124 , 0 )
						SetServerVar( 125 , 0 )
						SetServerVar( 126 , 0 )
						SetServerVar( 127 , 0 )
						SetServerVar( 128 , 0 )
						SetServerVar( 129 , 0 )
						SetServerVar( 130 , 0 )
						SetServerVar( 131 , 0 )
						SetServerVar( 132 , 0 )
						SetServerVar( 133 , 0 )
			endif
			if $Min == 13
						SetServerVar(55,0)
						SetServerVar(56,0)
						SetServerVar( 121 , 0 )
						SetServerVar( 122 , 0 )
						SetServerVar( 123 , 0 )
						SetServerVar( 124 , 0 )
						SetServerVar( 125 , 0 )
						SetServerVar( 126 , 0 )
						SetServerVar( 127 , 0 )
						SetServerVar( 128 , 0 )
						SetServerVar( 129 , 0 )
						SetServerVar( 130 , 0 )
						SetServerVar( 131 , 0 )
						SetServerVar( 132 , 0 )
						SetServerVar( 133 , 0 )
			endif
			endif
			if $Hour == 20
			if $Min == 15
						BC("screen", "server", -1 , "The [Astral Feast] event is now open in even-numbered Realms. Talk to Outer Starway Teleporter in Atlantis to join the event.")
						BC("chat", "server", -1 , "The [Astral Feast] event is now open in even-numbered Realms. Talk to Outer Starway Teleporter in Atlantis to join the event.")
			endif
			endif
			if $Line == 2
			call RandomMonster()
			endif
			if $Line == 4
			call RandomMonster()
			endif
			if $Line == 6
			call RandomMonster()
			endif
			if $Line == 8
			call RandomMonster()
			endif
			if $Hour == 21
			if $Min == 0
						MapPlayerFlyToMap( 186, 475 , 68, 48 )
						SetServerVar(55,0)
						SetServerVar(56,0)
						SetServerVar(57,0)
						SetServerVar( 121 , 0 )
						SetServerVar( 122 , 0 )
						SetServerVar( 123 , 0 )
						SetServerVar( 124 , 0 )
						SetServerVar( 125 , 0 )
						SetServerVar( 126 , 0 )
						SetServerVar( 127 , 0 )
						SetServerVar( 128 , 0 )
						SetServerVar( 129 , 0 )
						SetServerVar( 130 , 0 )
						SetServerVar( 131 , 0 )
						SetServerVar( 132 , 0 )
						SetServerVar( 133 , 0 )
			endif
			endif
			if $Hour == 21
			if $Min == 0
			if $Now_Week == 4
						SetServerVar(23, 0)
						SetServerVar(30 , 0)
			endif
			endif
			endif
			if $Hour == 20
			if $Min == 0
			if $Now_Week == 5
						SetServerVar(40,0)
						SetServerVar(41,0)
						SetServerVar(42,0)
						SetServerVar(43,0)
						SetServerVar(44,0)
						SetServerVar(45,0)
						SetServerVar(46,0)
						SetServerVar(47,0)
						SetServerVar(98,0)
						SetServerVar(96,0)
						DeleteNPC( 1885 )
			endif
			endif
			endif
			if $Line == 6
			if $Hour == 0
			if $Min == 0
						if $Now_Week == 6
						MapPlayerFlyToMap( 123, 145, 60, 67 )
						MapPlayerFlyToMap( 124, 145, 60, 67 )
						MapPlayerFlyToMap( 125, 145, 60, 67 )
						MapPlayerFlyToMap( 126, 145, 60, 67 )
						MapPlayerFlyToMap( 127, 145, 60, 67 )
						MapPlayerFlyToMap( 195, 145, 60, 67 )
						MapPlayerFlyToMap( 196, 145, 60, 67 )
						MapPlayerFlyToMap( 197, 145, 60, 67 )
						MapPlayerFlyToMap( 198, 145, 60, 67 )
						BC("screen", "server", -1, "The sealed power of the Pyramid has been released. The adventurers will be teleported out.")
						endif
			endif
			endif
			if $Hour == 0
			if $Min == 1
						if $Now_Week == 6
						MapPlayerFlyToMap( 123, 145, 60, 67 )
						MapPlayerFlyToMap( 124, 145, 60, 67 )
						MapPlayerFlyToMap( 125, 145, 60, 67 )
						MapPlayerFlyToMap( 126, 145, 60, 67 )
						MapPlayerFlyToMap( 127, 145, 60, 67 )
						MapPlayerFlyToMap( 195, 145, 60, 67 )
						MapPlayerFlyToMap( 196, 145, 60, 67 )
						MapPlayerFlyToMap( 197, 145, 60, 67 )
						MapPlayerFlyToMap( 198, 145, 60, 67 )
						endif
			endif
			endif
			endif
			if $Line == 6
			if $Hour == 23
			if $Min == 50
						if $Now_Week == 5
						BC("screen", "map", 123, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 124, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 125, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 126, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 127, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 195, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 196, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 197, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						BC("screen", "map", 198, "The sealed power of the Pyramid will soon be released and a new aura will be cast. All adventurers please evacuate immediately, or you will be teleported out in 10 minutes.")
						endif
			endif
			endif
			endif
			$god_cd = GetServerVar(25)
			if $god_cd > 0
			$god_cd = $god_cd - 1
			if $god_cd == 0
			SetServerVar(24, 0)
			SetServerVar(26, 0)
			SetServerVar(31, 0)
			SetServerVar(32, 0)
			SetServerVar(34, 0)
			$temp_var = GetServerVar(33)
			$temp_var = $temp_var + 1
			SetServerVar(33, $temp_var)
			$count_leishen = GetGlobalVar(924 )
			$count_leishen = $count_leishen + 1
			SetGlobalVar(924 , $count_leishen)

			endif
			SetServerVar(25, $god_cd)
			endif

			$god_level = GetServerVar(26)
			$god_count = GetServerVar(24)
			if $god_count >= 10000
			if $god_level < 1
			BC("screen", "server", -1, "The altar begins to glow! Thor has heard the prayers of his followers!")
			BC("chat", "server", -1, "The altar begins to glow! Thor has heard the prayers of his followers!")
			SetServerVar(26, 1)
			endif
			endif
			if $god_count >= 20000
			if $god_level < 2
			BC("screen", "server", -1, "The altar begins to shake! Thor is almost upon us!")
			BC("chat", "server", -1, "The altar begins to shake! Thor is almost upon us!")
			SetServerVar(26, 2)
			endif
			endif
			if $god_count >= 30000
			if $god_level < 3
			SetServerVar(26, 3)
			SetServerVar(25, 360)
			SetServerVar(27, 11)
			endif
			endif
			$god_become = GetServerVar(27)
			if $god_become > 0
			$god_become = $god_become - 1
			SetServerVar(27, $god_become)
			if $god_become == 0
			call OnLeiShengJiTan()
			BC("screen", "servergroup", -1, $Line ," - Realm: Khar's minions are attacking the ritual of Thor's arrival! Hurry to Thor's Altar and help defend it!")
			SetServerVar(28, 60)
			SetServerVar(29, 0)
			else
			BC("screen", "servergroup", -1, $Line ," - Realm: Thor will arrive in ",$god_become," minutes! Khar will soon send his minions to interrupt the ceremony. Hurry to Thor's Altar and help defend it!")
			BC("chat", "servergroup", -1,$Line, " - Realm: Thor will arrive in ",$god_become," minutes! Khar will soon send his minions to interrupt the ceremony. Hurry to Thor's Altar and help defend it!")
			endif
			endif
			$god_monster_disappear = GetServerVar(28)
			if $god_monster_disappear > 0
			$god_monster_disappear = $god_monster_disappear - 1
			SetServerVar(28, $god_monster_disappear)
			if $god_monster_disappear == 10
			BC("screen", "map", 64, "Khar's minions will retreat in 10 minutes.")
			BC("chat", "map", 64, "Khar's minions will retreat in 10 minutes.")
			endif
			if $god_monster_disappear == 0
			BC("screen", "map", 64, "Khar's minions have sabotaged the ritual of Thor's arrival, and left the altar.")
			BC("chat", "map", 64, "Khar's minions have sabotaged the ritual of Thor's arrival, and left the altar.")
			endif
			endif

			if $Line == 6
			if $Hour >= 21
			if $Hour <= 22
						$player_count = GetMapPlayerCount(154)
						$ark_count = 0
						if $player_count < 20
						$ark_count = 20
						else
						if $player_count > 120
						$ark_count = 120
						else
						$ark_count = $player_count
						endif
						endif
						AddMonster(30161 ,$ark_count,154,64,64,60)
						$gold_count = $ark_count / 10
						AddMonster(30162 ,$gold_count,154,64,64,60)
			endif
			endif
			if $Hour == 23
			if $Min == 0

						MapPlayerFlyToMap( 154, 475, 83, 47 )
						BC("screen", "server", -1, "The Bountyhunter event has ended. All players in the Wonderland have been teleported out.")

			endif
			endif
			endif

			if $Now_Week == 1
			if $Hour == 0
			if $Min == 0
						BC("chat", "map", 112, "This week's Thor's Altar event has ended.")
						BC("screen", "map", 112, "This week's Thor's Altar event has ended.")
						MapPlayerFlyToMap( 112, 475 , 78, 47 )
			endif
			endif
			endif

			if $lingtu == 1
			if $Now_Week == 5
			if $Hour < 12
						if $Min == 1
						BC("screen", "server", -1, "Territory War bidding will open at 12:00 on Friday. Guild Leaders can talk to Farmoth to declare war.")
						BC("scrollbar", "server", -1 , "Territory War bidding will open at 12:00 on Friday. Guild Leaders can talk to Farmoth to declare war.")
						endif
			endif

			if $Hour >= 12
						if $Hour < 22
						if $Min == 1
						BC("screen", "server", -1, "Territory War bidding has started. Guild Leaders can talk to Farmoth to declare war.")
						BC("scrollbar", "server", -1 , "Territory War bidding has started. Guild Leaders can talk to Farmoth to declare war.")
						endif
						endif
			endif

			if $Hour >= 22
						if $Min == 1
						BC("screen", "server", -1, "Territory War bidding has ended. Guild leaders should check their mail for the results.")
						BC("scrollbar", "server", -1, "Territory War bidding has ended. Guild leaders should check their mail for the results.")
						endif
			endif
			endif

			if $Now_Week == 6
			if $Hour < 21
						if $Min == 1
						BC("screen", "server", -1, "The Territory War will begin at 21:00. Participants can talk to Farmoth to enter a battle.")
						BC("scrollbar", "server", -1, "The Territory War will begin at 21:00. Participants can talk to Farmoth to enter a battle.")
						endif
			endif

			if $Hour >= 21
						if $Min == 1
						BC("screen", "server", -1, "The Territory War has begun. Participants can talk to Farmoth to enter a battle.")
						BC("scrollbar", "server", -1, "The Territory War has begun. Participants can talk to Farmoth to enter a battle.")
						endif
			endif
			endif

			if $Now_Week == 0
			if $Hour < 1
						if $Min == 0
						BC("screen", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
						BC("scrollbar", "server", -1, "The Territory War has ended. The results can be observed on the World Map.")
						endif
			else
						//NULL
			endif
			endif
			endif


			$temp_line = $Line % 2
			if $temp_line == 1
			if $Hour == 2
			if $Min == 55
						BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
			endif
			if $Hour == 9
			if $Min == 55
						BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
			endif
			if $Hour == 15
			if $Min == 55
						BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
			endif
			if $Hour == 22
			if $Min == 25
						BC("screen", "server", -1, "Khar's Elite Guards will be spawned in 5 minutes.")
			endif
			endif
			if $Hour == 3
			if $Min == 0
						call OnShuaBoss()
			endif
			endif
			if $Hour == 10
			if $Min == 0
						call OnShuaBoss()
			endif
			endif
			if $Hour == 16
			if $Min == 0
						call OnShuaBoss()
			endif
			endif
			if $Hour == 22
			if $Min == 30
						call OnShuaBoss()
			endif
			endif
			endif

			if $Hour == 12
			if $Min == 0
			call OnLong()
			endif
			endif
			if $Hour == 15
			if $Min == 0
			call OnLong()
			endif
			endif
			if $Hour == 18
			if $Min == 0
			call OnLong()
			endif
			endif
			if $Hour == 21
			if $Min == 0
			call OnLong()
			endif
			endif
			if $Hour == 0
			if $Min == 0
			call OnLong()
			endif
			endif

			if $Min == 2
			AddMonster( 41022, 1, 169, 55, 67, 0 )
			BC("chat", "map", 169, "The Chrono Chest has appeared in Chrono Mirage. Hurry find it. You will get great rewards.")
			BC("screen", "map", 169, "The Chrono Chest has appeared in Chrono Mirage. Hurry find it. You will get great rewards.")
			endif

			if  $Hour == 0
			if $Min == 1
			SetServerVar(283,0)
			SetServerVar(284,0)
			SetServerVar(285,0)
			endif
			endif

			if $Hour == 0
			if $Min == 0
			if $Line == 1
						SetGlobalVar(78, 0 )
						SetGlobalVar(79, 0 )
			endif
			endif
			endif
		}
	//------------------------------|
	//        Nimo                  |
	//------------------------------|
		function nimo(){
		$nimoop = GetGlobalVar( 1 )
		if $nimoop == 50
		BC("scrollbar", "server", -1 , "N/A????????,Atrium??Land of the Dead?????")
		$nimoop = $nimoop + 1
		SetGlobalVar( 1,$nimoop )
		endif
		}

	//------------------------------|
	//        Siege War             |
	//------------------------------| [Temp Disable - Year 2012]
		function siegewar(){
			$Min =  GetSystemTime( "minute")
			$Hour =  GetSystemTime( "hour" )
			$Now_Mday =  GetSystemTime( "mday" )
			$Now_Month =  GetSystemTime( "month" )
			$Now_Year =  GetSystemTime( "year" )
			$Line = GetServerLineID
			$fuwuqi = GetServerGrade()
			if $Line == 6
				if $Now_Year == 2012
					if $Now_Month == 12
						if $Now_Mday > 17
							if $Now_Mday < 23
								$hour = GetSystemTime("hour")
								$minute = GetSystemTime("minute")
								$hour = $hour * 100
								$time = $hour + $minute
								if $time == 1205
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
									endif
								if $time == 1505
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
								endif
								if $time == 1805
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
								endif
								if $time == 2005
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
								endif
								if $time == 1205
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. Dysteri and her creatures from the abyss are aiming to ravage the city at that time, so prepare yourselves well!")
								endif

								if $Hour == 20
											if $Min == 25
											BC( "chat" , "servergroup" , -1 , "(Realm 6) The Crisis in Atlantis - Dysteri and her abyssal creatures are preparing to ravage Atlantis, and the city needs your help! Get ready!")
											BC( "screen" , "servergroup" , -1 , "(Realm 6) The Crisis in Atlantis - Dysteri and her abyssal creatures are preparing to ravage Atlantis, and the city needs your help! Get ready!")
											endif
											if $Min == 30
											if $fuwuqi == 5
											AddMonsterByFloat( 32375 , 1 , 86 , 136 , 191 , 0 )
											endif
											if $fuwuqi == 4
											AddMonsterByFloat( 32375 , 1 , 86 , 136 , 191 , 0 )
											endif
											if $fuwuqi == 3
											AddMonsterByFloat( 32381 , 1 , 86 , 136 , 191 , 0 )
											endif
											if $fuwuqi == 2
											AddMonsterByFloat( 32381 , 1 , 86 , 136 , 191 , 0 )
											endif
											if $fuwuqi == 1
											AddMonsterByFloat( 32385 , 1 , 86 , 136 , 191 , 0 )
											endif
											if $fuwuqi == 0
											AddMonsterByFloat( 32385 , 1 , 86 , 136 , 191 , 0 )
											endif
											BC( "chat" , "servergroup" , -1 , "(Realm 6) Dysteri has appeared in the Sea of Atlantis (136, 191), threatening the Atlantis Defense Line! Atlantis's defenses are in peril!")
											BC( "screen" , "servergroup" , -1 , "(Realm 6) Dysteri has appeared in the Sea of Atlantis (136, 191), threatening the Atlantis Defense Line! Atlantis's defenses are in peril!")
											endif
								endif
								endif
								endif
								if $Now_Mday == 23
								$hour = GetSystemTime("hour")
								$minute = GetSystemTime("minute")
								$hour = $hour * 100
								$time = $hour + $minute
								if $time == 1205
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
								endif
								if $time == 1505
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
								endif
								if $time == 1805
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
								endif
								if $time == 2005
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
								endif
								if $time == 1205
											BC("screen", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
											BC("chat", "servergroup", -1 , "(Realm 6) The Crisis in Atlantis event will start tonight at 20:30. The wrathful Death Knight, Dyse, is preparing an all-out attack against the city. The city is in dire straits!")
								endif

								if $Hour == 20
								if $Min == 25
											BC( "chat" , "servergroup" , -1 , "(Realm 6) The vengeful Death Knight Dyse is preparing for an all-out attack against the city of Atlantis. He and his minions will be appearing in the Sea of Atlantis. The city is in grave peril!")
											BC( "screen" , "servergroup" , -1 , "(Realm 6) The vengeful Death Knight Dyse is preparing for an all-out attack against the city of Atlantis. He and his minions will be appearing in the Sea of Atlantis. The city is in grave peril!")
								endif
								if $Min == 30
									if $fuwuqi == 5
									AddMonsterByFloat( 32376 , 1 , 86 , 136 , 191 , 0 )
									endif
									if $fuwuqi == 4
									AddMonsterByFloat( 32376 , 1 , 86 , 136 , 191 , 0 )
									endif
									if $fuwuqi == 3
									AddMonsterByFloat( 32382 , 1 , 86 , 136 , 191 , 0 )
									endif
									if $fuwuqi == 2
									AddMonsterByFloat( 32382 , 1 , 86 , 136 , 191 , 0 )
									endif
									if $fuwuqi == 1
									AddMonsterByFloat( 32386 , 1 , 86 , 136 , 191 , 0 )
									endif
									if $fuwuqi == 0
									AddMonsterByFloat( 32386 , 1 , 86 , 136 , 191 , 0 )
									endif
									BC( "chat" , "servergroup" , -1 , "(Realm 6) Death Knight Dyse has appeared in the Sea of Atlantis (136, 191). Atlantis's defenses are in danger!")
									BC( "screen" , "servergroup" , -1 , "(Realm 6) Death Knight Dyse has appeared in the Sea of Atlantis (136, 191). Atlantis's defenses are in danger!")
								endif
							endif
						endif
					endif
				endif
			endif

		}
	//------------------------------|
	//        Valentine             |
	//------------------------------| [Temp Disable - Year 2013]
		function valentine(){
					$Min =  GetSystemTime( "minute")
					$Hour =  GetSystemTime( "hour" )
					$Now_Mday =  GetSystemTime( "mday" )
					$Now_Month =  GetSystemTime( "month" )
					$Now_Year =  GetSystemTime( "year" )
					$hour = GetSystemTime("hour")
					$minute = GetSystemTime("minute")
					$hour = $hour * 100
					$time = $hour + $minute

					if $Now_Year == 2013
					if $Now_Month == 2
								if $Now_Mday == 14
								if $time == 1205
								BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
								BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
								endif
								if $time == 1505
								BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
								BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
								endif
								if $time == 1805
								BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
								BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by 23:59 will have the privilege of collecting a special Valentine's present from Skuld tomorrow! So, be sure to share your flowers with the one you love best!")
								endif
								if $time == 2005
								BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
								BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best! :")
								endif
								if $time == 2205
								BC("screen", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best! :")
								BC("chat", "servergroup", -1 , "The Valentine's Day event is currently underway! The top three lovely ladies in the Charisma Ranking List by tomorrow morning will have the privilege of collecting a special Valentine's present from Skuld in the afternoon! So, be sure to share your flowers with the one you love best!")
								endif
								endif
								if $Now_Mday == 15
								if $time == 5
								BC("screen", "servergroup", -1 , "The Valentine's Day event will be ending soon! The top three lovely ladies in the Charisma Ranking List will have the privilege of collecting a special Valentine's present from Skuld this afternoon! So, be sure to share your flowers with the one you love best!")
								BC("chat", "servergroup", -1 , "The Valentine's Day event will be ending soon! The top three lovely ladies in the Charisma Ranking List will have the privilege of collecting a special Valentine's present from Skuld this afternoon! So, be sure to share your flowers with the one you love best!")
								endif
								if $time == 1200
								$var1 = GetRankPlayerID(22,0)
								SetGlobalVar(91,$var1)

								$var2 = GetRankPlayerID(22,1)
								SetGlobalVar(92,$var2)

								$var3 = GetRankPlayerID(22,2)
								SetGlobalVar(93,$var3)

								BC("screen","servergroup",-1,"The final results of the Valentine's Day Charisma Rankings have been announced! The top-ranked three may collect a special prize from Skuld!")
								BC("chat","servergroup",-1,"The final results of the Valentine's Day Charisma Rankings have been announced! The top-ranked three may collect a special prize from Skuld!")
								$playervar1 = GetPlayerVar($var1,347)
								#name1 = GetPlayerInfo($var1,"name")
								$lv1 = GetPlayerInfo($var1,"level")
								if $lv1 > 0
											if $playervar1 == 0
											BC("chat","servergroup",-1,"Player:",#name1,"earned first place in the Valentine's Day Charisma Rankings!")
											SendMail($var1,"Drop-dead Gorgeous","Congratulations for earning first place on the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
											SetPlayerVar($var1,347,1)
											endif
								endif
								$playervar2 = GetPlayerVar($var2,347)
								#name2 = GetPlayerInfo($var2,"name")
								$lv2 = GetPlayerInfo($var2,"level")
								if $lv2 > 0
											if $playervar2 == 0
											BC("screen","servergroup",-1,"Player:",#name2,"earned second place in the Valentine's Day Charisma Rankings!")
											SendMail($var2,"Rouged and Rarin'","Congratulations for earning second place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
											SetPlayerVar($var2,347,1)
											endif
								endif
								$playervar3 = GetPlayerVar($var3,347)
								#name3 = GetPlayerInfo($var3,"name")
								$lv3 = GetPlayerInfo($var3,"level")
								if $lv3 > 0
											if $playervar3 == 0
											BC("chat","servergroup",-1,"Player:",#name3,"earned third place in the Valentine's Day Charisma Rankings!")
											SendMail($var3,"Love Boat","Congratulations for earning third place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
											SetPlayerVar($var3,347,1)
											endif
								endif
								endif
								endif
					endif
					endif

		}
	//------------------------------|
	//        Nianshou              |
	//------------------------------| [Temp Disable - Year 2013]
		function nianshou(){
					$Min =  GetSystemTime( "minute")
					$Hour =  GetSystemTime( "hour" )
					$Now_Mday =  GetSystemTime( "mday" )
					$Now_Month =  GetSystemTime( "month" )
					$Now_Year =  GetSystemTime( "year" )
					$Line = GetServerLineID
					$fuwuqi = GetServerGrade()
					if $Line == 7
					if $Now_Year == 2013
					if $Now_Month == 2
								if $Now_Mday > 8
								if $Now_Mday < 19
								$hour = GetSystemTime("hour")
								$minute = GetSystemTime("minute")
								$hour = $hour * 100
								$time = $hour + $minute
								if $time == 1205
											BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
											BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
								endif
								if $time == 1505
											BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
											BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
								endif
								if $time == 1805
											BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
											BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
								endif
								if $time == 1905
											BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
											BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin tonight at 20:00. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
								endif
								if $time == 1915
											BC("screen", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin in just 5 minutes. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
											BC("chat", "servergroup", -1 , "(Realm 7) The Festival Beast Event will begin in just 5 minutes. At that time, countless New Year's Beasts will appear at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West! Make sure to come and participate!")
								endif
								if $time == 2000
											BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
											BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
											if $fuwuqi == 5
											AddMonsterByFloat( 32418 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32418 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32418 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32418 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32418 , 1 , 90 , 150 , 150 , 0 )
											endif
											if $fuwuqi == 4
											AddMonsterByFloat( 32417 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32417 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32417 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32417 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32417 , 1 , 90 , 150 , 150 , 0 )
											endif
											if $fuwuqi == 3
											AddMonsterByFloat( 32416 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32416 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32416 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32416 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32416 , 1 , 90 , 150 , 150 , 0 )
											endif
											if $fuwuqi == 2
											AddMonsterByFloat( 32415 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32415 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32415 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32415 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32415 , 1 , 90 , 150 , 150 , 0 )
											endif
											if $fuwuqi == 1
											AddMonsterByFloat( 32414 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 90 , 150 , 150 , 0 )
											endif
											if $fuwuqi == 0
											AddMonsterByFloat( 32414 , 1 , 7  , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 86 , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 6  , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 14 , 150 , 150 , 0 )
											AddMonsterByFloat( 32414 , 1 , 90 , 150 , 150 , 0 )
											endif
								endif
								if $time == 2005
											BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
											BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
								endif
								if $time == 2010
											BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
											BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
								endif
								if $time == 2015
											BC("screen", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
											BC("chat", "servergroup", -1 , "(Realm 7) Countless New Year's Beasts have appeared at the Bermuda Islands, the Sea of Atlantis, the Grand Rift, the Khufu Desert, and at Nile River West!")
								endif
								endif
								endif
					endif
					endif
					endif
		}
	//------------------------------|
	//        Halloween             |
	//------------------------------| [Temp Disable - Year 2012]
		function halloween(){
					$Min =  GetSystemTime( "minute")
					$Hour =  GetSystemTime( "hour" )
					$Now_Mday =  GetSystemTime( "mday" )
					$Now_Month =  GetSystemTime( "month" )
					$Now_Year =  GetSystemTime( "year" )
					$Line = GetServerLineID
					if $Now_Year == 2012
					if $Now_Month == 11
					if $Now_Mday == 1
								if $Hour == 0
								if $Min == 0
								AddNpcByPos(928,475,151,218 ,86400,0)
								AddNpcByPos(929,475,98 ,206 ,86400,0)
								AddNpcByPos(930,475,168,154 ,86400,0)
								AddNpcByPos(931,475,131,102 ,86400,0)
								endif
								endif
								else
								DeleteNPC( 928 )
								DeleteNPC( 929 )
								DeleteNPC( 930 )
								DeleteNPC( 931 )
					endif
					endif
					if $Now_Month == 10
					if $Now_Mday == 31
								if $Hour == 0
								if $Min == 0
								AddNPC( 932 )
								endif
								endif
					endif
					endif
					endif
					$date = $Now_Month * 100
					$date = $date + $Now_Mday
					if $date != 1031
					if $date != 1101
					DeleteNPC( 932 )
					endif
					endif

					if $Line == 7
					if $Now_Year == 2012
					if $Now_Month == 10
								if $Now_Mday == 31
								if $Hour == 12
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 14
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 16
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 18
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 20
								if $Min == 25
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 5 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
								endif
								endif
								if $Hour == 20
								if $Min == 28
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 2 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
								endif
								endif
								if $Hour == 20
								if $Min == 30
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade has begun! Hurry to visit Papa Pumpkin in the Sea of Atlantis, then go and join in on the festivities!")
											AddMonsterByFloat( 32325 , 1 , 86 , 178 , 113 , 0 )
								endif
								endif
								if $Hour == 20
								if $Min == 40
											BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 5 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")
								endif
								endif
								if $Hour == 20
								if $Min == 42
											BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 3 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")
								endif
								endif
								endif
					endif
					endif
					endif
					if $Line == 7
					if $Now_Year == 2012
					if $Now_Month == 11
								if $Now_Mday == 1
								if $Hour == 12
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 14
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 16
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 18
								if $Min == 30
											BC( "screen" , "server" , -1 , "The Halloween Parade will begin tonight at 20:30 in the Sea of Atlantis. We hope to see you there!")
								endif
								endif
								if $Hour == 20
								if $Min == 25
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 5 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
								endif
								endif
								if $Hour == 20
								if $Min == 28
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade will be starting in 2 minutes in the Sea of Atlantis. Hurry over to Papa Pumpkin in the Sea of Atlantis to obtain a special Transformation status. You need to be Transformed if you want to collect special Halloween prizes!")
								endif
								endif
								if $Hour == 20
								if $Min == 30
											BC( "scrollbar" , "servergroup" , -1 , "The Halloween Parade has begun! Hurry to visit Papa Pumpkin in the Sea of Atlantis, then go and join in on the festivities!")
											AddMonsterByFloat( 32325 , 1 , 86 , 178 , 113 , 0 )
								endif
								endif
								if $Hour == 20
								if $Min == 40
											BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 5 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")
								endif
								endif
								if $Hour == 20
								if $Min == 42
											BC( "screen" , "server" , -1 , "The Halloween Parade has nearly reached its end. Those who participated in the Parade can collect their prize from Papa Pumpkin. If you missed your chance to participate, you still have 3 minutes to visit Papa Pumpkin to collect a special Transformation status, and participate in the Parade!")
								endif
								endif
								endif
					endif
					endif
					endif
		}
	//------------------------------|
	//        Mingyunenci           |
	//------------------------------| [Temp Disable - Year 2012]
		function mingyunenci(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Year =  GetSystemTime( "year" )
		$Now_yday = GetSystemTime( "yday" )

		if $Now_Year == 2012
					if $Now_yday > 241
								if $Now_yday < 274
											if $Hour == 11
														if $Min == 50
																	BC( "chat" , "server" , -1 , "Come one, come all! The Goddess of Fate is handing out fortunes to everyone! Go see the event NPC Misha in Atlantis if you want a special gift!")
														endif
											endif
								endif
					endif
		endif

		if $Now_Year == 2012
					if $Now_yday > 241
								if $Now_yday < 274
											if $Hour == 19
														if $Min == 50
																	BC( "chat" , "server" , -1 , "Come one, come all! The Goddess of Fate is handing out fortunes to everyone! Go see the event NPC Misha in Atlantis if you want a special gift!")
														endif
											endif
								endif
					endif
		endif

		}
	//------------------------------|
	//        Mingyuntanbao         |
	//------------------------------| [Temp Disable - Year 2012]
		function mingyuntanbao(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		if $Line != 7
					return
		endif
		if $Now_Year != 2012
					return
		endif
		if $Now_Month == 9
					if $Now_Mday == 23
								if $Hour == 0
											if $Min == 0
														SetServerVar( 141, 0 )
														SetServerVar( 142, 0 )
														SetServerVar( 143, 0 )
														SetServerVar( 144, 0 )
														SetServerVar( 145, 0 )
														SetServerVar( 146, 0 )
											endif
								endif
					endif
		endif
		//------------------------------|
		//      NPC ANNOUNCED           |
		//------------------------------|
		if $Now_Month == 9
		if $Now_Mday == 23

		if $Hour == 13
					if $Min == 30
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
		endif
		if $Hour == 13
					if $Min == 45
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
		endif
		if $Hour == 13
					if $Min == 55
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of The Goddess of Luck event will begin at 14:00. Keep your eye out for the special treasure location hints!")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 14
					if $Min == 0
					AddNPC( 891 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the first treasure: the first treasure is hidden in an imperial mausoleum.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the first treasure: the first treasure is hidden in an imperial mausoleum.")
					endif
		endif
		if $Hour == 14
					if $Min == 3
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' second hint for the first Treasure: the first treasure is hidden in an imperial mausoleum, before a slumbering god.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' second hint for the first Treasure: the first treasure is hidden in an imperial mausoleum, before a slumbering god.")
					endif
		endif
		if $Hour == 14
					if $Min == 6
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' third hint for the first treasure: the first treasure is hidden in the southeast of the Dragon Emperor's Catacomb, before a slumbering god.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' third hint for the first treasure: the first treasure is hidden in the southeast of the Dragon Emperor's Catacomb, before a slumbering god.")
					endif
		endif
		if $Hour == 14
					if $Min == 9
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' fourth hint for the first treasure: the first treasure is hidden at 44, 234, in the Dragon Emperor's Catacomb.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess' fourth hint for the first treasure: the first treasure is hidden at 44, 234, in the Dragon Emperor's Catacomb.")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 14
					if $Min == 12
					AddNPC( 892 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the second treasure: the second treasure is hidden in a forest, before a large and mysterious gate.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the second treasure: the second treasure is hidden in a forest, before a large and mysterious gate.")
					endif
		endif
		if $Hour == 14
					if $Min == 15
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the second Treasure: the second treasure is hidden in a forest camp on the Maya continent, before a large and mysterious gate.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the second Treasure: the second treasure is hidden in a forest camp on the Maya continent, before a large and mysterious gate.")
					endif
		endif
		if $Hour == 14
					if $Min == 18
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the second Treasure: the second treasure is hidden in the north of the Angkor Encampment, before a large and mysterious gate.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the second Treasure: the second treasure is hidden in the north of the Angkor Encampment, before a large and mysterious gate.")
					endif
		endif
		if $Hour == 14
					if $Min == 21
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the second treasure: the second treasure is hidden at 176, 39 in the Angkor Encampment.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the second treasure: the second treasure is hidden at 176, 39 in the Angkor Encampment.")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 14
					if $Min == 24
					AddNPC( 893 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the third treasure: the third treasure is hidden at the base of an ancient tree, near a graveyard.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the third treasure: the third treasure is hidden at the base of an ancient tree, near a graveyard.")
					endif
		endif
		if $Hour == 14
					if $Min == 27
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the third treasure: the third treasure is hidden at the base of an ancient tree near a graveyard at the bottom of a gorge.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the third treasure: the third treasure is hidden at the base of an ancient tree near a graveyard at the bottom of a gorge.")
					endif
		endif
		if $Hour == 14
					if $Min == 30
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the third treasure: the third treasure is hidden in the King's Gorge, under an old tree that's next to a graveyard.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the third treasure: the third treasure is hidden in the King's Gorge, under an old tree that's next to a graveyard.")
					endif
		endif
		if $Hour == 14
					if $Min == 33
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the third treasure: the third treasure is hidden at 119, 122, in King's Gorge.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the third treasure: the third treasure is hidden at 119, 122, in King's Gorge.")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 14
					if $Min == 36
					AddNPC( 894 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the fourth treasure: the fourth treasure is hidden at the bottom of the sea, where merfolk reside.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the fourth treasure: the fourth treasure is hidden at the bottom of the sea, where merfolk reside.")
					endif
		endif
		if $Hour == 14
					if $Min == 39
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fourth treasure: the fourth treasure is hidden before a stone statue at the bottom of the sea, in the Aegean where the mermaid princess lives.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fourth treasure: the fourth treasure is hidden before a stone statue at the bottom of the sea, in the Aegean where the mermaid princess lives.")
					endif
		endif
		if $Hour == 14
					if $Min == 42
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fourth treasure: the fourth treasure is hidden in an unmarked place in the east of Aegean, beside the stone statue of the mermaid princess.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fourth treasure: the fourth treasure is hidden in an unmarked place in the east of Aegean, beside the stone statue of the mermaid princess.")
					endif
		endif
		if $Hour == 14
					if $Min == 45
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fourth treasure: the fourth treasure is hidden at 68,174, in Aegean North.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fourth treasure: the fourth treasure is hidden at 68,174, in Aegean North.")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 14
					if $Min == 48
					AddNPC( 895 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the fifth treasure: the fifth treasure is hidden before a stone tablet.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun! Here's the first hint for the fifth treasure: the fifth treasure is hidden before a stone tablet.")
					endif
		endif
		if $Hour == 14
					if $Min == 51
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fifth treasure: the fifth treasure is hidden before a stone tablet, with red lanterns hanging nearby.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the fifth treasure: the fifth treasure is hidden before a stone tablet, with red lanterns hanging nearby.")
					endif
		endif
		if $Hour == 14
					if $Min == 54
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fifth treasure: the fifth treasure is hidden in the Dragon Emperor's Catacomb, before a stone tablet, with red lanterns hanging nearby.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the fifth treasure: the fifth treasure is hidden in the Dragon Emperor's Catacomb, before a stone tablet, with red lanterns hanging nearby.")
					endif
		endif
		if $Hour == 14
					if $Min == 57
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fifth treasure: the fifth treasure is hidden at 246, 250, in the Dragon Emperor's Catacomb.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the fifth treasure: the fifth treasure is hidden at 246, 250, in the Dragon Emperor's Catacomb.")
					endif
		endif
		//----------------------NPC END
		//----------------------NPC START
		if $Hour == 15
					if $Min == 0
					AddNPC( 896 )
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the sixth treasure: the sixth treasure is hidden in a place that's glowing with energy.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Fate Ceremony's Treasure of the Goddess of Fate event has begun again! Here's the first hint for the sixth treasure: the sixth treasure is hidden in a place that's glowing with energy.")
					endif
		endif
		if $Hour == 15
					if $Min == 3
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the sixth treasure: the sixth treasure is hidden at the bottom of the sea, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's second hint for the sixth treasure: the sixth treasure is hidden at the bottom of the sea, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					endif
		endif
		if $Hour == 15
					if $Min == 6
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the sixth treasure: the sixth treasure is hidden in the Sea of Atlantis, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's third hint for the sixth treasure: the sixth treasure is hidden in the Sea of Atlantis, in a place that's glowing with energy, watched over by the shadow of a goddess.")
					endif
		endif
		if $Hour == 15
					if $Min == 9
					BC( "screen" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the sixth treasure: the sixth treasure is hidden at 113, 81, in the Sea of Atlantis.")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) Here's the fate goddess's fourth hint for the sixth treasure: the sixth treasure is hidden at 113, 81, in the Sea of Atlantis.")
					endif
		endif
		//----------------------NPC END
		if $Hour == 14
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
		endif
		if $Hour == 15
					if $Min < 9
					BC( "screen" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
					BC( "chat" , "servergroup" , -1 , "(Realm 7) The Treasure of The Goddess of Luck event is underway! Make sure to carefully read each treasure location's hints!")
					endif
		endif
		endif
		endif


		}
	//------------------------------|
	//        Dragon E Evnt         |
	//------------------------------| [Temp Disable - Year 2012]
	//------------------------------|
	//      Longdinixi1             |
	//------------------------------|
		function longdinixi1(){
		AddMonsterByFloat( 11963 , 1 , 119 , 105 , 162 , 0 )
		AddMonsterByFloat( 11964 , 1 , 119 , 105 , 149 , 0 )
		AddMonsterByFloat( 11965 , 1 , 119 , 120 , 149 , 0 )
		AddMonsterByFloat( 11966 , 1 , 119 , 120 , 163 , 0 )
		BC( "scrollbar" , "server" , -1 , "The Dragon Emperor has awakened again! He's returning to his Catacomb to prepare for an assault on the mortal world. Go and stop him, before it's too late!")
		}
	//------------------------------|
	//      Longdinixi2             |
	//------------------------------|
		function longdinixi2(){
		AddMonsterByFloat( 11965 , 1 , 119 , 105 , 162 , 0 )
		AddMonsterByFloat( 11966 , 1 , 119 , 105 , 149 , 0 )
		AddMonsterByFloat( 11967 , 1 , 119 , 112 , 156 , 0 )
		AddMonsterByFloat( 11968 , 1 , 119 , 120 , 149 , 0 )
		AddMonsterByFloat( 11969 , 1 , 119 , 120 , 163 , 0 )
		BC( "scrollbar" , "server" , -1 , "The Dragon Emperor is mad with rage! Despite his somewhat weakened state, he is hell-bent on reclaiming the Dragon Emperor's Catacomb! Go and stop him!")
		}
	//------------------------------|
	//      Longdinixi              |
	//------------------------------|
		function longdinixi(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )

		if $Line != 7
		return
		endif

		if $Now_Year != 2012
		return
		endif

		if $Now_Month == 9
		if $Now_Mday >= 7
		if $Now_Mday <= 9
					$hour = GetSystemTime("hour")
					$minute = GetSystemTime("minute")
					$hour = $hour * 100
					$time = $hour + $minute
					if $time == 1131
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1146
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1135
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1301
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1316
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1431
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1446
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1701
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1716
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1831
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif
					if $time == 1846
					BC("screen", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					BC("chat", "servergroup", -1 , "The Dragon Emperor's Revenge event has been so popular that it will be held for 3 whole days in this server, from Sept. 7th - 9th! The event will happen every day during that time, at 12:00, 1:30PM, 3:00PM, 5:30PM, and 7:00PM.")
					endif

		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 4
		if $Hour == 12
					if $Min == 0
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 4
		if $Hour == 15
					if $Min == 30
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 4
		if $Hour == 19
					if $Min == 00
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 5
		if $Hour == 12
					if $Min == 0
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 5
		if $Hour == 15
					if $Min == 30
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 5
		if $Hour == 19
					if $Min == 00
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 6
		if $Hour == 12
					if $Min == 0
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 6
		if $Hour == 15
					if $Min == 30
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 6
		if $Hour == 19
					if $Min == 00
					call longdinixi1()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 7
		if $Hour == 12
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 7
		if $Hour == 13
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 7
		if $Hour == 15
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 7
		if $Hour == 17
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 7
		if $Hour == 19
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 8
		if $Hour == 12
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 8
		if $Hour == 13
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 8
		if $Hour == 15
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 8
		if $Hour == 17
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 8
		if $Hour == 19
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 9
		if $Hour == 12
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 9
		if $Hour == 13
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 9
		if $Hour == 15
					if $Min == 00
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
		if $Now_Mday == 9
		if $Hour == 17
					if $Min == 30
					call longdinixi2()
					endif
		endif
		endif
		endif

		if $Now_Month == 9
			if $Now_Mday == 9
				if $Hour == 19
					if $Min == 00
					call longdinixi2()
					endif
				endif
			endif
		endif

		}
	//------------------------------|
	//        BawangzhangNPC|
	//------------------------------| [Temp Disable - Year 2012]
	//------------------------------|
	//      Call NPC                |
	//------------------------------|
		function bawangzhangNPC(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute
		DeleteNPC(2330)
		DeleteNPC(2331)
		DeleteNPC(2332)
		DeleteNPC(2333)
		DeleteNPC(2334)
		DeleteNPC(2335)
		DeleteNPC(2336)
		DeleteNPC(2337)
		DeleteNPC(2338)
		DeleteNPC(2339)
		DeleteNPC(2340)
		DeleteNPC(2341)
		if $Now_Year == 2012
		if $Now_Month == 12
					if $Now_Mday >= 15
					if $Now_Mday <= 30
					AddNPC(2330)
					endif
					endif
					if $Now_Mday >= 28
					if $Now_Mday <= 31
					$Line = GetServerLineID()
					if $Line == 7
								AddNPC(2331)
								AddNPC(2332)
								AddNPC(2333)
								AddNPC(2334)
								AddNPC(2335)
					endif
					AddNPC(2336)
					AddNPC(2337)
					AddNPC(2338)
					AddNPC(2339)
					AddNPC(2340)
					AddNPC(2341)
					endif
					endif
		endif
		endif

		if $Now_Year == 2013
		if $Now_Month == 1
					if $Now_Mday >= 1
					if $Now_Mday <= 6
					AddNPC(2336)
					AddNPC(2337)
					AddNPC(2338)
					AddNPC(2339)
					AddNPC(2340)
					AddNPC(2341)
					endif
					endif
					if $Now_Mday >= 1
					if $Now_Mday <= 31
					AddNPC(2331)
					endif
					endif
		endif
		endif
		}
	//------------------------------|
	//      Dell NPC                |
	//------------------------------|
		function DEL_bawangzhangNPC(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute

		if $Now_Year == 2012
		if $Now_Month == 12
					if $Now_Mday == 15
					AddNPC(2330)
					endif
					if $Now_Mday == 28
					$Line = GetServerLineID()
					if $Line == 7
					AddNPC(2331)
					AddNPC(2332)
					AddNPC(2333)
					AddNPC(2334)
					AddNPC(2335)
					endif
					AddNPC(2336)
					AddNPC(2337)
					AddNPC(2338)
					AddNPC(2339)
					AddNPC(2340)
					AddNPC(2341)
					endif
		endif
		endif
		if $Now_Year == 2013
		if $Now_Month == 1
					if $Now_Mday == 1
					AddNPC(2336)
					AddNPC(2337)
					AddNPC(2338)
					AddNPC(2339)
					AddNPC(2340)
					AddNPC(2341)
					endif
		endif
		endif
		if $Now_Year == 2012
		if $Now_Mday >= 28
					if $Now_Mday <= 31
					$Line = GetServerLineID()
					if $Line != 7
					DeleteNPC(2331)
					DeleteNPC(2332)
					DeleteNPC(2333)
					DeleteNPC(2334)
					DeleteNPC(2335)
					endif
					endif
		endif
		endif

		if $Now_Year == 2013
					DeleteNPC(2330)
					DeleteNPC(2332)
					DeleteNPC(2333)
					DeleteNPC(2334)
					DeleteNPC(2335)

		if $Now_Month > 1
					DeleteNPC(2336)
					DeleteNPC(2337)
					DeleteNPC(2338)
					DeleteNPC(2339)
					DeleteNPC(2340)
					DeleteNPC(2341)
		else
					if $Now_Mday > 6
					DeleteNPC(2336)
					DeleteNPC(2337)
					DeleteNPC(2338)
					DeleteNPC(2339)
					DeleteNPC(2340)
					DeleteNPC(2341)
					endif
		endif
		if $Now_Month >= 2
					DeleteNPC(2331)
		endif
		endif
		}
	//-------------------------|
	//      ANNOUNCED          |
	//-------------------------|
		function bawangzhang(){
		$Min =  GetSystemTime( "minute")
		$Hour =  GetSystemTime( "hour" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Line = GetServerLineID()
		$Now_Year =  GetSystemTime( "year" )
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute
		$Now_Week = GetSystemTime("week")

		if $time == 0
		$key = 367
		while $key <= 386
					SetServerVar($key,0)
					$key += 1
		endwhile
		endif

		if $Now_Week == 6
		if $time == 1608
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
		endif
		if $time == 1538
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event has already started! Form a party to participate in this event. Then talk to Dhocky in Atlantis.")
		endif
		if $time == 1500
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate in this event. Whose party will be able to win first place?")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate in this event. Whose party will be able to win first place?")
		endif
		if $time == 1455
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
		endif
		if $time == 1438
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
		endif
		if $time == 1408
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
		endif
		if $time == 1208
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
		endif
		if $time == 1008
					BC("screen", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
					BC("chat", "server", -1 , "(Realm 6) The Pursuit of Rapture event is starting. Talk to Dhocky in Atlantis and form a party to participate. The faster a party in this server is able to complete this event, the better the presents they'll receive!")
		endif
		endif
		if $Hour == 0
		call DEL_bawangzhangNPC()
		endif
		if $Now_Year == 2013
		if $Now_Month == 1
					if $Now_Mday >= 1
					if $Now_Mday <= 6
					if $time == 1148
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
					endif
					if $time == 1248
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
					endif
					if $time == 1948
								BC("screen", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
								BC("chat", "server", -1 , "The Thunderguns event is starting. Please see the holiday event page for details.")
					endif
					endif
					endif
		endif
		endif
		$Line = GetServerLineID()
		if $Line != 7
		return
		endif

		if $Now_Year != 2012
		return
		endif

		if $Now_Month == 12

		if $Now_Mday == 28
					if $Hour == 0
					$indexW = 291
					while $indexW <= 299
					SetGlobalVar($indexW,0)
					$indexW += 1
					endwhile
					SetServerVar(299,0)
					SetServerVar(358,0)
					SetServerVar(359,0)
					SetServerVar(360,0)
					SetServerVar(361,0)
					endif
		endif

		if $Now_Mday == 29
					if $Hour < 20
					SetGlobalVar(299,2)
					SetGlobalVar(291,9)
					SetGlobalVar(292,9)
					endif
		endif

		if $Now_Mday >= 28
					if $Now_Mday <= 31
					$hour = GetSystemTime("hour")
					$minute = GetSystemTime("minute")
					$hour = $hour * 100
					$time = $hour + $minute

					if $time == 1205
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					AddMonsterByFloat(32389,1,475,196,141,0)
					endif
					if $time == 1405
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1605
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1805
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 1905
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 2005
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The New Year's Race event will begin tonight at 8:30. Join for a chance to win great prizes! Come place your bets - or Blessings - on the New Year's Beast that you think will win!")
					endif
					if $time == 2020
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 10 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 10 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2025
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 5 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of Blessings for the New Year's Race will end in just 5 minutes! The race will take place in the main city. If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2028
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2029
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:30 to do so!")
					endif
					if $time == 2035
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 10 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 10 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2040
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 5 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of Blessings for the New Year's Race will end in 5 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2043
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 2 minutes! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif
					if $time == 2044
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					BC("chat", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race will begin in the main city in just 1 minute! If you haven't yet Blessed your race candidate of choice, you have until 20:45 to do so!")
					endif

					if $time == 2030
					$indexW = 32365
					while $indexW <= 32372
								DeleteMonster($mapid,$indexW)
								$indexW += 1
					endwhile
					$monsterID1 = RandomNumber(0,1)
					$monsterID1 += 32365
					$monsterID2 = RandomNumber(0,1)
					$monsterID2 += 32367
					$monsterID3 = RandomNumber(0,1)
					$monsterID3 += 32369
					$monsterID4 = RandomNumber(0,1)
					$monsterID4 += 32371
					DeleteNPC(2332)
					DeleteNPC(2333)
					DeleteNPC(2334)
					DeleteNPC(2335)
					AddMonsterByFloat($monsterID1,1,475,127,144,0)
					AddMonsterByFloat($monsterID2,1,475,127,140,0)
					AddMonsterByFloat($monsterID3,1,475,127,138,0)
					AddMonsterByFloat($monsterID4,1,475,127,142,0)
					AddMonsterByFloat(32373,1,475,187,141,0,0,90)
					AddMonsterByFloat(32374,1,475,187,138,0,0,0)
					AddMonsterByFloat(32374,1,475,187,145,0,0,0)
					SetServerVar(299,1)
					SetServerVar(358,0)
					SetServerVar(359,0)
					SetServerVar(360,0)
					SetServerVar(361,0)
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The first round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					endif

					if $time == 2045
					$indexW = 32365
					while $indexW <= 32372
								DeleteMonster($mapid,$indexW)
								$indexW += 1
					endwhile
					$monsterID1 = RandomNumber(0,1)
					$monsterID1 += 32365
					$monsterID2 = RandomNumber(0,1)
					$monsterID2 += 32367
					$monsterID3 = RandomNumber(0,1)
					$monsterID3 += 32369
					$monsterID4 = RandomNumber(0,1)
					$monsterID4 += 32371
					DeleteNPC(2332)
					DeleteNPC(2333)
					DeleteNPC(2334)
					DeleteNPC(2335)
					AddMonsterByFloat($monsterID1,1,475,127,144,0)
					AddMonsterByFloat($monsterID2,1,475,127,140,0)
					AddMonsterByFloat($monsterID3,1,475,127,138,0)
					AddMonsterByFloat($monsterID4,1,475,127,142,0)
					AddMonsterByFloat(32373,1,475,187,141,0,0,90)
					AddMonsterByFloat(32374,1,475,187,138,0,0,0)
					AddMonsterByFloat(32374,1,475,187,145,0,0,0)
					SetServerVar(299,1)
					SetServerVar(358,0)
					SetServerVar(359,0)
					SetServerVar(360,0)
					SetServerVar(361,0)
					BC("screen", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					BC("scrollbar", "servergroup", -1 , "(Realm 7) (Atlantis 129, 141) The second round of the New Year's Race is starting! 3... 2... 1... and they're off!")
					endif
					endif
		endif
		endif

		}
	//------------------------------|
	//        Mingjiezailin         |
	//------------------------------| [Temp Disable - Year 2012]
		function mingjiezailin(){
					$Min =  GetSystemTime( "minute")
					$Hour =  GetSystemTime( "hour" )
					$second = GetSystemTime("second")
					$Now_Mday =  GetSystemTime( "mday" )
					$Now_Month =  GetSystemTime( "month" )
					$Line = GetServerLineID
					$Now_Year =  GetSystemTime( "year" )
					$fuwuqi = GetServerGrade()

					if $Line != 7
					return
					endif

					if $Now_Year != 2012
					return
					endif

					if $Now_Month == 9
					if $Now_Mday == 16
					if $Hour == 19
								if $Min == 30
								if $fuwuqi == 0
								AddMonsterByFloat( 11901 , 1 , 86 , 131 , 167 , 0 )
								endif
								if $fuwuqi == 1
								AddMonsterByFloat( 11911 , 1 , 86 , 131 , 167 , 0 )
								endif
								if $fuwuqi == 2
								AddMonsterByFloat( 11921 , 1 , 86 , 131 , 167 , 0 )
								endif
								if $fuwuqi == 3
								AddMonsterByFloat( 11931 , 1 , 86 , 131 , 167 , 0 )
								endif
								if $fuwuqi == 4
								AddMonsterByFloat( 11941 , 1 , 86 , 131 , 167 , 0 )
								endif
								if $fuwuqi == 5
								AddMonsterByFloat( 11951 , 1 , 86 , 131 , 167 , 0 )
								endif
								$time = $second
								$time_minute = $Min * 60
								$time += $time_minute
								$time_hour = $Hour * 3600
								$time += $time_hour
								SetGlobalVar(83,$time)
								SetGlobalVar(81,0)
								BC( "scrollbar" , "server" , -1 , "(Realm 7) Hades' netherworld forces have invaded the Sea of Atlantis (131, 167). It's a crisis for mortals, and the entire world!")
								BC("screen" , "server" , -1 , "(Realm 7) Hades' netherworld forces have invaded the Sea of Atlantis (131, 167). It's a crisis for mortals, and the entire world!")
								endif
					endif
					endif
					endif

		}
	//------------------------------|
	//        ChongwudaoBoss        |
	//------------------------------| [DELETED]
		function ChongwudaoBoss(){

		}

	//------------------------------|
	//        OnShuaBoss            |
	//------------------------------|
		function OnShuaBoss(){

				$revalue = AddMonster(30101,1,86,95,53,5)
				if $revalue == 0
				BC("screen", "map", 86, "Near 240,134, Khar's Elite Guards have shown up. Please go kill them.")
				BC("chat", "map", 86, "Near 240,134, Khar's Elite Guards have shown up. Please go kill them.")
				endif

				$revalue = AddMonster(30102,1,1,103,66,5)
				if $revalue == 0
				BC("screen", "map", 1, "Near 260,166, Khar's Elite Guards have shown up. Please go kill them.")
				BC("chat", "map", 1, "Near 260,166, Khar's Elite Guards have shown up. Please go kill them.")
				endif

				$revalue = AddMonster(30103,1,88,33,81,5)
				if $revalue == 0
				BC("screen", "map", 88, "Near 83,204, Khar's Elite Guards have shown up. Please go kill them.")
				BC("chat", "map", 88, "Near 83,204, Khar's Elite Guards have shown up. Please go kill them.")
				endif

				$revalue = AddMonster(30104,1,14,26,29,5)
				if $revalue == 0
				BC("screen", "map", 14, "Near 65,73, Khar's Elite Guards have shown up. Please go kill them.")
				BC("chat", "map", 14 "Near 65,73, Khar's Elite Guards have shown up. Please go kill them.")
				endif

				$revalue = AddMonster(30105,1,21,37,17,5)
				if $revalue == 0
				BC("screen", "map", 21, "Near 93,43, Khar's Elite Guards have shown up. Please go kill them.")
				BC("chat", "map", 21, "Near 93,43, Khar's Elite Guards have shown up. Please go kill them.")
				endif
		}
	//------------------------------|
	//        OnLeiShengJiTan       |
	//------------------------------|
		function OnLeiShengJiTan(){
				$level = GetServerVar(31)
				$player_number = GetServerVar(32)
				$monster_level = $level / $player_number
				$x = 64
				$y = 64
				$map_id = 64
				if $monster_level < 45
				AddMonster( 30121, 100, $map_id, $x, $y, 32)
				AddMonster( 30131, 5, $map_id, $x, $y, 32)
				AddMonster( 30141, 1, $map_id, $x, $y, 2)
				endif
				if $monster_level < 60
				if $monster_level >= 45
				AddMonster( 30122, 100, $map_id, $x, $y, 32)
				AddMonster( 30132, 5, $map_id, $x, $y, 32)
				AddMonster( 30142, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 75
				if $monster_level >= 60
				AddMonster( 30123, 100, $map_id, $x, $y, 32)
				AddMonster( 30133, 5, $map_id, $x, $y, 32)
				AddMonster( 30143, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 90
				if $monster_level >= 75
				AddMonster( 30124, 100, $map_id, $x, $y, 32)
				AddMonster( 30134, 5, $map_id, $x, $y, 32)
				AddMonster( 30144, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 105
				if $monster_level >= 90
				AddMonster( 30125, 100, $map_id, $x, $y, 32)
				AddMonster( 30135, 5, $map_id, $x, $y, 32)
				AddMonster( 30145, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 120
				if $monster_level >= 105
				AddMonster( 30126, 100, $map_id, $x, $y, 32)
				AddMonster( 30136, 5, $map_id, $x, $y, 32)
				AddMonster( 30146, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 135
				if $monster_level >= 120
				AddMonster( 30127, 100, $map_id, $x, $y, 32)
				AddMonster( 30137, 5, $map_id, $x, $y, 32)
				AddMonster( 30147, 1, $map_id, $x, $y, 2)
				endif
				endif
				if $monster_level < 150
				if $monster_level >= 135
				AddMonster( 30128, 100, $map_id, $x, $y, 32)
				AddMonster( 30138, 5, $map_id, $x, $y, 32)
				AddMonster( 30148, 1, $map_id, $x, $y, 2)
				endif
				endif
				}
	//------------------------------|
	//        XiTongGongGao         |
	//------------------------------|
		function XiTongGongGao(){
				if $Hour == 21
				if $Min == 0
				if $Now_Week == 4
							BC("scrollbar", "server", -1, "The Pyramid Qualification event has begun. Talk to Nyss on Realm 6 to get the quest. Good luck!")
				endif
				endif
				endif

				if $Line == 6
				if $Hour == 20
				if $Min == 0
							if $Now_Week == 3
							BC("screen", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
							BC("chat", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
							endif
							if $Now_Week == 6
							BC("screen", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
							BC("chat", "server", -1, "Valhalla Commander Caspack: It is time! Our preparation for battle is done! The seal on the Pyramid is at its weakest moment. We will make Osiris pay!")
							endif
				endif
				endif
				endif
				if $Hour == 20
				if $Min == 55
				BC("scrollbar", "server", -1, "The Bountyhunter event will start in Realm 6 in 5 minutes. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 21
				if $Min == 0
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 21
				if $Min == 20
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 21
				if $Min == 40
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 22
				if $Min == 00
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 22
				if $Min == 20
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
				if $Hour == 22
				if $Min == 40
				BC("scrollbar", "server", -1, "The Bountyhunter event has begun. Please talk to Grogn in Atlantis while in Realm 6 to join!")
				endif
				endif
		}

	//------------------------------|
	//        BOSS 3                |
	//------------------------------|
		function Bossthree(){
		$Line = GetServerLineID()
		if $Line == 1
					$RandomID1 = RandomNumber( 1, 5 )
					if $Hour == 3
					if $Min == 30
					if $RandomID1 == 1
                              AddMonster( 30001, 1, 87, 17, 86, 0 )
                              SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
                              AddMonster( 30001, 1, 87, 31, 50, 0 )
                              SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
						AddMonster( 30001, 1, 87, 47, 34, 0 )
						SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
						AddMonster( 30001, 1, 87, 93, 74, 0 )
						SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
						AddMonster( 30001, 1, 87, 57, 81, 0 )
						SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 6
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 9
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 12
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 15
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 18
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 21
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 0
					if $Min == 30
					if $RandomID1 == 1
								AddMonster( 30001, 1, 87, 17, 86, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 2
								AddMonster( 30001, 1, 87, 31, 50, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 3
								AddMonster( 30001, 1, 87, 47, 34, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 4
								AddMonster( 30001, 1, 87, 93, 74, 0 )
								SetServerVar( 100, 1 )
					endif
					if $RandomID1 == 5
								AddMonster( 30001, 1, 87, 57, 81, 0 )
								SetServerVar( 100, 1 )
					endif
					endif
					endif
					if $Hour == 3
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 6
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 9
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 12
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 15
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 18
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 21
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					if $Hour == 0
					if $Min == 30
					BC("screen", "server", -1, "Evil is spreading again. The Overlord Octopus has re-emerged.")
					endif
					endif
					$serverboss1 = GetServerVar( 100 )
					if $Hour == 3
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 6
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 9
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 12
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 15
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 18
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 21
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
					if $Hour == 0
					if $Min == 10
					if $serverboss1 == 1
								BC("screen", "map", 87, "Evil is fading. The Overlord Octopus will vanish in 10 minutes.")
					endif
					endif
					if $Min == 19
					if $serverboss1 == 1
								BC("screen", "map", 87, "The Overlord Octopus will vanish in 1 minute.")
					endif
					endif
					endif
		endif

		}
	//------------------------------|
	//        BOSS 4                |
	//------------------------------|
		function BossFour(){
				$Line = GetServerLineID()
				$RandomID2 = RandomNumber( 1, 5 )
				if $Hour == 4
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif
				if $Hour == 8
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif
				if $Hour == 12
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif
				if $Hour == 16
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif
				if $Hour == 20
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif
				if $Hour == 0
				if $Min == 30
				if $RandomID2 == 1
				if $Line == 1
							AddMonster( 30002, 1, 93, 21, 105, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 62, 14, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 64, 55, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 2
				if $Line == 1
							AddMonster( 30002, 1, 93, 71, 103, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 9, 85, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 47, 54, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 3
				if $Line == 1
							AddMonster( 30002, 1, 93, 41, 71, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 112, 60, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 77, 57, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 4
				if $Line == 1
							AddMonster( 30002, 1, 93, 59, 73, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 87, 79, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 54, 62, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				if $RandomID2 == 5
				if $Line == 1
							AddMonster( 30002, 1, 93, 52, 85, 0 )
							SetServerVar( 101, 1 )
							AddMonster( 30012, 1, 7, 77, 12, 0 )
							SetServerVar( 103, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The Wolfking Karth and Naga Queen have re-emerged.")
				endif
							AddMonster( 30011, 1, 122, 81, 64, 0 )
							SetServerVar( 102, 1 )
							BC("screen", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
							BC("chat", "server", -1, "Evil is spreading again. The True Dragon Emperor has re-emerged.")
				endif
				endif
				endif

				$serverboss2 = GetServerVar( 101 )
				$serverboss3 = GetServerVar( 102 )
				$serverboss4 = GetServerVar( 103 )

				if $Hour == 4
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif
				if $Hour == 8
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif
				if $Hour == 12
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif
				if $Hour == 16
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif
				if $Hour == 20
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif
				if $Hour == 0
				if $Min == 10
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
							BC("chat", "map", 93, "Evil is fading. The Wolfking Karth will vanish in 10 minutes.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
							BC("chat", "map", 122, "Evil is fading. The True Dragon Emperor will vanish in 10 minutes.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
							BC("chat", "map", 7, "Evil is fading. The Naga Queen will vanish in 10 minutes.")
				endif
				endif
				endif
				if $Min == 19
				if $serverboss2 == 1
				if $Line == 1
							BC("screen", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
							BC("chat", "map", 93, "The Wolfking Karth will vanish in 1 minute.")
				endif
				endif
				if $serverboss3 == 1
							BC("screen", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
							BC("chat", "map", 122, "The True Dragon Emperor will vanish in 1 minute.")
				endif
				if $serverboss4 == 1
				if $Line == 1
							BC("screen", "map", 7, "The Naga Queen will vanish in 1 minute.")
							BC("chat", "map", 7, "The Naga Queen will vanish in 1 minute.")
				endif
				endif
				endif
				endif

		}
	//------------------------------|
	//        BOSS Basaka           |
	//------------------------------|
		function Basaka(){
				if $Hour == 12
				if $Min == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				endif
				endif
				if $Hour == 16
				if $Min == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				endif
				endif
				if $Hour == 20
				if $Min == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				endif
				endif
				if $Hour == 00
				if $Min == 00
				AddMonster( 21208, 1, 280, 82, 40, 0 )
				BC("screen", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				BC("chat", "server", -1, "Headcrusher Basaka has led his Spirit Army to the Pantheon! Help us, heroes!")
				endif
				endif
		}
	//------------------------------|
	//        BOSS Sacred Beast     |
	//------------------------------|
		function zhuque(){
				if $Hour == 15
				if $Min == 50
				BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				endif
				endif
				if $Now_Week == 6
				if $Hour == 22
				if $Min == 50
							BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
							BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				endif
				endif
				else
				if $Hour == 21
				if $Min == 50
							BC("screen", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
							BC("chat", "server", -1, "The energy of the Four Sacred Beasts has been combined. They will appear in 10 min.")
				endif
				endif
				endif


				if $Hour == 16
				if $Min == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
				if $Line == 4
							AddMonster( 21257, 1, 99, 42, 84, 0 )
				endif
				if $Line == 8
							AddMonster( 21257, 1, 99, 42, 84, 0 )
				endif
				endif
				endif

				if $Now_Week == 6
				if $Hour == 23
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
							if $Line == 4
							AddMonster( 21257, 1, 99, 42, 84, 0 )
							endif
							if $Line == 8
							AddMonster( 21257, 1, 99, 42, 84, 0 )
							endif
				endif
				endif
				else
				if $Hour == 22
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the South, the Scarlet Phoenix, has appeared at the Killing Grounds in Realms 4 and 8!")
							if $Line == 4
							AddMonster( 21257, 1, 99, 42, 84, 0 )
							endif
							if $Line == 8
							AddMonster( 21257, 1, 99, 42, 84, 0 )
							endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        BOSS Emeral Dragon    |
	//------------------------------|          
		function qinglong(){
				if $Hour == 16
				if $Min == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
				if $Line == 1
							AddMonster( 21265, 1, 455, 85, 96, 0 )
				endif
				if $Line == 5
							AddMonster( 21265, 1, 455, 85, 96, 0 )
				endif
				endif
				endif
				if $Now_Week == 6
				if $Hour == 23
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
							if $Line == 1
							AddMonster( 21265, 1, 455, 85, 96, 0 )
							endif
							if $Line == 5
							AddMonster( 21265, 1, 455, 85, 96, 0 )
							endif
				endif
				endif
				else
				if $Hour == 22
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the East, the Emerald Dragon, has appeared at Emerald Dragon Island in Realms 1 and 5!")
							if $Line == 1
							AddMonster( 21265, 1, 455, 85, 96, 0 )
							endif
							if $Line == 5
							AddMonster( 21265, 1, 455, 85, 96, 0 )
							endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        BOSS White Tiger      |
	//------------------------------|
		function baihu(){
				if $Hour == 16
				if $Min == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				endif
				endif
				if $Now_Week == 6
				if $Hour == 23
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
							BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				endif
				endif
				else
				if $Hour == 22
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
							BC("chat", "server", -1, "Calling all warriors! The beast of the West, the White Tiger, has appeared at White Tiger Den in Realms 2 and 6! ")
				if $Line == 2
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				if $Line == 6
							AddMonster( 21275, 1, 456, 57, 69, 0 )
				endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        BOSS Dark Tortoise    |
	//------------------------------|
		function xuanwu(){
				if $Hour == 16
				if $Min == 00
				BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
				BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
				if $Line == 3
							AddMonster( 21285, 1, 457, 66, 35, 0 )
				endif
				if $Line == 7
							AddMonster( 21285, 1, 457, 66, 35, 0 )
				endif
				endif
				endif


				if $Now_Week == 6
				if $Hour == 23
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
							if $Line == 3
							AddMonster( 21285, 1, 457, 66, 35, 0 )
							endif
							if $Line == 7
							AddMonster( 21285, 1, 457, 66, 35, 0 )
							endif
				endif
				endif
				else
				if $Hour == 22
				if $Min == 00
							BC("screen", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
							BC("chat", "server", -1, "Calling all warriors! The beast of the North, the Dark Tortoise, has appeared at Obsidian Turtle Pool in Realms 3 and 7!")
							if $Line == 3
							AddMonster( 21285, 1, 457, 66, 35, 0 )
							endif
							if $Line == 7
							AddMonster( 21285, 1, 457, 66, 35, 0 )
							endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        BOSS Spider Queen     |
	//------------------------------|
		function Baituboss(){
				$Min = GetSystemTime( "minute")
				$Hour = GetSystemTime( "hour" )
				$Line = GetServerLineID()
				if $Hour == 21
				if $Min == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
							$random1 = RandomNumber( 1, 4 )
							if $random1 == 1
							AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
							endif
							if $random1 == 2
							AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
							endif
							if $random1 == 3
							AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
							endif
							if $random1 == 4
							AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
							endif
							$random2 = RandomNumber( 1, 4 )
							if $random2 == 1
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
							if $random2 == 2
							AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
							endif
							if $random2 == 3
							AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
							endif
							if $random2 == 4
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
				endif
				endif
				endif
				if $Hour == 9
				if $Min == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
							$random1 = RandomNumber( 1, 4 )
							if $random1 == 1
							AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
							endif
							if $random1 == 2
							AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
							endif
							if $random1 == 3
							AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
							endif
							if $random1 == 4
							AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
							endif
							$random2 = RandomNumber( 1, 4 )
							if $random2 == 1
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
							if $random2 == 2
							AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
							endif
							if $random2 == 3
							AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
							endif
							if $random2 == 4
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
				endif
				endif
				endif
				if $Hour == 13
				if $Min == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
							$random1 = RandomNumber( 1, 4 )
							if $random1 == 1
							AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
							endif
							if $random1 == 2
							AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
							endif
							if $random1 == 3
							AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
							endif
							if $random1 == 4
							AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
							endif
							$random2 = RandomNumber( 1, 4 )
							if $random2 == 1
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
							if $random2 == 2
							AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
							endif
							if $random2 == 3
							AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
							endif
							if $random2 == 4
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
				endif
				endif
				endif
				if $Hour == 17
				if $Min == 30
				BC("screen", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Valley of Ashes on Realm 6. Please go to kill her!")
				BC("screen", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				BC("chat", "server", -1, "The Spider Queen appeared in Land of the Dead on Realm 7. Please go to kill her!")
				if $Line == 6
							$random1 = RandomNumber( 1, 4 )
							if $random1 == 1
							AddMonsterByFloat( 14200, 1, 42, 205, 221, 2, 0 )
							endif
							if $random1 == 2
							AddMonsterByFloat( 14200, 1, 42, 101, 187, 2, 0 )
							endif
							if $random1 == 3
							AddMonsterByFloat( 14200, 1, 42, 90, 82, 2, 0 )
							endif
							if $random1 == 4
							AddMonsterByFloat( 14200, 1, 42, 201, 73, 2, 0 )
							endif
							$random2 = RandomNumber( 1, 4 )
							if $random2 == 1
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
							if $random2 == 2
							AddMonsterByFloat( 14201, 1, 227, 181, 174, 2, 0 )
							endif
							if $random2 == 3
							AddMonsterByFloat( 14201, 1, 227, 118, 279, 2, 0 )
							endif
							if $random2 == 4
							AddMonsterByFloat( 14201, 1, 227, 108, 122, 2, 0 )
							endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        PetRefresh            |
	//------------------------------|
		function PetRefresh(){
				$Min = GetSystemTime( "minute")
				$Hour = GetSystemTime( "hour" )
				$numlow = 24
				$nummid = 18
				$numhigh = 27
				$low = GetServerVar(288 )
				$mid = GetServerVar(289 )
				$high = GetServerVar(290 )

				if $low == 0
				$low = 15
				endif
				if $mid == 0
				$mid = 60
				endif
				if $high == 0
				$high = 60
				endif
				$kill1 = GetServerVar(291 )
				$kill1 = $kill1 % 1000
				$kill50 = GetServerVar(291 )
				$kill50 = $kill50 / 1000
				$kill50 = $kill50 % 1000
				$kill90 = GetServerVar(291 )
				$kill90 = $kill90 / 1000000
				$kill90 = $kill90 % 1000

				if $low == 60
				if $Min == 0
				call PetRefreshLow()
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $kill1 % 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				$a = $numlow * 3
				$a = $a / 10
				if $kill1 < $a
							$low = $low * 2
							if $low > 60
							$low = 60
							endif
							SetServerVar( 288, $low)
				endif
				$a = $numlow * 8
				$a = $a / 10
				if $kill1 > $a
							$low = $low / 2
							if $low < 7
							$low = 7
							endif
							SetServerVar( 288, $low)
				endif
				endif
				else
				$a = $Min%$low
				if $a == 0
				call PetRefreshLow()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi % 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numlow * 3
				$a = $a / 10
				if $kill1 < $a
							$low = $low * 2
							if $low > 60
							$low = 60
							endif
							SetServerVar( 288, $low)
				endif
				$a = $numlow * 8
				$a = $a / 10
				if $kill1 > $a
							$low = $low / 2
							if $low < 7
							$low = 7
							endif
							SetServerVar( 288, $low)
				endif
				endif
				endif

				if $mid > 59
				$a = $mid / 60
				$a = $Hour % $a
				if $a == 0
				if $Min == 0
							call PetRefreshMid()
							$chongzhi = GetServerVar(291 )
							$chongzhi1 = $chongzhi / 1000
							$chongzhi1 = $chongzhi1 % 1000
							$chongzhi1 = $chongzhi1 * 1000
							$chongzhi = $chongzhi - $chongzhi1
							SetServerVar( 291, $chongzhi)

							$a = $nummid * 3
							$a = $a / 10
							if $kill50 < $a
							$mid = $mid * 2
							if $mid > 240
							$mid = 240
							endif
							SetServerVar( 289, $mid )
							endif
							$a = $nummid * 6
							$a = $a / 10
							if $kill50 > $a
							$mid = $mid / 2
							if $mid < 30
							$mid = 30
							endif
							SetServerVar( 289, $mid )
							endif
				endif
				endif
				else
				if $Min == 0
				call PetRefreshMid()
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $nummid * 3
				$a = $a / 10
				if $kill50 < $a
							$mid = $mid * 2
							if $mid > 240
							$mid = 240
							endif
							SetServerVar( 289, $mid )
				endif
				$a = $nummid * 6
				$a = $a / 10
				if $kill50 > $a
							$mid = $mid / 2
							if $mid < 30
							$mid = 30
							endif
							SetServerVar( 289, $mid )
				endif
				endif
				if $Min == 30
				call PetRefreshMid()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $nummid * 3
				$a = $a / 10
				if $kill50 < $a
							$mid = $mid * 2
							if $mid > 240
							$mid = 240
							endif
							SetServerVar( 289, $mid )
				endif
				$a = $nummid * 6
				$a = $a / 10
				if $kill50 > $a
							$mid = $mid / 2
							if $mid < 30
							$mid = 30
							endif
							SetServerVar( 289, $mid )
				endif
				endif
				endif

				if $high > 59
				$a = $high / 60
				$a = $Hour % $a
				if $a == 0
				if $Min == 0
							call PetRefreshHigh()

							$chongzhi = GetServerVar(291 )
							$chongzhi1 = $chongzhi / 1000000
							$chongzhi1 = $chongzhi1 % 1000
							$chongzhi1 = $chongzhi1 * 1000000
							$chongzhi = $chongzhi - $chongzhi1
							SetServerVar( 291, $chongzhi)

							$a = $numhigh * 3
							$a = $a / 10
							if $kill90 < $a
							$high = $high * 2
							if $high > 240
							$high = 240
							endif
							SetServerVar( 290, $high )
							endif
							$a = $numhigh * 6
							$a = $a / 10
							if $kill90 > $a
							$high = $high / 2
							if $high < 30
							$high = 30
							endif
							SetServerVar( 290, $high )
							endif
				endif
				endif
				else
				if $Min == 0
				call PetRefreshHigh()
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				$a = $numhigh * 3
				$a = $a / 10
				if $kill90 < $a
							$high = $high * 2
							if $high > 240
							$high = 240
							endif
							SetServerVar( 290, $high )
				endif
				$a = $numhigh * 6
				$a = $a / 10
				if $kill90 > $a
							$high = $high / 2
							if $high < 30
							$high = 30
							endif
							SetServerVar( 290, $high )
				endif
				endif
				if $Min == 30
				call PetRefreshHigh()
				//????
				$chongzhi = GetServerVar(291 )
				$chongzhi1 = $chongzhi / 1000000
				$chongzhi1 = $chongzhi1 % 1000
				$chongzhi1 = $chongzhi1 * 1000000
				$chongzhi = $chongzhi - $chongzhi1
				SetServerVar( 291, $chongzhi)
				//????
				$a = $numhigh * 3
				$a = $a / 10
				if $kill90 < $a
							$high = $high * 2
							if $high > 240
							$high = 240
							endif
							SetServerVar( 290, $high )
				endif
				$a = $numhigh * 6
				$a = $a / 10
				if $kill90 > $a
							$high = $high / 2
							if $high < 30
							$high = 30
							endif
							SetServerVar( 290, $high )
				endif
				endif
				endif
		}
	//------------------------------|
	//        PetRefresh-LOW        |
	//------------------------------|
		function PetRefreshLow(){
				$random1 = RandomNumber( 1, 4 )
				if $random1 == 1
				$random2 = 2
				else
				$random2 = $random1 - 1
				endif
				if $random2 == 1
				AddMonsterByFloat( 14072, 1, 128, 197, 178, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 181, 124, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 71, 193, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 169, 130, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 108, 81, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 158, 183, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 141, 168, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 85, 58, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 167, 144, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 70, 67, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 104, 127, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 249, 251, 2, 0 )
				endif
				if $random1 == 1
				AddMonsterByFloat( 14072, 1, 128, 197, 178, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 181, 124, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 71, 193, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 169, 130, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 108, 81, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 158, 183, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 141, 168, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 85, 58, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 167, 144, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 70, 67, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 104, 127, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 249, 251, 2, 0 )
				endif
				if $random1 == 2
				AddMonsterByFloat( 14072, 1, 128, 209, 195, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 170, 99, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 145, 174, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 157, 103, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 75, 35, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 122,1 84, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 120, 225, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 136, 115, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 167, 67, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 243, 202, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 79, 168, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 145, 250, 2, 0 )
				endif
				if $random2 == 2
				AddMonsterByFloat( 14072, 1, 128, 209, 195, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 170, 99, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 145, 174, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 157, 103, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 75, 35, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 122, 184, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 120, 225, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 136, 115, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 167, 67, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 243, 202, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 79, 168, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 145, 250, 2, 0 )
				endif
				if $random1 == 3
				AddMonsterByFloat( 14072, 1, 128, 176, 162, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 174, 175, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 94, 155, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 192, 112, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 94, 218, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 87, 136, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 244, 126, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 92, 275, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 170, 285, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 160, 225, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 178, 230, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 164, 188, 2, 0 )
				endif
				if $random2 == 3
				AddMonsterByFloat( 14072, 1, 128, 176, 162, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 174,1 75, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 94, 155, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 192, 112, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 94, 218, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 87, 136, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 244, 126, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 92, 275, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 170, 285, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 160, 225, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 178, 230, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 164, 188, 2, 0 )
				endif
				if $random1 == 4
				AddMonsterByFloat( 14072, 1, 128, 216, 188, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 183, 216, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 144, 213, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 180, 145, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 219, 212, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 135, 88, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 194, 110, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 224, 211, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 158, 97, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 214, 177, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 112, 266, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 270, 124, 2, 0 )
				endif
				if $random2 == 4
				AddMonsterByFloat( 14072, 1, 128, 216, 188, 2, 0 )
				AddMonsterByFloat( 14073, 1, 129, 183, 216, 2, 0 )
				AddMonsterByFloat( 14074, 1, 119, 144, 213, 2, 0 )
				AddMonsterByFloat( 14075, 1, 0, 180, 145, 2, 0 )
				AddMonsterByFloat( 14076, 1, 87, 219, 212, 2, 0 )
				AddMonsterByFloat( 14077, 1, 106, 135, 88, 2, 0 )
				AddMonsterByFloat( 14078, 1, 86, 194, 110, 2, 0 )
				AddMonsterByFloat( 14079, 1, 3, 224, 211, 2, 0 )
				AddMonsterByFloat( 14080, 1, 4, 158, 97, 2, 0 )
				AddMonsterByFloat( 14081, 1, 5, 214, 177, 2, 0 )
				AddMonsterByFloat( 14082, 1, 6, 112, 266, 2, 0 )
				AddMonsterByFloat( 14083, 1, 1, 270, 124, 2, 0 )
				endif
		}
	//------------------------------|
	//        PetRefresh-MID        |
	//------------------------------|
		function PetRefreshMid(){
				$random1 = RandomNumber( 1, 4 )
				if $random1 == 1
				$random2 = 2
				else
				$random2 = $random1 - 1
				endif
				if $random2 == 1
				AddMonsterByFloat( 14084, 1, 88, 217, 101, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 246, 146, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 140, 247, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 110, 156, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 52, 239, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 142, 69, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 209, 142, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 182, 77, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 250, 260, 2, 0 )
				endif
				if $random1 == 1
				AddMonsterByFloat( 14084, 1, 88, 217, 101, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 246, 146, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 140, 247, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 110, 156, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 52, 239, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 142, 69, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 209, 142, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 182, 77, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 250, 260, 2, 0 )
				endif
				if $random1 == 2
				AddMonsterByFloat( 14084, 1, 88, 246, 198, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 85, 156, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 133, 156, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 167, 222, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 197, 198, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 225, 102, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 90, 163, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 209, 152, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 65, 277, 2, 0 )
				endif
				if $random2 == 2
				AddMonsterByFloat( 14084, 1, 88, 246, 198, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 85, 156, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 133, 156, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 167, 222, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 197, 198, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 225, 102, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 90, 163, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 209, 152, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 65, 277, 2, 0 )
				endif
				if $random1 == 3
				AddMonsterByFloat( 14084, 1, 88, 105, 142, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 166, 220, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 210, 237, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 74, 158, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 108, 61, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 188, 205, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 176, 229, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 110, 78, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 120, 119, 2, 0 )
				endif
				if $random2 == 3
				AddMonsterByFloat( 14084, 1, 88, 105, 142, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 166, 220, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 210, 237, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 74, 158, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 108, 61, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 188, 205, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 176, 229, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 110, 78, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 120, 119, 2, 0 )
				endif
				if $random1 == 4
				AddMonsterByFloat( 14084, 1, 88, 107, 103, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 252, 227, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 216, 185, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 190, 122, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 242, 144, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 155, 207, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 248, 209, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 144, 220, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 226, 161, 2, 0 )
				endif
				if $random2 == 4
				AddMonsterByFloat( 14084, 1, 88, 107, 103, 2, 0 )
				AddMonsterByFloat( 14085, 1, 7, 252, 227, 2, 0 )
				AddMonsterByFloat( 14086, 1, 13, 216, 185, 2, 0 )
				AddMonsterByFloat( 14087, 1, 20, 190, 122, 2, 0 )
				AddMonsterByFloat( 14088, 1, 8, 242, 144, 2, 0 )
				AddMonsterByFloat( 14089, 1, 90, 155, 207, 2, 0 )
				AddMonsterByFloat( 14090, 1, 93, 248, 209, 2, 0 )
				AddMonsterByFloat( 14091, 1, 14, 144, 220, 2, 0 )
				AddMonsterByFloat( 14092, 1, 21, 226, 161, 2, 0 )
				endif
		}
	//------------------------------|
	//        PetRefresh-High       |
	//------------------------------|
		function PetRefreshHigh(){
				$random1 = RandomNumber( 1, 2 )
				$random2 = RandomNumber( 1, 2 )
				$random3 = RandomNumber( 1, 2 )
				if $random1 == 1
				AddMonsterByFloat( 14093, 1, 245, 117, 166, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 192, 220, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 76, 161, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 177, 166, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 140, 140, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 113, 242, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 246, 100, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 195, 221, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 222, 122, 2, 0 )
				AddMonsterByFloat( 14102, 1, 533, 247, 142, 2, 0 )
				AddMonsterByFloat( 14104, 1, 534, 210,177, 2, 0 )
				AddMonsterByFloat( 14106, 1, 536, 163, 53, 2, 0 )
				AddMonsterByFloat( 14108, 1, 535, 156, 45, 2, 0 )
				else
				AddMonsterByFloat( 14093, 1, 245, 158, 97, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 136, 194, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 115, 97, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 110, 86, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 160, 200, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 218, 231, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 174, 104, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 79, 193, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 117, 89, 2, 0 )
				AddMonsterByFloat( 14103, 1, 533, 184, 148, 2, 0 )
				AddMonsterByFloat( 14105, 1, 534, 176, 99, 2, 0 )
				AddMonsterByFloat( 14107, 1, 536, 200, 196, 2, 0 )
				AddMonsterByFloat( 14109, 1, 535, 109, 133, 2, 0 )
				endif
				if $random2 == 1
				AddMonsterByFloat( 14093, 1, 245, 224, 197, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 159, 163, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 140, 259, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 131, 187, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 234, 167, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 241, 105, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 127, 244, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 109, 91, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 92, 140, 2, 0 )
				AddMonsterByFloat( 14102, 1, 533, 218, 116, 2, 0 )
				AddMonsterByFloat( 14104, 1, 534, 162, 164, 2, 0 )
				AddMonsterByFloat( 14106, 1, 536, 185, 102, 2, 0 )
				AddMonsterByFloat( 14108, 1, 535, 100, 55, 2, 0 )
				else
				AddMonsterByFloat( 14093, 1, 245, 187, 222, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 142, 124, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 259, 197, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 120, 225, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 234, 112, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 167, 176, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 199, 202, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 191, 96, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 137, 240, 2, 0 )
				AddMonsterByFloat( 14103, 1, 533, 160, 191, 2, 0 )
				AddMonsterByFloat( 14105, 1, 534, 234, 96, 2, 0 )
				AddMonsterByFloat( 14107, 1, 536, 244, 188, 2, 0 )
				AddMonsterByFloat( 14109, 1, 535, 135, 177, 2, 0 )
				endif
				if $random3 == 1
				AddMonsterByFloat( 14093, 1, 245, 181, 156, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 127, 139, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 204, 257, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 222, 216, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 177, 94, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 71, 113, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 108, 55, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 229, 145, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 74, 146, 2, 0 )
				AddMonsterByFloat( 14102, 1, 533, 180, 123, 2, 0 )
				AddMonsterByFloat( 14104, 1, 534, 148, 148, 2, 0 )
				AddMonsterByFloat( 14106, 1, 536, 133, 128, 2, 0 )
				AddMonsterByFloat( 14108, 1, 535, 218, 58, 2, 0 )
				else
				AddMonsterByFloat( 14093, 1, 245, 258, 174, 2, 0 )
				AddMonsterByFloat( 14094, 1, 224, 119, 205, 2, 0 )
				AddMonsterByFloat( 14095, 1, 227, 264, 135, 2, 0 )
				AddMonsterByFloat( 14096, 1, 42, 240, 216, 2, 0 )
				AddMonsterByFloat( 14097, 1, 44, 87, 117, 2, 0 )
				AddMonsterByFloat( 14098, 1, 399, 50, 62, 2, 0 )
				AddMonsterByFloat( 14099, 1, 396, 58, 120, 2, 0 )
				AddMonsterByFloat( 14100, 1, 398, 263, 164, 2, 0 )
				AddMonsterByFloat( 14101, 1, 99, 85, 76, 2, 0 )
				AddMonsterByFloat( 14103, 1, 533, 190, 187, 2, 0 )
				AddMonsterByFloat( 14105, 1, 534, 241, 74, 2, 0 )
				AddMonsterByFloat( 14107, 1, 536, 165, 225, 2, 0 )
				AddMonsterByFloat( 14109, 1, 535, 49, 147, 2, 0 )
				endif

		}
	//------------------------------|
	//        BOSS Illusion Dragon  |
	//------------------------------|
		function OnLong(){
				$LineID1 = GetServerLineID()
				if $LineID1 == 6
				$Random1 = RandomNumber( 1, 100 )
				if $Random1 <= 25
				AddMonster( 30021, 1, 171, 65, 53, 0 )
				AddMonster( 30026, 1, 171, 46, 58, 0 )
				AddMonster( 30026, 1, 171, 57, 45, 0 )
				AddMonster( 30026, 1, 171, 55, 79, 0 )
				BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
				endif
				if $Random1 > 25
				if $Random1 <= 50
							AddMonster( 30022, 1, 171, 65, 53, 0 )
							AddMonster( 30027, 1, 171, 46, 58, 0 )
							AddMonster( 30027, 1, 171, 57, 45, 0 )
							AddMonster( 30027, 1, 171, 55, 79, 0 )
							BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
				endif
				endif
				if $Random1 > 50
				if $Random1 <= 75
							AddMonster( 30023, 1, 171, 65, 53, 0 )
							AddMonster( 30028, 1, 171, 46, 58, 0 )
							AddMonster( 30028, 1, 171, 57, 45, 0 )
							AddMonster( 30028, 1, 171, 55, 79, 0 )
							BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
				endif
				endif
				if $Random1 > 75
				if $Random1 <= 95
							AddMonster( 30024, 1, 171, 65, 53, 0 )
							AddMonster( 30029, 1, 171, 46, 58, 0 )
							AddMonster( 30029, 1, 171, 57, 45, 0 )
							AddMonster( 30029, 1, 171, 55, 79, 0 )
							BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
				endif
				endif
				if $Random1 > 95
				if $Random1 <= 100
							AddMonster( 30025, 1, 171, 65, 53, 0 )
							AddMonster( 30030, 1, 171, 46, 58, 0 )
							AddMonster( 30030, 1, 171, 57, 45, 0 )
							AddMonster( 30030, 1, 171, 55, 79, 0 )
							BC("scrollbar", "server", -1, "Heavenly Hourglass's power has twisted time and space. Illusion Dragon has appeared at Chrono Lair Level 2.")
				endif
				endif
				endif

		}
	//------------------------------|
	//        Cavinar Donation      |
	//------------------------------|
		function TwoHours(){
				$SerVar = GetServerVar( 66 )
				$Line = GetServerLineID()
				$Rnd = RandomNumber( 1, 5 )
				if $Hour == 0
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 2
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 4
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 6
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 8
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 10
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 12
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 14
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 16
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 18
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 20
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif
				if $Hour == 22
				if $Min == 0
				if $Rnd == 1
							AddMonster( 10185, 1, 42, 47, 44, 0 )
				endif
				if $Rnd == 2
							AddMonster( 10185, 1, 42, 81, 41, 0 )
				endif
				if $Rnd == 3
							AddMonster( 10185, 1, 42, 63, 87, 0 )
				endif
				if $Rnd == 4
							AddMonster( 10185, 1, 42, 90, 65, 0 )
				endif
				if $Rnd == 5
							AddMonster( 10185, 1, 42, 67, 54, 0 )
				endif
				if $SerVar < 1000
							if $Line == 2
							BC("scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
							endif
				endif
				BC("screen", "map", 90, "World Tree Branches are scattered across Nile River West. Find them!")
				AddMonster( 43075, 1, 90, 70, 48, 0 )
				AddMonster( 43075, 1, 90, 69, 52, 0 )
				AddMonster( 43075, 1, 90, 76, 50, 0 )
				AddMonster( 43075, 1, 90, 86, 50, 0 )
				AddMonster( 43075, 1, 90, 93, 58, 0 )
				AddMonster( 43075, 1, 90, 101, 62, 0 )
				AddMonster( 43075, 1, 90, 106, 64, 0 )
				AddMonster( 43075, 1, 90, 94, 51, 0 )
				AddMonster( 43075, 1, 90, 75, 42, 0 )
				AddMonster( 43075, 1, 90, 82, 59, 0 )
				endif
				endif

		}

	//------------------------------|
	//        Pyramid               |
	//------------------------------| [IMPORTANT +++]
		function Pyramid(){
				if $Line == 8
				if $Hour >= 10
				if $Min == 0
							BC( "screen", "server", -1, "Four entrances to the illusionary Pyramid have shown up in the Hall of Illusion. They are not stable and will disappear soon.")
							BC( "chat", "server", -1, "Four entrances to the illusionary Pyramid have shown up in the Hall of Illusion. They are not stable and will disappear soon.")
							SetServerVar( 75, 1 )
							$ServerVarJ = GetServerVar( 80 )
							$ServerVarJ2 = $ServerVarJ + 1
							SetServerVar( 80, $ServerVarJ2 )
							//--------------------------------------------

							//$a = $Hour * $Now_Mday
				//	$b = $Now_Week * $Now_Month
							//$c = $a + $b
							//$c1 = $c * 13
				//	$d = $c1 % 4

							//--------------------------------------------
							$Random1 = RandomNumber(1 ,4)
							if $Random1 == 1
							AddNPC( 1809 )
							endif
							if $Random1 == 2
							AddNPC( 1810 )
							endif
							if $Random1 == 3
							AddNPC( 1811 )
							endif
							if $Random1 == 4
							AddNPC( 1812 )
							endif

							$Random2 = RandomNumber(1 ,4)
							if $Random2 == 1
							AddNPC( 1813 )
							endif
							if $Random2 == 2
							AddNPC( 1814 )
							endif
							if $Random2 == 3
							AddNPC( 1815 )
							endif
							if $Random2 == 4
							AddNPC( 1816 )
							endif

							$Random3 = RandomNumber(1 ,4)
							if $Random3 == 1
							AddNPC( 1817 )
							endif
							if $Random3 == 2
							AddNPC( 1818 )
							endif
							if $Random3 == 3
							AddNPC( 1819 )
							endif
							if $Random3 == 4
							AddNPC( 1820 )
							endif

							$Random4 = RandomNumber(1 ,4)
							if $Random4 == 1
							AddNPC( 1821 )
							endif
							if $Random4 == 2
							AddNPC( 1822 )
							endif
							if $Random4 == 3
							AddNPC( 1823 )
							endif
							if $Random4 == 4
							AddNPC( 1824 )
							endif

							$RankList = GetRankListValue( 1, 499 )

							//?
							if $RankList < 75
							$SLMID = 30044
							endif

							//1???
							if $RankList >= 75
							if $RankList <= 89
							$SLMID = 11855
							endif
							endif

							//2???
							if $RankList >= 90
							if $RankList <= 99
							$SLMID = 11865
							endif
							endif

							//3???
							if $RankList >= 100
							if $RankList <= 109
							$SLMID = 11875
							endif
							endif

							//4???
							if $RankList >= 110
							if $RankList <= 119
							$SLMID = 11885
							endif
							endif

							//5???
							if $RankList >= 120
							$SLMID = 11895
							endif

							$RandomBoss = RandomNumber( 1, 4 )
							if $RandomBoss == 1
							$yanhouBoss = AddSingleMonster( $SLMID, 203, 63, 71, 0 )
							SetServerVar( 89, $yanhouBoss )
							endif
							if $RandomBoss == 2
							$yanhouBoss = AddSingleMonster( $SLMID, 203, 71, 63, 0 )
							SetServerVar( 89, $yanhouBoss )
							endif
							if $RandomBoss == 3
							$yanhouBoss = AddSingleMonster( $SLMID, 203, 64, 56, 0 )
							SetServerVar( 89, $yanhouBoss )
							endif
							if $RandomBoss == 4
							$yanhouBoss = AddSingleMonster( $SLMID, 203, 57, 63, 0 )
							SetServerVar( 89, $yanhouBoss )
							endif

				endif
				if $Min == 10
							BC( "screen", "server", -1, "The entrances to the Pyramid has disappeared.")
							//BC( "scrollbar", "server", -1, "The entrances to the Pyramid has disappeared.")
							DeleteNPC( 1809 )
							DeleteNPC( 1810 )
							DeleteNPC( 1811 )
							DeleteNPC( 1812 )
							DeleteNPC( 1813 )
							DeleteNPC( 1814 )
							DeleteNPC( 1815 )
							DeleteNPC( 1816 )
							DeleteNPC( 1817 )
							DeleteNPC( 1818 )
							DeleteNPC( 1819 )
							DeleteNPC( 1820 )
							DeleteNPC( 1821 )
							DeleteNPC( 1822 )
							DeleteNPC( 1823 )
							DeleteNPC( 1824 )
				endif
				if $Min == 55
							BC( "screen", "server", -1, "Pharaoh sensed great threats and has teleported everyone out of the Pyramid. Then, he hid the Pyramid from the rest of the world." )
							//BC( "scrollbar", "server", -1, "Pharaoh sensed great threats and has teleported everyone out of the Pyramid. Then, he hid the Pyramid from the rest of the world." )
							MapPlayerFlyToMap( 199, 475, 67, 36 )
							MapPlayerFlyToMap( 200, 475, 67, 36 )
							MapPlayerFlyToMap( 201, 475, 67, 36 )
							MapPlayerFlyToMap( 202, 475, 67, 36 )
							MapPlayerFlyToMap( 203, 475, 67, 36 )
							SetServerVar( 70, 0 )
							SetServerVar( 71, 0 )
							SetServerVar( 72, 0 )
							SetServerVar( 73, 0 )
							SetServerVar( 74, 0 )
							SetServerVar( 75, 0 )
							SetServerVar( 76, 0 )
							SetServerVar( 77, 0 )
							SetServerVar( 78, 0 )
							SetServerVar( 79, 0 )
							SetServerVar( 81, 0 )
							SetServerVar( 82, 0 )
							SetServerVar( 83, 0 )
							SetServerVar( 84, 0 )
							DeleteNPC( 1793 )
							DeleteNPC( 1797 )
							DeleteNPC( 1802 )
							DeleteNPC( 1806 )
							$jinziBOSS1 = GetServerVar( 85 )
							$jinziBOSS2 = GetServerVar( 86 )
							$jinziBOSS3 = GetServerVar( 87 )
							$jinziBOSS4 = GetServerVar( 88 )
							$jinziBOSS5 = GetServerVar( 89 )
							RemoveMonster( $jinziBOSS1 )
							RemoveMonster( $jinziBOSS2 )
							RemoveMonster( $jinziBOSS3 )
							RemoveMonster( $jinziBOSS4 )
							RemoveMonster( $jinziBOSS5 )
				endif
				//------????-----
				if $Min == 56
							MapPlayerFlyToMap( 199, 475, 67, 36 )
							MapPlayerFlyToMap( 200, 475, 67, 36 )
							MapPlayerFlyToMap( 201, 475, 67, 36 )
							MapPlayerFlyToMap( 202, 475, 67, 36 )
							MapPlayerFlyToMap( 203, 475, 67, 36 )
				endif
				if $Min == 58
							if $Hour < 23
							BC( "screen", "server", -1, "The prayer is underway. There are energy flows in the Hall of Illusions. The entrances will soon show up.")
							//BC( "scrollbar", "server", -1, "The prayer is underway. There are energy flows in the Hall of Illusions. The entrances will soon show up.")
							endif
				endif
				endif
				endif
		}

	//------------------------------|
	//        Treasure Hunter       |
	//------------------------------| [IMPORTANT +++]
		function datanbao(){
				if $Min == 0
				SetServerVar( 97, 0 )
				endif
				if $Min == 12
				SetServerVar( 97, 0 )
				endif
				if $Min == 24
				SetServerVar( 97, 0 )
				endif
				if $Min == 36
				SetServerVar( 97, 0 )
				endif
				if $Min == 48
				SetServerVar( 97, 0 )
				endif

				if $Now_Mday > 7
				if $Now_Mday <= 14
				if $Now_Week == 0
							if $Hour == 15
							if $Min == 0
							BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
							endif
				endif
				endif
				endif

				if $Now_Year == 2011
				if $Now_Month == 9
				if $Now_Mday == 18
							if $Hour == 15
							if $Min == 0
							BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
							endif
				endif
				endif
				endif

				if $Now_Year == 2012
				if $Now_Month == 6
				if $Now_Mday == 24
							if $Hour == 15
							if $Min == 0
							BC( "screen", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							BC( "scrollbar", "server", -1, "The Treasure Hunt event has begun! Go get a Treasure Probe from Lu Chen!")
							endif
							endif
				endif
				endif
				endif
		}
	//------------------------------|
	//        JuanXian              |
	//------------------------------|          
		function JuanXian(){

				if $Now_Week == 1
				if $Hour == 0
				if $Min == 1
							SetServerVar( 66, 0 )
							BC( "scrollbar", "server", -1, "This week's magical material donation is in progress. Please donate proper materials to Cavinar to get great rewards.")
				endif
				endif
				endif

		}
	//------------------------------|
	//        Random Monster        |
	//------------------------------|
		function RandomMonster(){
				if $Hour == 20
				if $Min == 18
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 21
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 24
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 27
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 30
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 33
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 36
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 39
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 42
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 45
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 15 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 15 minutes.")
				endif
				if $Min == 48
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 51
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 10 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 10 minutes.")
				endif
				if $Min == 54
				call RandomSpace()
				call RandomSpace()
				endif
				if $Min == 57
				call RandomSpace()
				call RandomSpace()
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] will finish in 3 minutes.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] will finish in 3 minutes.")
				endif
				if $Min == 59
				BC("screen", "map", 186 , "Current round [Feast of the Zodiac] has already ended.")
				BC("chat", "map", 186 , "Current round [Feast of the Zodiac] has already ended.")
				MapPlayerFlyToMap( 186, 475 , 68, 48 )
				endif
				endif

		}
	//------------------------------|
	//        Random Space          |
	//------------------------------|
		function RandomSpace(){
					$n = RandomNumber ( 1, 5 )
					if $n == 1
								AddMonster(41043, 10, 186,51, 81, 3 )
								AddMonster(41044, 10, 186,51, 81, 3 )

								AddMonster(41043, 10, 186,57, 77, 3 )
								AddMonster(41044, 10, 186,57, 77, 3 )

								AddMonster(41043, 10, 186,62, 82, 3 )
								AddMonster(41044, 10, 186,62, 82, 3 )

								BC("screen", "map", 186 , "Void powers are gathering in the [Libra] constellation, and a large number of Star Shards have appeared.")
								BC("chat", "map", 186 , "Void powers are gathering in the [Libra] constellation, and a large number of Star Shards have appeared.")
					endif
					if $n == 2
								AddMonster(41043, 10, 186,73, 81, 3 )
								AddMonster(41044, 10, 186,73, 81, 3 )

								AddMonster(41043, 10, 186,75, 76, 3 )
								AddMonster(41044, 10, 186,75, 76, 3 )

								AddMonster(41043, 10, 186,78, 80, 3 )
								AddMonster(41044, 10, 186,78, 80, 3 )

								BC("screen", "map", 186 , "Void powers are gathering in the [Sagittarius] constellation, and a large number of Star Shards have appeared.")
								BC("chat", "map", 186 , "Void powers are gathering in the [Sagittarius] constellation, and a large number of Star Shards have appeared.")
					endif
					if $n == 3
								AddMonster(41043, 10, 186,44, 67, 3 )
								AddMonster(41044, 10, 186,44, 67, 3 )

								AddMonster(41043, 10, 186,44, 63, 3 )
								AddMonster(41044, 10, 186,44, 63, 3 )

								AddMonster(41043, 10, 186,48, 62, 3 )
								AddMonster(41044, 10, 186,48, 62, 3 )

								BC("screen", "map", 186 , "Void powers are gathering in the [Leo] constellation, and a large number of Star Shards have appeared.")
								BC("chat", "map", 186 , "Void powers are gathering in the [Leo] constellation, and a large number of Star Shards have appeared.")
					endif
					if $n == 4
								AddMonster(41043, 10, 186,58, 45, 3 )
								AddMonster(41044, 10, 186,58, 45, 3 )

								AddMonster(41043, 10, 186,64, 45, 3 )
								AddMonster(41044, 10, 186,64, 45, 3 )

								AddMonster(41043, 10, 186,66, 49, 3 )
								AddMonster(41044, 10, 186,66, 49, 3 )

								BC("screen", "map", 186 , "Void powers are gathering in the [Taurus] constellation, and a large number of Star Shards have appeared.")
								BC("chat", "map", 186 , "Void powers are gathering in the [Taurus] constellation, and a large number of Star Shards have appeared.")
					endif
					if $n == 5
								AddMonster(41043, 10, 186,81, 64, 3 )
								AddMonster(41044, 10, 186,81, 64, 3 )

								AddMonster(41043, 10, 186,82, 61, 3 )
								AddMonster(41044, 10, 186,82, 61, 3 )

								AddMonster(41043, 10, 186,79, 60, 3 )
								AddMonster(41044, 10, 186,79, 60, 3 )

								BC("screen", "map", 186 , "Void powers are gathering in the [Aquarius] constellation, and a large number of Star Shards have appeared.")
								BC("chat", "map", 186 , "Void powers are gathering in the [Aquarius] constellation, and a large number of Star Shards have appeared.")
					endif
		}
	//------------------------------|
	//        System Log            |
	//------------------------------| [SYSTEM CHECK ++]
		function SystemLog(){
					SetGlobalVarLog(900)
					SetGlobalVarLog(901)
					SetGlobalVarLog(902)
					SetGlobalVarLog(903)
					SetGlobalVarLog(904)
					SetGlobalVarLog(905)
					SetGlobalVarLog(906)
					SetGlobalVarLog(907)
					SetGlobalVarLog(908)
					SetGlobalVarLog(909)
					SetGlobalVarLog(910)
					SetGlobalVarLog(912)
					SetGlobalVarLog(914)
					SetGlobalVarLog(915)
					SetGlobalVarLog(916)
					SetGlobalVarLog(917)
					SetGlobalVarLog(918)
					SetGlobalVarLog(919)
					SetGlobalVarLog(920)
					SetGlobalVarLog(921)
					SetGlobalVarLog(922)
					SetGlobalVarLog(923)
					SetGlobalVarLog(924)
					SetGlobalVarLog(926)
					SetGlobalVarLog(928)
					SetGlobalVarLog(929)
					SetGlobalVarLog(930)
					SetGlobalVarLog(931)
					SetGlobalVarLog(932)
					SetGlobalVarLog(934)
					SetGlobalVarLog(936)
					SetGlobalVarLog(937)
					SetGlobalVarLog(938)
					SetGlobalVarLog(939)
					SetGlobalVarLog(940)
					SetGlobalVarLog(941)
					SetGlobalVarLog(942)
					SetGlobalVarLog(943)
					SetGlobalVarLog(944)
					SetGlobalVarLog(945)
					SetGlobalVarLog(946)
					SetGlobalVarLog(947)
					SetGlobalVarLog(948)
					SetGlobalVarLog(949)
					SetGlobalVarLog(950)
					SetGlobalVarLog(951)
					SetGlobalVarLog(952)
					SetGlobalVarLog(953)
					SetGlobalVarLog(954)
					SetGlobalVarLog(955)
					SetGlobalVarLog(956)
					SetGlobalVarLog(957)
					SetGlobalVarLog(958)
					SetGlobalVarLog(959)
					SetGlobalVarLog(960)
					SetGlobalVarLog(961)
					SetGlobalVarLog(962)
					SetGlobalVarLog(963)
					SetGlobalVarLog(964)
					SetGlobalVarLog(965)
					SetGlobalVarLog(966)
					SetGlobalVarLog(967)
					SetGlobalVarLog(968)
					SetGlobalVarLog(969)
					SetGlobalVarLog(800)
					SetGlobalVarLog(801)
					SetGlobalVarLog(802)
					SetGlobalVarLog(803)
					SetGlobalVarLog(970)
					SetGlobalVarLog(971)
					SetGlobalVarLog(972)
					SetGlobalVarLog(973)
					SetGlobalVarLog(974)
					SetGlobalVarLog(975)
					SetGlobalVarLog(976)
					SetGlobalVarLog(977)
					SetGlobalVarLog(979)
					SetGlobalVarLog(980)
					SetGlobalVarLog(893)
					SetGlobalVarLog(892)
					SetGlobalVarLog(888)
					SetGlobalVarLog(889)
					SetGlobalVarLog(890)
					SetGlobalVarLog(891)
					SetGlobalVarLog(887)
					SetGlobalVarLog(886)
					SetGlobalVarLog(885)
					SetGlobalVarLog(884)
					SetGlobalVarLog(883)
		}
	//------------------------------|
	//        Hunzhuaddexp          |
	//------------------------------|
		function hunzhuaddexp(){
					AddMapPlayerInfo( 257 , "exp" , 150 )

		}
	//------------------------------|
	//        Diantai               |
	//------------------------------|
		function diantai(){
		if $Line == 1
					if $Now_Week == 3
								if $Hour == 16
											if $Min == 0
														$daoju1 = GetGlobalVar(131)
														$daoju2 = GetGlobalVar(132)
														$daoju3 = GetGlobalVar(133)
														$guai1 = GetGlobalVar(134)
														$guai1 = GetGlobalVar(135)
														$guai1 = GetGlobalVar(136)
														$n1 = $Now_Week * $Now_Mday
														$nn1 = $n1 + $Now_Week
														$nnn1 = $nn1 + $Now_Mday
														$nnnn1 = $nnn1 % 11
														$endn1 = $nnnn1 + 20
														SetGlobalVar(131,$endn1)
														$n2 = $Now_Week * $Now_Mday
														$nn2 = $Now_Week * 2
														$nnn2 = $n2 + $nn2
														$nnnn2 = $nnn2 + $Now_Mday
														$nnnnn2 = $nnnn2 % 11
														$endn2 = $nnnnn2 + 20
														SetGlobalVar(132,$endn2)
														$n3 = $Now_Week * $Now_Mday
														$nn3 = $Now_Mday * 2
														$nnn3 = $n3 + $nn3
														$nnnn3 = $nnn3 + $Now_Week
														$nnnnn3 = $nnnn3 % 11
														$endn3 = $nnnnn3 + 20
														SetGlobalVar(133,$endn3)

														//????????????
														$m1 = $Now_Week * $Now_Mday
														$mm1 = $m1 + $Now_Week
														$mmm1 = $mm1 + $Now_Mday
														$mmmm1 = $mmm1 % 5
														$endm1 = $mmmm1 + 1
														SetGlobalVar(134,$endm1)

														//????????????
														$m2 = $Now_Week * $Now_Mday
														$mm2 = $Now_Week * 2
														$mmm2 = $m2 + $mm2
														$mmmm2 = $mmm2 + $Now_Mday
														$mmmmm2 = $mmmm2 % 5
														$endm2 = $mmmmm2 + 1
														SetGlobalVar(135,$endm2)

														//????????????
														$m3 = $Now_Week * $Now_Mday
														$mm3 = $Now_Mday * 2
														$mmm3 = $m3 + $mm3
														$mmmm3 = $mmm3 + $Now_Week
														$mmmmm3 = $mmmm3 % 5
														$endm3 = $mmmmm3 + 1
														SetGlobalVar(136,$endm3)
											endif
								endif
					endif

					if $Now_Week == 4
								if $Hour == 16
											if $Min == 0
														$daoju1 = GetGlobalVar(131)
														$daoju2 = GetGlobalVar(132)
														$daoju3 = GetGlobalVar(133)
														$guai1 = GetGlobalVar(134)
														$guai1 = GetGlobalVar(135)
														$guai1 = GetGlobalVar(136)

														//????????????
														$n1 = $Now_Week * $Now_Mday
														$nn1 = $n1 + $Now_Week
														$nnn1 = $nn1 + $Now_Mday
														$nnnn1 = $nnn1 % 11
														$endn1 = $nnnn1 + 20
														SetGlobalVar(131,$endn1)

														//????????????
														$n2 = $Now_Week * $Now_Mday
														$nn2 = $Now_Week * 2
														$nnn2 = $n2 + $nn2
														$nnnn2 = $nnn2 + $Now_Mday
														$nnnnn2 = $nnnn2 % 11
														$endn2 = $nnnnn2 + 20
														SetGlobalVar(132,$endn2)

														//????????????
														$n3 = $Now_Week * $Now_Mday
														$nn3 = $Now_Mday * 2
														$nnn3 = $n3 + $nn3
														$nnnn3 = $nnn3 + $Now_Week
														$nnnnn3 = $nnnn3 % 11
														$endn3 = $nnnnn3 + 20
														SetGlobalVar(133,$endn3)

														//????????????
														$m1 = $Now_Week * $Now_Mday
														$mm1 = $m1 + $Now_Week
														$mmm1 = $mm1 + $Now_Mday
														$mmmm1 = $mmm1 % 5
														$endm1 = $mmmm1 + 1
														SetGlobalVar(134,$endm1)

														//????????????
														$m2 = $Now_Week * $Now_Mday
														$mm2 = $Now_Week * 2
														$mmm2 = $m2 + $mm2
														$mmmm2 = $mmm2 + $Now_Mday
														$mmmmm2 = $mmmm2 % 5
														$endm2 = $mmmmm2 + 1
														SetGlobalVar(135,$endm2)

														//????????????
														$m3 = $Now_Week * $Now_Mday
														$mm3 = $Now_Mday * 2
														$mmm3 = $m3 + $mm3
														$mmmm3 = $mmm3 + $Now_Week
														$mmmmm3 = $mmmm3 % 5
														$endm3 = $mmmmm3 + 1
														SetGlobalVar(136,$endm3)
											endif
								endif
					endif
		endif
		}
	//------------------------------|
	//        God of Water          |
	//------------------------------|
		function GodofWater(){
					//??
					$Min = GetSystemTime( "minute")
					//??
					$Hour = GetSystemTime( "hour" )
					//??????
					$Line = GetServerLineID()
					if $Hour == 1
								if $Min == 0
											$rMonster1 = RandomNumber( 1 , 19 )
											$rMonster2 = RandomNumber( 1 , 24 )
											$rMonster3 = RandomNumber( 1 , 18 )
											$rMonster4 = RandomNumber( 1 , 23 )
											$rMonster5 = RandomNumber( 1 , 16 )
											$rLast = RandomNumber( 1 , 3 )
											$rKind = RandomNumber( 0 , 4 )
											$rHard1 = RandomNumber( 1 , 3 )
											$rHard2 = RandomNumber( 1 , 3 )
											SetGlobalVar(344 ,$rMonster1)
											SetGlobalVar(342 ,$rMonster2)
											SetGlobalVar(343 ,$rMonster3)
											SetGlobalVar(345 ,$rMonster4)
											SetGlobalVar(350 ,$rMonster5)
											SetGlobalVar(346 ,$rLast)
											SetGlobalVar(347 ,$rKind)
											SetGlobalVar(348 ,$rHard1)
											SetGlobalVar(349 ,$rHard2)
											$rlevel = $rMonster1 + $rMonster2
											$rlevel = $rlevel + $rMonster3
											$rlevel = $rlevel + $rMonster4
											$rlevel = $rlevel + $rMonster5
											$rlevel = $rlevel + 20
											SetGlobalVar(353 ,$rlevel)
											if $rKind == 0
														SetGlobalVar(344 ,0)
														SetGlobalVar(342 ,0)
														SetGlobalVar(343 ,0)
														SetGlobalVar(345 ,0)
														SetGlobalVar(350 ,0)
														SetGlobalVar(346 ,1)
														SetGlobalVar(347 ,0)
														SetGlobalVar(348 ,0)
														SetGlobalVar(349 ,0)
														SetGlobalVar(353 ,0)
											endif
											if $Line == 7

														$rMap1 = RandomNumber( 1 , 8 )
														if $rMap1 == 1
																	AddNpcByPos( 903 ,475,166,179,79200,0)
														endif
														if $rMap1 == 2
																	AddNpcByPos( 903 ,86,79,195,79200,0)
														endif
														if $rMap1 == 3
																	AddNpcByPos( 903 ,87,84,131,79200,0)
														endif
														if $rMap1 == 4
																	AddNpcByPos( 903 ,1,187,269,79200,0)
														endif
														if $rMap1 == 5
																	AddNpcByPos( 903 ,475,136,238,79200,0)
														endif
														if $rMap1 == 6
																	AddNpcByPos( 903 ,86,138,255,79200,0)
														endif
														if $rMap1 == 7
																	AddNpcByPos( 903 ,87,235,230,79200,0)
														endif
														if $rMap1 == 8
																	AddNpcByPos( 903 ,1,160,76,79200,0)
														endif

														$rMap2 = RandomNumber( 1 , 8 )
														if $rMap2 == 1
																	AddNpcByPos( 906 ,106,138,133,79200,0)
														endif
														if $rMap2 == 2
																	AddNpcByPos( 906 ,0,192,143,79200,0)
														endif
														if $rMap2 == 3
																	AddNpcByPos( 906 ,7,31,181,79200,0)
														endif
														if $rMap2 == 4
																	AddNpcByPos( 906 ,21,120,195,79200,0)
														endif
														if $rMap2 == 5
																	AddNpcByPos( 906 ,106,58,125,79200,0)
														endif
														if $rMap2 == 6
																	AddNpcByPos( 906 ,0,93,117,79200,0)
														endif
														if $rMap2 == 7
																	AddNpcByPos( 906 ,7,183,198,79200,0)
														endif
														if $rMap2 == 8
																	AddNpcByPos( 906 ,21,249,231,79200,0)
														endif

														$rMap3 = RandomNumber( 1 , 8 )
														if $rMap3 == 1
																	AddNpcByPos( 908 ,88,256,177,79200,0)
														endif
														if $rMap3 == 2
																	AddNpcByPos( 908 ,8,102,125,79200,0)
														endif
														if $rMap3 == 3
																	AddNpcByPos( 908 ,20,138,135,79200,0)
														endif
														if $rMap3 == 4
																	AddNpcByPos( 908 ,93,77,256,79200,0)
														endif
														if $rMap3 == 5
																	AddNpcByPos( 908 ,88,216,65,79200,0)
														endif
														if $rMap3 == 6
																	AddNpcByPos( 908 ,8,165,287,79200,0)
														endif
														if $rMap3 == 7
																	AddNpcByPos( 908 ,93,234,121,79200,0)
														endif
														if $rMap3 == 8
																	AddNpcByPos( 908 ,93,119,95,79200,0)
														endif

														$rMap4 = RandomNumber( 1 , 8 )
														if $rMap4 == 1
																	AddNpcByPos( 907 ,3,128,169,79200,0)
														endif
														if $rMap4 == 2
																	AddNpcByPos( 907 ,4,146,169,79200,0)
														endif
														if $rMap4 == 3
																	AddNpcByPos( 907 ,5,133,274,79200,0)
														endif
														if $rMap4 == 4
																	AddNpcByPos( 907 ,6,179,61,79200,0)
														endif
														if $rMap4 == 5
																	AddNpcByPos( 907 ,3,215,237,79200,0)
														endif
														if $rMap4 == 6
																	AddNpcByPos( 907 ,4,252,188,79200,0)
														endif
														if $rMap4 == 7
																	AddNpcByPos( 907 ,5,222,48,79200,0)
														endif
														if $rMap4 == 8
																	AddNpcByPos( 907 ,6,76,229,79200,0)
														endif

														$rMap5 = RandomNumber( 1 , 8 )
														if $rMap5 == 1
																	AddNpcByPos( 909 ,245,79,131,79200,0)
														endif
														if $rMap5 == 2
																	AddNpcByPos( 909 ,128,108,210,79200,0)
																	AddNpcByPos( 909 ,147,108,210,79200,0)
																	AddNpcByPos( 909 ,148,108,210,79200,0)
														endif
														if $rMap5 == 3
																	AddNpcByPos( 909 ,14,261,164,79200,0)
														endif
														if $rMap5 == 4
																	AddNpcByPos( 909 ,90,95,87,79200,0)
														endif
														if $rMap5 == 5
																	AddNpcByPos( 909 ,14,56,82,79200,0)
														endif
														if $rMap5 == 6
																	AddNpcByPos( 909 ,90,189,128,79200,0)
														endif
														if $rMap5 == 7
																	AddNpcByPos( 909 ,14,65,260,79200,0)
														endif
														if $rMap5 == 8
																	AddNpcByPos( 909 ,14,165,144,79200,0)
														endif
											endif
								endif
					endif

		}
	//------------------------------|
	//        TitanQuest            |
	//------------------------------|
							function TitanQuest(){
										//??
										$Min = GetSystemTime( "minute")
										//??
										$Hour = GetSystemTime( "hour" )
										//??????
										$Line = GetServerLineID()
										if $Hour == 22
													if $Min == 0
																$rMonster = RandomNumber( 1 , 42 )
																$rLast = RandomNumber( 1 , 3 )
																$rKind = RandomNumber( 1 , 4 )
																$rHard1 = RandomNumber( 1 , 3 )
																$rHard2 = RandomNumber( 1 , 3 )
																SetGlobalVar(351 ,$rTime)
																SetGlobalVar(352 ,$rMonster)
																SetGlobalVar(354 ,$rLast)
																SetGlobalVar(355 ,$rKind)
																SetGlobalVar(356 ,$rHard1)
																SetGlobalVar(357 ,$rHard2)
																if $Line == 7
																			$rMap = RandomNumber( 0 , 11 )
																			if $rMap == 0
																						AddNpcByPos( 904 ,9,134,127,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 1st Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 1st Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 1
																						AddNpcByPos( 904 ,10,167,149,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 2
																						AddNpcByPos( 904 ,11,94,88,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 3
																						AddNpcByPos( 904 ,12,266,211,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 4th Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 4th Level of Angkor Temple. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 4
																						AddNpcByPos( 904 ,122,152,165,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of the Dragon Emperor's Catacomb. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 3rd Level of the Dragon Emperor's Catacomb. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 5
																						AddNpcByPos( 904 ,280,181,172,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Pantheon in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Pantheon in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 6
																						AddNpcByPos( 904 ,397,252,248,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of the Black Dragon Lair. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Realm 7, on the 2nd Level of the Black Dragon Lair. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 7
																						AddNpcByPos( 904 ,99,49,155,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Killing Grounds in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the Killing Grounds in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 8
																						AddNpcByPos( 904 ,455,222,74,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at Emerald Dragon Island in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at Emerald Dragon Island in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 9
																						AddNpcByPos( 904 ,456,181,209,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the White Tiger Den in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in the White Tiger Den in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 10
																						AddNpcByPos( 904 ,457,160,179,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at the Obsidian Turtle Pool in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared at the Obsidian Turtle Pool in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																			if $rMap == 11
																						AddNpcByPos( 904 ,535,42,154,8100,0)
																						BC("screen", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Hades' Temple in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																						BC("chat", "servergroup", -1 , "The Exiled Titan Rullamas has appeared in Hades' Temple in Realm 7. He's issuing Entreaty Quests to all who are willing!")
																			endif
																endif
													endif
										endif

							}
	//------------------------------|
	//        TMC                   |
	//------------------------------|
							function TMC(){
										$Min =  GetSystemTime( "minute")
										$Hour =  GetSystemTime( "hour" )
										$Now_Mday =  GetSystemTime( "mday" )
										$Now_Month =  GetSystemTime( "month" )
										$Now_Year =  GetSystemTime( "year" )
										$Now_Week =  GetSystemTime( "week" )
										$Now_Yday =  GetSystemTime( "yday" )
										$Line = GetServerLineID()

										$hour = GetSystemTime("hour")
										$minute = GetSystemTime("minute")
										$hour = $hour * 100
										$time = $hour + $minute

										if $time == 1955
													SetServerVar(300,0)
										endif

				if $Line == 3
				if $Now_Week == 0

				if $time == 1200
							BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1400
							BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1600
							BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1800
							BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register!")
				endif
				if $time == 1945
							BC("chat","servergroup",-1,"The path to the Throne of Boreas will begin at 20:00 today! Guild Leaders can speak to Notus in the Guild Manor to register before 19:55!")
				endif
				if $time == 1955
							BC("chat","servergroup",-1,"Registration for the Throne of Boreas has ended! The first part of the event (The Zephyr) will begin at 20:00. Please gather your Guild members in the correct realm to participate!")
				endif
				if $time == 2000
							BC("chat","servergroup",-1,"The Zephyr has departed and will be in flight for the next 20 minutes! The top 8 Guilds in the server at the end of the event will continue to the next round (Eurus' Wasteland)!")
				endif
				if $time == 2010
							$rank1stID = GetServerVar(301)
							$rank2ndID = GetServerVar(302)
							$rank3rdID = GetServerVar(303)
							if $rank1stID > 0
							#namerank1 = GetGuildName($rank1stID)
							else
							#namerank1 = " "
							endif
							if $rank2ndID > 0
							#namerank2 = GetGuildName($rank2ndID)
							else
							#namerank2 = " "
							endif
							if $rank3rdID > 0
							#namerank3 = GetGuildName($rank3rdID)
							else
							#namerank3 = " "
							endif
							BC("chat","servergroup",-1,"The Zephyr's flight is already half over! The current top 3 Guilds are the ",#namerank1," and ",#namerank2," and ",#namerank3," Guilds!")
				endif
				if $time == 2020
							SetGlobalVar(137,1)
							$rank1stID = GetServerVar(301)
							$rank2ndID = GetServerVar(302)
							$rank3rdID = GetServerVar(303)
							if $rank1stID > 0
							#namerank1 = GetGuildName($rank1stID)
							else
							#namerank1 = " "
							endif
							if $rank2ndID > 0
							#namerank2 = GetGuildName($rank2ndID)
							else
							#namerank2 = " "
							endif
							if $rank3rdID > 0
							#namerank3 = GetGuildName($rank3rdID)
							else
							#namerank3 = " "
							endif
							BC("chat","servergroup",-1,"The Zephyr has landed! The top 3 Guilds are ",#namerank1," and ",#namerank2," and ",#namerank3,"! The top 8 Guilds should prepare for the second round, Eurus' Wasteland, which begins at 20:25!")
				endif
				if $time == 2021
							SetGlobalVar(137,1)
				endif
				endif
				endif
							}
	//------------------------------|
	//        OnNovember2012        |
	//------------------------------|
							function OnNovember2012(){
				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday =  GetSystemTime( "mday" )
				$Min =  GetSystemTime( "minute")
				$Hour =  GetSystemTime( "hour" )
				$Line = GetServerLineID()
				$Kind = $Now_Mday % 3

				$monthadd = $Now_Month * 100
				$Now_Time = $monthadd + $Now_Mday

				if $Now_Year == 2012
				if $Now_Time >= 1211
				if $Now_Time <= 1231

							if $Kind == 0
							call OnNov2012Kind0
							endif

							if $Kind == 1
							call OnNov2012Kind1
							endif

							if $Kind == 2
							call OnNov2012Kind2 
							endif

				endif
				endif
				endif
		}
	//------------------------------|
	//        OnNov2012Kind0        |
	//------------------------------|
							function OnNov2012Kind0(){

				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday =  GetSystemTime( "mday" )
				$Min =  GetSystemTime( "minute")
				$Hour =  GetSystemTime( "hour" )
				$Line = GetServerLineID()

				$monthadd = $Now_Month * 100
				$Now_Time = $monthadd + $Now_Mday

				if $Now_Year == 2012
				if $Now_Time >= 1211
				if $Now_Time <= 1231

							if $Hour == 12
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 55
							BC("screen", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 19
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 55
							BC("screen", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 5 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Dragon Emperor's Catacomb in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

				endif
				endif
				endif
		}
	//------------------------------|
	//        OnNov2012Kind1        |
	//------------------------------|
							function OnNov2012Kind1(){

				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday =  GetSystemTime( "mday" )
				$Min =  GetSystemTime( "minute")
				$Hour =  GetSystemTime( "hour" )
				$Line = GetServerLineID()

				$monthadd = $Now_Month * 100
				$Now_Time = $monthadd + $Now_Mday

				if $Now_Year == 2012
				if $Now_Time >= 1211
				if $Now_Time <= 1231

							if $Hour == 12
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 19
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Sea of Atlantis in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped in the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

				endif
				endif
				endif
		}
	//------------------------------|
	//        OnNov2012Kind2        |
	//------------------------------|
							function OnNov2012Kind2(){

				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday =  GetSystemTime( "mday" )
				$Min =  GetSystemTime( "minute")
				$Hour =  GetSystemTime( "hour" )
				$Line = GetServerLineID()

				$monthadd = $Now_Month * 100
				$Now_Time = $monthadd + $Now_Mday

				if $Now_Year == 2012
				if $Now_Time >= 1211
				if $Now_Time <= 1231

							if $Hour == 12
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 12
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif
							if $Hour == 13
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 13
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 13
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 19
							if $Min == 50
							BC("screen", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 10 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 55
							BC("screen", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 5 minutes, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 19
							if $Min == 59
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 0
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a second chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 4
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 5
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, a third chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 9
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 10
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("screen", "server", -1, "In 5 minutes, the last chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

							if $Hour == 20
							if $Min == 14
							BC("screen", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							BC("chat", "server", -1, "In 1 minute, a chariot pulling the Celestial Lord's Treasure will be passing through the sky above the Great Abyss in Realm 6.")
							endif
							endif

							if $Hour == 20
							if $Min == 15
							BC("screen", "server", -1, "The Celestial Lord's Treasure has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
							BC("chat", "server", -1, "The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss in Realm 6! Quick, heroes: go and collect that treasure!")
										call OnSummonNovember2012
							endif
							endif

				endif
				endif
				endif

		}

	//------------------------------|
	//        OnSummonNovember2012  |
	//------------------------------|
							function OnSummonNovember2012(){
				$Min =  GetSystemTime( "minute")
				$Hour =  GetSystemTime( "hour" )
				$Now_Mday =  GetSystemTime( "mday" )
				$Line = GetServerLineID()
				$Kind = $Now_Mday % 3
				if $Kind == 0

				if $Line == 6

				BC("screen","map",119,"The Celestial Lord's Treasure has dropped in the Dragon Emperor's Catacomb! Quick, heroes: go and collect that treasure!")

				BC("chat","map",119,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped in the Dragon Emperor's Catacomb! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 9
							$time1 = $time1 + 1
							$mapX = RandomNumber(156,242)
							$mapY = RandomNumber(63,175)
							$monsterID_1 = 11979
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time2 = 0
				while $time2 < 4
							$time2 = $time2 + 1
							$mapX = RandomNumber(185,258)
							$mapY = RandomNumber(205,248)
							$monsterID_1 = 11979
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time3 = 0
				while $time3 < 12
							$time3 = $time3 + 1
							$mapX = RandomNumber(51,171)
							$mapY = RandomNumber(119,231)
							$monsterID_1 = 11979
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 27
							$time11 = $time11 + 1
							$mapX = RandomNumber(156,242)
							$mapY = RandomNumber(63,175)
							$monsterID_1 = 11980
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time12 = 0
				while $time12 < 12
							$time12 = $time12 + 1
							$mapX = RandomNumber(185,258)
							$mapY = RandomNumber(205,248)
							$monsterID_1 = 11980
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time13 = 0
				while $time13 < 36
							$time13 = $time13 + 1
							$mapX = RandomNumber(51,171)
							$mapY = RandomNumber(119,231)
							$monsterID_1 = 11980
							$mapID_1 = 119
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				endif

				endif

				if $Kind == 1

				if $Line == 6

				BC("screen","map",86,"The Celestial Lord's Treasure has dropped in the Sea of Atlantis! Quick, heroes: go and collect that treasure!")

				BC("chat","map",86,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Sea of Atlantis! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 25
							$time1 = $time1 + 1
							$mapX = RandomNumber(100,242)
							$mapY = RandomNumber(85,214)
							$monsterID_1 = 11979
							$mapID_1 = 86
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 75
							$time11 = $time11 + 1
							$mapX = RandomNumber(100,242)
							$mapY = RandomNumber(85,214)
							$monsterID_1 = 11980
							$mapID_1 = 86
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				endif

				endif

				if $Kind == 2

				if $Line == 6

				BC("screen","map",87,"The Celestial Lord's Treasure has dropped into the Great Abyss! Quick, heroes: go and collect that treasure!")

				BC("chat","map",87,"The Celestial Lord's Treasure (including the Chest of Surprise and Welcoming Chest) has dropped into the Great Abyss! Quick, heroes: go and collect that treasure!")

				//??? 11979
				$time1 = 0
				while $time1 < 10
							$time1 = $time1 + 1
							$mapX = RandomNumber(78,172)
							$mapY = RandomNumber(37,122)
							$monsterID_1 = 11979
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time2 = 0
				while $time2 < 12
							$time2 = $time2 + 1
							$mapX = RandomNumber(65,140)
							$mapY = RandomNumber(145,236)
							$monsterID_1 = 11979
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time3 = 0
				while $time3 < 3
							$time3 = $time3 + 1
							$mapX = RandomNumber(194,248)
							$mapY = RandomNumber(181,238)
							$monsterID_1 = 11979
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				// ??? 11980
				$time11 = 0
				while $time11 < 30
							$time11 = $time11 + 1
							$mapX = RandomNumber(78,172)
							$mapY = RandomNumber(37,122)
							$monsterID_1 = 11980
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time12 = 0
				while $time12 < 36
							$time12 = $time12 + 1
							$mapX = RandomNumber(65,140)
							$mapY = RandomNumber(145,236)
							$monsterID_1 = 11980
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				$time13 = 0
				while $time13 < 9
							$time13 = $time13 + 1
							$mapX = RandomNumber(194,248)
							$mapY = RandomNumber(181,238)
							$monsterID_1 = 11980
							$mapID_1 = 87
							AddMonsterByFloat($monsterID_1,1,$mapID_1,$mapX,$mapY,1)
				endwhile

				endif

				endif
		}
//-----------------------------------------|
//	Script : NEW Server Script             |
//	Author : Zenn                          |
//   Date   : 2023                         |
//-----------------------------------------|HIDE HERE
	//------------------------------|
	//        Random Dungeon        |
	//------------------------------|
		//-------------------------|
		//      Call Dungeon Gate  |
		//-------------------------|
			function RanDungeon(){

				$Min = GetSystemTime( "minute")
				#NPC = "TEST"
				$T1NPC = 3001
				$T2NPC = 1756
				$T3NPC = 1756
				$Spawn = 300

				if $Min == 5
				call Tier1()
				call Tier2()
				call Tier3()
				endif
				if $Min == 25
				call Tier1()
				call Tier2()
				call Tier3()
				endif
				if $Min == 35
				call Tier1()
				call Tier2()
				call Tier3()
				endif
				if $Min == 50
				call Tier1()
				call Tier2()
				call Tier3()
				endif
			}             
		//-------------------------|
		//      Tier 1 Dungeon     |
		//-------------------------|
				function Tier1(){
				//--------------------|
				//  Aegean North      |
				//--------------------|
				$Map1 = 3
				$M1x1 = 110
				$M1y1 = 65
				$M1x2 = 230
				$M1y2 = 215
				$M1x3 = 105
				$M1y3 = 200
				AddNpcByPos($T1NPC,$Map1,$M1x1,$M1y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map1,$M1x2,$M1y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map1,$M1x3,$M1y3 ,$Spawn,0)
				//--------------------|
				//  Aegean Proper     |
				//--------------------|
				$Map2 = 4
				$M2x1 = 165
				$M2y1 = 165
				$M2x2 = 140
				$M2y2 = 70
				$M2x3 = 240
				$M2y3 = 225
				AddNpcByPos($T1NPC,$Map2,$M2x1,$M2y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map2,$M2x2,$M2y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map2,$M2x3,$M2y3 ,$Spawn,0)
				//--------------------|
				//  Aegean South      |
				//--------------------|
				$Map3 = 5
				$M3x1 = 150
				$M3y1 = 255
				$M3x2 = 200
				$M3y2 = 190
				$M3x3 = 230
				$M3y3 = 250
				AddNpcByPos($T1NPC,$Map3,$M3x1,$M3y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map3,$M3x2,$M3y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map3,$M3x3,$M3y3 ,$Spawn,0)
				//--------------------|
				//  Grand Rift        |
				//--------------------|
				$Map4 = 6
				$M4x1 = 255
				$M4y1 = 60
				$M4x2 = 160
				$M4y2 = 130
				$M4x3 = 180
				$M4y3 = 205
				AddNpcByPos($T1NPC,$Map4,$M4x1,$M4y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map4,$M4x2,$M4y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map4,$M4x3,$M4y3 ,$Spawn,0)
				//--------------------|
				//  Angkor Jungle     |
				//--------------------|
				$Map5 = 88
				$M5x1 = 215
				$M5y1 = 115
				$M5x2 = 230
				$M5y2 = 220
				$M5x3 = 100
				$M5y3 = 239
				AddNpcByPos($T1NPC,$Map5,$M5x1,$M5y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map5,$M5x2,$M5y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map5,$M5x3,$M5y3 ,$Spawn,0)
				//--------------------|
				//  Atlantis Ocean    |
				//--------------------|
				$Map6 = 1
				$M6x1 = 250
				$M6y1 = 250
				$M6x2 = 90
				$M6y2 = 240
				$M6x3 = 180
				$M6y3 = 75
				AddNpcByPos($T1NPC,$Map6,$M6x1,$M6y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map6,$M6x2,$M6y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map6,$M6x3,$M6y3 ,$Spawn,0)
				//--------------------|
				//  Bermuda Island    |
				//--------------------|
				$Map7 = 7
				$M7x1 = 215
				$M7y1 = 200
				$M7x2 = 150
				$M7y2 = 40
				$M7x3 = 55
				$M7y3 = 155
				AddNpcByPos($T1NPC,$Map7,$M7x1,$M7y1 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map7,$M7x2,$M7y2 ,$Spawn,0)
				AddNpcByPos($T1NPC,$Map7,$M7x3,$M7y3 ,$Spawn,0)
				}
	//------------------------------|
	//        Random Resource Spawn |
	//------------------------------|
		//-------------------------|
		//      Spawn Timer        |
		//-------------------------|
			function ResourceSP(){
				//Spawn T1 = Map cấp 1 ~ 30
				//Spawn T2 = Map cấp 30 ~ 60
				//Spawn T3 = Map cấp 60 ~ 75
				//Spawn T4 = Map cấp 75 ~ 90
				//Mỗi Map spawn 4 vị trí, mỗi vị trí spawn 4 loại

				//Map Sa Mạc = Ore
				//Map Biển = Crystal
				//Map Rừng = Cotton ~ Herb [Chia Đều]

				$R = RandomNumber(1, 100)

				$T1Ore = RandomNumber(40001, 40003)
				$T2Ore = RandomNumber(40003, 40005)
				$T3Ore = RandomNumber(40005, 40007)
				$T4Ore = RandomNumber(40007, 40010)

				$T1Cry = RandomNumber(40011, 40013)
				$T2Cry = RandomNumber(40013, 40015)
				$T3Cry = RandomNumber(40015, 40017)
				$T4Cry = RandomNumber(40017, 40020)

				$T1Cot = RandomNumber(40021, 40023)
				$T2Cot = RandomNumber(40023, 40025)
				$T3Cot = RandomNumber(40025, 40027)
				$T4Cot = RandomNumber(40027, 40030)

				$T1Heb = RandomNumber(40031, 40033)
				$T2Heb = RandomNumber(40033, 40035)
				$T3Heb = RandomNumber(40035, 40037)
				$T4Heb = RandomNumber(40037, 40040)

				if $Min == 24
					call Ore()
					call Crystal()
					call Cotton()
					call Herb()
				endif
			}
		//--------------------|
		//  ORE               |
		//--------------------|
			function Ore(){                         
			$M1 = 119

			$M1X1 = 12800 / 254
			$M1Y1 = 17300 / 254

			$M1X2 = 13100 / 254
			$M1Y2 = 17100 / 254

			$M1X3 = 13400 / 254
			$M1Y3 = 17700 / 254

			$M1X4 = 12400 / 254
			$M1Y4 = 16900 / 254

			$M1X5 = 10500 / 254
			$M1Y5 = 21000 / 254

			$M1X6 = 10000 / 254
			$M1Y6 = 21000 / 254

			$M1X7 = 11000 / 254
			$M1Y7 = 21000 / 254

			$M1X8 = 10500 / 254
			$M1Y8 = 20500 / 254

			$M1X9 = 26000 / 254
			$M1Y9 = 16500 / 254

			$M1X10 = 25500 / 254
			$M1Y10 = 16500 / 254

			$M1X11 = 26500 / 254
			$M1Y11 = 16500 / 254

			$M1X12 = 26000 / 254
			$M1Y12 = 16800 / 254

			$M1X13 = 23500 / 254
			$M1Y13 = 21000 / 254

			$M1X14 = 24000 / 254
			$M1Y14 = 21000 / 254

			$M1X15 = 23000 / 254
			$M1Y15 = 21000 / 254

			$M1X16 = 24000 / 254
			$M1Y16 = 21500 / 254

			
			

			AddMonster( $T1Ore, 1, $M1, $M1X1, $M1Y1, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X2, $M1Y2, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X3, $M1Y3, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X4, $M1Y4, 0)

			AddMonster( $T1Ore, 1, $M1, $M1X5, $M1Y5, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X6, $M1Y6, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X7, $M1Y7, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X8, $M1Y8, 0)

			AddMonster( $T1Ore, 1, $M1, $M1X9, $M1Y9, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X10, $M1Y10, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X11, $M1Y11, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X12, $M1Y12, 0)

			AddMonster( $T1Ore, 1, $M1, $M1X13, $M1Y13, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X14, $M1Y14, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X15, $M1Y15, 0)
			AddMonster( $T1Ore, 1, $M1, $M1X16, $M1Y16, 0)

			
			
			$M2 = 14

			$M2X1 = 11500 / 254
			$M2Y1 = 7900 / 254

			$M2X2 = 12000 / 254
			$M2Y2 = 7900 / 254

			$M2X3 = 11000 / 254
			$M2Y3 = 7900 / 254

			$M2X4 = 11500 / 254
			$M2Y4 = 8400 / 254

			$M2X5 = 25000 / 254
			$M2Y5 = 6000 / 254

			$M2X6 = 25500 / 254
			$M2Y6 = 6000 / 254

			$M2X7 = 24500 / 254
			$M2Y7 = 6000 / 254

			$M2X8 = 25000 / 254
			$M2Y8 = 5500 / 254

			$M2X9 = 22500 / 254
			$M2Y9 = 18000 / 254

			$M2X10 = 23000 / 254
			$M2Y10 = 18000 / 254

			$M2X11 = 22000 / 254
			$M2Y11 = 18000 / 254

			$M2X12 = 22500 / 254
			$M2Y12 = 18500 / 254

			$M2X13 = 22000 / 254
			$M2Y13 = 24000 / 254

			$M2X14 = 21500 / 254
			$M2Y14 = 24000 / 254

			$M2X15 = 22500 / 254
			$M2Y15 = 24000 / 254

			$M2X16 = 22000 / 254
			$M2Y16 = 23500 / 254


			AddMonster( $T4Ore, 1, $M2, $M2X1, $M2Y1, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X2, $M2Y2, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X3, $M2Y3, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X4, $M2Y4, 0)

			AddMonster( $T4Ore, 1, $M2, $M2X5, $M2Y5, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X6, $M2Y6, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X7, $M2Y7, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X8, $M2Y8, 0)

			AddMonster( $T4Ore, 1, $M2, $M2X9, $M2Y9, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X10, $M2Y10, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X11, $M2Y11, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X12, $M2Y12, 0)

			AddMonster( $T4Ore, 1, $M2, $M2X13, $M2Y13, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X14, $M2Y14, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X15, $M2Y15, 0)
			AddMonster( $T4Ore, 1, $M2, $M2X16, $M2Y16, 0)

			

			$M3 = 90

			$M3X1 = 9500 / 254
			$M3Y1 = 27000 / 254

			$M3X2 = 10000 / 254
			$M3Y2 = 27000 / 254

			$M3X3 = 9000 / 254
			$M3Y3 = 27000 / 254

			$M3X4 = 9500 / 254
			$M3Y4 = 26500 / 254

			$M3X5 = 24000 / 254
			$M3Y5 = 18000 / 254

			$M3X6 = 23500 / 254
			$M3Y6 = 18000 / 254

			$M3X7 = 24500 / 254
			$M3Y7 = 18000 / 254

			$M3X8 = 24000 / 254
			$M3Y8 = 17500 / 254

			$M3X9 = 15500 / 254
			$M3Y9 = 14500 / 254

			$M3X10 = 15000 / 254
			$M3Y10 = 14500 / 254

			$M3X11 = 16000 / 254
			$M3Y11 = 14500 / 254

			$M3X12 = 15500 / 254
			$M3Y12 = 14000 / 254

			$M3X13 = 16000 / 254
			$M3Y13 = 7000 / 254

			$M3X14 = 15500 / 254
			$M3Y14 = 7000 / 254

			$M3X15 = 16500 / 254
			$M3Y15 = 7000 / 254

			$M3X16 = 15500 / 254
			$M3Y16 = 6500 / 254

			AddMonster( $T3Ore, 1, $M3, $M3X1, $M3Y1, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X2, $M3Y2, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X3, $M3Y3, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X4, $M3Y4, 0)

			AddMonster( $T3Ore, 1, $M3, $M3X5, $M3Y5, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X6, $M3Y6, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X7, $M3Y7, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X8, $M3Y8, 0)

			AddMonster( $T3Ore, 1, $M3, $M3X9, $M3Y9, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X10, $M3Y10, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X11, $M3Y11, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X12, $M3Y12, 0)

			AddMonster( $T3Ore, 1, $M3, $M3X13, $M3Y13, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X14, $M3Y14, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X15, $M3Y15, 0)
			AddMonster( $T3Ore, 1, $M3, $M3X16, $M3Y16, 0)    


			$M4 = 13

			$M4X1 = 6500 / 254
			$M4Y1 = 6500 / 254

			$M4X2 = 6000 / 254
			$M4Y2 = 6500 / 254

			$M4X3 = 7000 / 254
			$M4Y3 = 6500 / 254

			$M4X4 = 6500 / 254
			$M4Y4 = 7000 / 254

			$M4X5 = 23000 / 254
			$M4Y5 = 7000 / 254

			$M4X6 = 22500 / 254
			$M4Y6 = 7000 / 254

			$M4X7 = 23500 / 254
			$M4Y7 = 7000 / 254

			$M4X8 = 23000 / 254
			$M4Y8 = 7500 / 254

			$M4X9 = 12500 / 254
			$M4Y9 = 15500 / 254

			$M4X10 = 12000 / 254
			$M4Y10 = 15500 / 254

			$M4X11 = 13000 / 254
			$M4Y11 = 15500 / 254

			$M4X12 = 12500 / 254
			$M4Y12 = 16000 / 254

			$M4X13 = 14500 / 254
			$M4Y13 = 22500 / 254

			$M4X14 = 14000 / 254
			$M4Y14 = 22500 / 254

			$M4X15 = 15000 / 254
			$M4Y15 = 22500 / 254

			$M4X16 = 14500 / 254
			$M4Y16 = 22000 / 254

			AddMonster( $T2Ore, 1, $M4, $M4X1, $M4Y1, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X2, $M4Y2, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X3, $M4Y3, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X4, $M4Y4, 0)

			AddMonster( $T2Ore, 1, $M4, $M4X5, $M4Y5, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X6, $M4Y6, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X7, $M4Y7, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X8, $M4Y8, 0)

			AddMonster( $T2Ore, 1, $M4, $M4X9, $M4Y9, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X10, $M4Y10, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X11, $M4Y11, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X12, $M4Y12, 0)

			AddMonster( $T2Ore, 1, $M4, $M4X13, $M4Y13, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X14, $M4Y14, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X15, $M4Y15, 0)
			AddMonster( $T2Ore, 1, $M4, $M4X16, $M4Y16, 0)    

			}
		//--------------------|
		//  CRYS              |
		//--------------------|
			function Crystal(){
			$M2 = 86

			$M2X1 = 16600 / 254
			$M2Y1 = 8800 / 254

			$M2X2 = 16600 / 254
			$M2Y2 = 9400 / 254

			$M2X3 = 17000 / 254
			$M2Y3 = 9300 / 254

			$M2X4 = 16100 / 254
			$M2Y4 = 9300 / 254

			$M2X5 = 13600 / 254
			$M2Y5 = 20900 / 254

			$M2X6 = 13600 / 254
			$M2Y6 = 20400 / 254

			$M2X7 = 13100 / 254
			$M2Y7 = 20400 / 254

			$M2X8 = 14100 / 254
			$M2Y8 = 20400 / 254

			$M2X9 = 10400 / 254
			$M2Y9 = 13700 / 254

			$M2X10 = 10900 / 254
			$M2Y10 = 13400 / 254

			$M2X11 = 11200 / 254
			$M2Y11 = 13800 / 254

			$M2X12 = 10300 / 254
			$M2Y12 = 13000 / 254

			$M2X13 = 14500 / 254
			$M2Y13 = 15900 / 254

			$M2X14 = 14500 / 254
			$M2Y14 = 15400 / 254

			$M2X15 = 14000 / 254
			$M2Y15 = 15400 / 254

			$M2X16 = 15000 / 254
			$M2Y16 = 15400 / 254


			AddMonster( $T1Cry, 1, $M2, $M2X1, $M2Y1, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X2, $M2Y2, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X3, $M2Y3, 0)
			AddMonster( $T1Cry, 1, $M2, $M2X4, $M2Y4, 0)

			AddMonster( $T1Cry, 1, $M2, $M2X5, $M2Y5, 0)
			AddMonster( $T1Cry, 1, $M2, $M2X6, $M2Y6, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X7, $M2Y7, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X8, $M2Y8, 0)

			AddMonster( $T1Cry, 1, $M2, $M2X9, $M2Y9, 0)
			AddMonster( $T1Cry, 1, $M2, $M2X10, $M2Y10, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X11, $M2Y11, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X12, $M2Y12, 0)

			AddMonster( $T1Cry, 1, $M2, $M2X13, $M2Y13, 0)
			AddMonster( $T1Cry, 1, $M2, $M2X14, $M2Y14, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X15, $M2Y15, 0)
			AddMonster( $T2Cry, 1, $M2, $M2X16, $M2Y16, 0)


			$M3 = 3

			$M3X1 = 9000 / 254
			$M3Y1 = 5800 / 254

			$M3X2 = 9500 / 254
			$M3Y2 = 5800 / 254

			$M3X3 = 10000 / 254
			$M3Y3 = 5800 / 254

			$M3X4 = 9400 / 254
			$M3Y4 = 5300 / 254

			$M3X5 = 6600 / 254
			$M3Y5 = 19300 / 254

			$M3X6 = 6700 / 254
			$M3Y6 = 19800 / 254

			$M3X7 = 6200 / 254
			$M3Y7 = 19900 / 254

			$M3X8 = 7200 / 254
			$M3Y8 = 19700 / 254

			$M3X9 = 11900 / 254
			$M3Y9 = 25800 / 254

			$M3X10 = 11900 / 254
			$M3Y10 = 25300 / 254

			$M3X11 = 12400 / 254
			$M3Y11 = 25300 / 254

			$M3X12 = 11400 / 254
			$M3Y12 = 25300 / 254

			$M3X13 = 21200 / 254
			$M3Y13 = 20300 / 254

			$M3X14 = 21600 / 254
			$M3Y14 = 20700 / 254

			$M3X15 = 22000 / 254
			$M3Y15 = 20200 / 254

			$M3X16 = 21000 / 254
			$M3Y16 = 21300 / 254

			AddMonster( $T2Cry, 1, $M3, $M3X1, $M3Y1, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X2, $M3Y2, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X3, $M3Y3, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X4, $M3Y4, 0)

			AddMonster( $T2Cry, 1, $M3, $M3X5, $M3Y5, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X6, $M3Y6, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X7, $M3Y7, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X8, $M3Y8, 0)

			AddMonster( $T2Cry, 1, $M3, $M3X9, $M3Y9, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X10, $M3Y10, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X11, $M3Y11, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X12, $M3Y12, 0)

			AddMonster( $T2Cry, 1, $M3, $M3X13, $M3Y13, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X14, $M3Y14, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X15, $M3Y15, 0)
			AddMonster( $T2Cry, 1, $M3, $M3X16, $M3Y16, 0)


			$M4 = 4

			$M4X1 = 14200 / 254
			$M4Y1 = 6500 / 254

			$M4X2 = 14200 / 254
			$M4Y2 = 7000 / 254

			$M4X3 = 14700 / 254
			$M4Y3 = 7000 / 254

			$M4X4 = 13700 / 254
			$M4Y4 = 7000 / 254

			$M4X5 = 8400 / 254
			$M4Y5 = 20800 / 254

			$M4X6 = 8300 / 254
			$M4Y6 = 20400 / 254

			$M4X7 = 8900 / 254
			$M4Y7 = 20300 / 254

			$M4X8 = 7900 / 254
			$M4Y8 = 20500 / 254

			$M4X9 = 10300 / 254
			$M4Y9 = 24300 / 254

			$M4X10 = 10400 / 254
			$M4Y10 = 24700 / 254

			$M4X11 = 10200 / 254
			$M4Y11 = 24900 / 254

			$M4X12 = 10900 / 254
			$M4Y12 = 24500 / 254

			$M4X13 = 16600 / 254
			$M4Y13 = 27700 / 254

			$M4X14 = 17200 / 254
			$M4Y14 = 27500 / 254

			$M4X15 = 17400 / 254
			$M4Y15 = 27900 / 254

			$M4X16 = 17100 / 254
			$M4Y16 = 27100 / 254

			AddMonster( $T2Cry, 1, $M4, $M4X1, $M4Y1, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X2, $M4Y2, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X3, $M4Y3, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X4, $M4Y4, 0)

			AddMonster( $T2Cry, 1, $M4, $M4X5, $M4Y5, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X6, $M4Y6, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X7, $M4Y7, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X8, $M4Y8, 0)

			AddMonster( $T2Cry, 1, $M4, $M4X9, $M4Y9, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X10, $M4Y10, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X11, $M4Y11, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X12, $M4Y12, 0)

			AddMonster( $T2Cry, 1, $M4, $M4X13, $M4Y13, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X14, $M4Y14, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X15, $M4Y15, 0)
			AddMonster( $T2Cry, 1, $M4, $M4X16, $M4Y16, 0)


			$M5 = 5

			$M5X1 = 5200 / 254
			$M5Y1 = 7100 / 254

			$M5X2 = 5700 / 254
			$M5Y2 = 7200 / 254

			$M5X3 = 5800 / 254
			$M5Y3 = 6800 / 254

			$M5X4 = 5600 / 254
			$M5Y4 = 7600 / 254

			$M5X5 = 12500 / 254
			$M5Y5 = 26800 / 254

			$M5X6 = 12900 / 254
			$M5Y6 = 26700 / 254

			$M5X7 = 13000 / 254
			$M5Y7 = 27200 / 254

			$M5X8 = 12800 / 254
			$M5Y8 = 25900 / 254

			$M5X9 = 21300 / 254
			$M5Y9 = 22500 / 254

			$M5X10 = 20800 / 254
			$M5Y10 = 22800 / 254

			$M5X11 = 21200 / 254
			$M5Y11 = 23400 / 254

			$M5X12 = 20500 / 254
			$M5Y12 = 22400 / 254

			$M5X13 = 19900 / 254
			$M5Y13 = 17000 / 254

			$M5X14 = 19900 / 254
			$M5Y14 = 17500 / 254

			$M5X15 = 19500 / 254
			$M5Y15 = 17600 / 254

			$M5X16 = 20500 / 254
			$M5Y16 = 17500 / 254

			AddMonster( $T2Cry, 1, $M5, $M5X1, $M5Y1, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X2, $M5Y2, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X3, $M5Y3, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X4, $M5Y4, 0)

			AddMonster( $T2Cry, 1, $M5, $M5X5, $M5Y5, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X6, $M5Y6, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X7, $M5Y7, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X8, $M5Y8, 0)

			AddMonster( $T2Cry, 1, $M5, $M5X9, $M5Y9, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X10, $M5Y10, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X11, $M5Y11, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X12, $M5Y12, 0)

			AddMonster( $T2Cry, 1, $M5, $M5X13, $M5Y13, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X14, $M5Y14, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X15, $M5Y15, 0)
			AddMonster( $T2Cry, 1, $M5, $M5X16, $M5Y16, 0) 


			$M6 = 87

			$M6X1 = 14700 / 254
			$M6Y1 = 3100 / 254

			$M6X2 = 14200 / 254
			$M6Y2 = 3600 / 254

			$M6X3 = 13700 / 254
			$M6Y3 = 3200 / 254

			$M6X4 = 14700 / 254
			$M6Y4 = 4000 / 254

			$M6X5 = 10500 / 254
			$M6Y5 = 16300 / 254

			$M6X6 = 11000 / 254
			$M6Y6 = 16300 / 254

			$M6X7 = 11000 / 254
			$M6Y7 = 16900 / 254

			$M6X8 = 10900 / 254
			$M6Y8 = 15600 / 254

			$M6X9 = 11100 / 254
			$M6Y9 = 24800 / 254

			$M6X10 = 10700 / 254
			$M6Y10 = 24400 / 254

			$M6X11 = 11100 / 254
			$M6Y11 = 24000 / 254

			$M6X12 = 10300 / 254
			$M6Y12 = 24800 / 254

			$M6X13 = 23700 / 254
			$M6Y13 = 24200 / 254

			$M6X14 = 23400 / 254
			$M6Y14 = 23800 / 254

			$M6X15 = 23000 / 254
			$M6Y15 = 24200 / 254

			$M6X16 = 23700 / 254
			$M6Y16 = 24500 / 254

			AddMonster( $T1Cry, 1, $M6, $M6X1, $M6Y1, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X2, $M6Y2, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X3, $M6Y3, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X4, $M6Y4, 0)

			AddMonster( $T1Cry, 1, $M6, $M6X5, $M6Y5, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X6, $M6Y6, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X7, $M6Y7, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X8, $M6Y8, 0)

			AddMonster( $T1Cry, 1, $M6, $M6X9, $M6Y9, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X10, $M6Y10, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X11, $M6Y11, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X12, $M6Y12, 0)

			AddMonster( $T1Cry, 1, $M6, $M6X13, $M6Y13, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X14, $M6Y14, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X15, $M6Y15, 0)
			AddMonster( $T1Cry, 1, $M6, $M6X16, $M6Y16, 0)


			$M7 = 7

			$M7X1 = 17900 / 254
			$M7Y1 = 20700 / 254

			$M7X2 = 18700 / 254
			$M7Y2 = 20700 / 254

			$M7X3 = 18500 / 254
			$M7Y3 = 20100 / 254

			$M7X4 = 18500 / 254
			$M7Y4 = 21400 / 254

			$M7X5 = 30000 / 254
			$M7Y5 = 12200 / 254

			$M7X6 = 29400 / 254
			$M7Y6 = 12400 / 254

			$M7X7 = 29600 / 254
			$M7Y7 = 12900 / 254

			$M7X8 = 29200 / 254
			$M7Y8 = 11900 / 254

			$M7X9 = 14100 / 254
			$M7Y9 = 3900 / 254

			$M7X10 = 14500 / 254
			$M7Y10 = 4600 / 254

			$M7X11 = 15000 / 254
			$M7Y11 = 4300 / 254

			$M7X12 = 14200 / 254
			$M7Y12 = 4800 / 254

			$M7X13 = 3700 / 254
			$M7Y13 = 16200 / 254

			$M7X14 = 4300 / 254
			$M7Y14 = 16300 / 254

			$M7X15 = 4300 / 254
			$M7Y15 = 15900 / 254

			$M7X16 = 4200 / 254
			$M7Y16 = 16800 / 254

			AddMonster( $T2Cry, 1, $M7, $M7X1, $M7Y1, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X2, $M7Y2, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X3, $M7Y3, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X4, $M7Y4, 0)

			AddMonster( $T2Cry, 1, $M7, $M7X5, $M7Y5, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X6, $M7Y6, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X7, $M7Y7, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X8, $M7Y8, 0)

			AddMonster( $T2Cry, 1, $M7, $M7X9, $M7Y9, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X10, $M7Y10, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X11, $M7Y11, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X12, $M7Y12, 0)

			AddMonster( $T2Cry, 1, $M7, $M7X13, $M7Y13, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X14, $M7Y14, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X15, $M7Y15, 0)
			AddMonster( $T2Cry, 1, $M7, $M7X16, $M7Y16, 0)


			$M8 = 1

			$M8X1 = 12000 / 254
			$M8Y1 = 7200 / 254

			$M8X2 = 11300 / 254
			$M8Y2 = 7300 / 254

			$M8X3 = 11300 / 254
			$M8Y3 = 7800 / 254

			$M8X4 = 11300 / 254
			$M8Y4 = 6800 / 254

			$M8X5 = 17900 / 254
			$M8Y5 = 7100 / 254

			$M8X6 = 18000 / 254
			$M8Y6 = 7600 / 254

			$M8X7 = 18400 / 254
			$M8Y7 = 7600 / 254

			$M8X8 = 18400 / 254
			$M8Y8 = 7800 / 254

			$M8X9 = 12000 / 254
			$M8Y9 = 22100 / 254

			$M8X10 = 11500 / 254
			$M8Y10 = 21600 / 254

			$M8X11 = 11000 / 254
			$M8Y11 = 22100 / 254

			$M8X12 = 11900 / 254
			$M8Y12 = 22100 / 254

			$M8X13 = 23200 / 254
			$M8Y13 = 26600 / 254

			$M8X14 = 23400 / 254
			$M8Y14 = 26000 / 254

			$M8X15 = 22700 / 254
			$M8Y15 = 25900 / 254

			$M8X16 = 24000 / 254
			$M8Y16 = 26200 / 254

			AddMonster( $T2Cry, 1, $M8, $M8X1, $M8Y1, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X2, $M8Y2, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X3, $M8Y3, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X4, $M8Y4, 0)

			AddMonster( $T2Cry, 1, $M8, $M8X5, $M8Y5, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X6, $M8Y6, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X7, $M8Y7, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X8, $M8Y8, 0)

			AddMonster( $T2Cry, 1, $M8, $M8X9, $M8Y9, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X10, $M8Y10, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X11, $M8Y11, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X12, $M8Y12, 0)

			AddMonster( $T2Cry, 1, $M8, $M8X13, $M8Y13, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X14, $M8Y14, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X15, $M8Y15, 0)
			AddMonster( $T2Cry, 1, $M8, $M8X16, $M8Y16, 0)


			$M9 = 6

			$M9X1 = 5300 / 254
			$M9Y1 = 9500 / 254

			$M9X2 = 5800 / 254
			$M9Y2 = 9500 / 254

			$M9X3 = 5700 / 254
			$M9Y3 = 9000 / 254

			$M9X4 = 5800 / 254
			$M9Y4 = 10000 / 254

			$M9X5 = 13800 / 254
			$M9Y5 = 28400 / 254

			$M9X6 = 13900 / 254
			$M9Y6 = 27800 / 254

			$M9X7 = 13300 / 254
			$M9Y7 = 27800 / 254

			$M9X8 = 14700 / 254
			$M9Y8 = 27900 / 254

			$M9X9 = 26000 / 254
			$M9Y9 = 19500 / 254

			$M9X10 = 25500 / 254
			$M9Y10 = 19200 / 254

			$M9X11 = 25700 / 254
			$M9Y11 = 18700 / 254

			$M9X12 = 25200 / 254
			$M9Y12 = 19800 / 254

			$M9X13 = 28300 / 254
			$M9Y13 = 7800 / 254

			$M9X14 = 27600 / 254
			$M9Y14 = 7700 / 254

			$M9X15 = 27500 / 254
			$M9Y15 = 8200 / 254

			$M9X16 = 27700 / 254
			$M9Y16 = 7200 / 254

			AddMonster( $T2Cry, 1, $M9, $M9X1, $M9Y1, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X2, $M9Y2, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X3, $M9Y3, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X4, $M9Y4, 0)

			AddMonster( $T2Cry, 1, $M9, $M9X5, $M9Y5, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X6, $M9Y6, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X7, $M9Y7, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X8, $M9Y8, 0)

			AddMonster( $T2Cry, 1, $M9, $M9X9, $M9Y9, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X10, $M9Y10, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X11, $M9Y11, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X12, $M9Y12, 0)

			AddMonster( $T2Cry, 1, $M9, $M9X13, $M9Y13, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X14, $M9Y14, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X15, $M9Y15, 0)
			AddMonster( $T2Cry, 1, $M9, $M9X16, $M9Y16, 0)
			}
			
		//--------------------|
		//  COTTON            |
		//--------------------|
			function Cotton() {

			$M1 = 534

			$M1X1 = 22100 / 254
			$M1Y1 = 10800 / 254

			$M1X2 = 22600 / 254
			$M1Y2 = 10800 / 254

			$M1X3 = 21700 / 254
			$M1Y3 = 10800 / 254

			$M1X4 = 22100 / 254
			$M1Y4 = 10300 / 254

			$M1X5 = 9700 / 254
			$M1Y5 = 11900 / 254

			$M1X6 = 10100 / 254
			$M1Y6 = 10900 / 254

			$M1X7 = 9400 / 254
			$M1Y7 = 10900 / 254

			$M1X8 = 9700 / 254
			$M1Y8 = 11500 / 254

			$M1X9 = 19900 / 254
			$M1Y9 = 24800 / 254

			$M1X10 = 20300 / 254
			$M1Y10 = 24800 / 254

			$M1X11 = 19500 / 254
			$M1Y11 = 24800 / 254

			$M1X12 = 19900 / 254
			$M1Y12 = 24500 / 254

			$M1X13 = 14300 / 254
			$M1Y13 = 23200 / 254

			$M1X14 = 13900 / 254
			$M1Y14 = 23200 / 254

			$M1X15 = 14700 / 254
			$M1Y15 = 23200 / 254

			$M1X16 = 14300 / 254
			$M1Y16 = 22800 / 254

			AddMonster( $T1Cot, 1, $M1, $M1X1, $M1Y1, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X2, $M1Y2, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X3, $M1Y3, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X4, $M1Y4, 0)

			AddMonster( $T1Cot, 1, $M1, $M1X5, $M1Y5, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X6, $M1Y6, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X7, $M1Y7, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X8, $M1Y8, 0)

			AddMonster( $T1Cot, 1, $M1, $M1X9, $M1Y9, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X10, $M1Y10, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X11, $M1Y11, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X12, $M1Y12, 0)

			AddMonster( $T1Cot, 1, $M1, $M1X13, $M1Y13, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X14, $M1Y14, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X15, $M1Y15, 0)
			AddMonster( $T1Cot, 1, $M1, $M1X16, $M1Y16, 0)

			$M2 = 536

			$M2X1 = 14900 / 254
			$M2Y1 = 7100 / 254

			$M2X2 = 14900 / 254
			$M2Y2 = 6400 / 254

			$M2X3 = 14400 / 254
			$M2Y3 = 7100 / 254

			$M2X4 = 15400 / 254
			$M2Y4 = 7100 / 254

			$M2X5 = 6500 / 254
			$M2Y5 = 19500 / 254

			$M2X6 = 6500 / 254
			$M2Y6 = 18800 / 254

			$M2X7 = 6000 / 254
			$M2Y7 = 19500 / 254

			$M2X8 = 7000 / 254
			$M2Y8 = 19500 / 254

			$M2X9 = 15700 / 254
			$M2Y9 = 21900 / 254

			$M2X10 = 15700 / 254
			$M2Y10 = 21400 / 254

			$M2X11 = 16200 / 254
			$M2Y11 = 21900 / 254

			$M2X12 = 16200 / 254
			$M2Y12 = 21500 / 254

			$M2X13 = 20900 / 254
			$M2Y13 = 17400 / 254

			$M2X14 = 20900 / 254
			$M2Y14 = 16900 / 254

			$M2X15 = 20500 / 254
			$M2Y15 = 17400 / 254

			$M2X16 = 21400 / 254
			$M2Y16 = 17400 / 254


			AddMonster( $T1Cot, 1, $M2, $M2X1, $M2Y1, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X2, $M2Y2, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X3, $M2Y3, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X4, $M2Y4, 0)

			AddMonster( $T1Cot, 1, $M2, $M2X5, $M2Y5, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X6, $M2Y6, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X7, $M2Y7, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X8, $M2Y8, 0)

			AddMonster( $T1Cot, 1, $M2, $M2X9, $M2Y9, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X10, $M2Y10, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X11, $M2Y11, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X12, $M2Y12, 0)

			AddMonster( $T1Cot, 1, $M2, $M2X13, $M2Y13, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X14, $M2Y14, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X15, $M2Y15, 0)
			AddMonster( $T1Cot, 1, $M2, $M2X16, $M2Y16, 0)


			$M3 = 88

			$M3X1 = 8300 / 254
			$M3Y1 = 6600 / 254

			$M3X2 = 8300 / 254
			$M3Y2 = 7100 / 254

			$M3X3 = 8800 / 254
			$M3Y3 = 7100 / 254

			$M3X4 = 7800 / 254
			$M3Y4 = 7100 / 254

			$M3X5 = 7400 / 254
			$M3Y5 = 24400 / 254

			$M3X6 = 7400 / 254
			$M3Y6 = 23900 / 254

			$M3X7 = 6900 / 254
			$M3Y7 = 23900 / 254

			$M3X8 = 7800 / 254
			$M3Y8 = 23800 / 254

			$M3X9 = 30600 / 254
			$M3Y9 = 23600 / 254

			$M3X10 = 30100 / 254
			$M3Y10 = 23600 / 254

			$M3X11 = 30100 / 254
			$M3Y11 = 24100 / 254

			$M3X12 = 30100 / 254
			$M3Y12 = 23100 / 254

			$M3X13 = 20100 / 254
			$M3Y13 = 7800 / 254

			$M3X14 = 20400 / 254
			$M3Y14 = 8500 / 254

			$M3X15 = 20900 / 254
			$M3Y15 = 8300 / 254

			$M3X16 = 19700 / 254
			$M3Y16 = 8800 / 254

			AddMonster( $T2Cot, 1, $M3, $M3X1, $M3Y1, 0)
			AddMonster( $T2Cot, 1, $M3, $M3X2, $M3Y2, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X3, $M3Y3, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X4, $M3Y4, 0)

			AddMonster( $T2Cot, 1, $M3, $M3X5, $M3Y5, 0)
			AddMonster( $T2Cot, 1, $M3, $M3X6, $M3Y6, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X7, $M3Y7, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X8, $M3Y8, 0)

			AddMonster( $T2Cot, 1, $M3, $M3X9, $M3Y9, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X10, $M3Y10, 0)
			AddMonster( $T2Cot, 1, $M3, $M3X11, $M3Y11, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X12, $M3Y12, 0)

			AddMonster( $T2Cot, 1, $M3, $M3X13, $M3Y13, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X14, $M3Y14, 0)
			AddMonster( $T3Cot, 1, $M3, $M3X15, $M3Y15, 0)
			AddMonster( $T2Cot, 1, $M3, $M3X16, $M3Y16, 0)
			}
		//--------------------|
		//  HERB              |
		//--------------------|
			function Herb() {
			$M1 = 533

			$M1X1 = 16700 / 254
			$M1Y1 = 8800 / 254

			$M1X2 = 16700 / 254
			$M1Y2 = 8300 / 254

			$M1X3 = 16200 / 254
			$M1Y3 = 8800 / 254

			$M1X4 = 17200 / 254
			$M1Y4 = 8800 / 254

			$M1X5 = 23900 / 254
			$M1Y5 = 17000 / 254

			$M1X6 = 23900 / 254
			$M1Y6 = 16500 / 254

			$M1X7 = 24400 / 254
			$M1Y7 = 17000 / 254

			$M1X8 = 23400 / 254
			$M1Y8 = 17000 / 254

			$M1X9 = 16900 / 254
			$M1Y9 = 22500 / 254

			$M1X10 = 16900 / 254
			$M1Y10 = 21900 / 254

			$M1X11 = 17300 / 254
			$M1Y11 = 22500 / 254

			$M1X12 = 16500 / 254
			$M1Y12 = 22500 / 254

			$M1X13 = 8900 / 254
			$M1Y13 = 15200 / 254

			$M1X14 = 8900 / 254
			$M1Y14 = 15700 / 254

			$M1X15 = 8500 / 254
			$M1Y15 = 15700 / 254

			$M1X16 = 9400 / 254
			$M1Y16 = 15700 / 254

			AddMonster( $T1Heb, 1, $M1, $M1X1, $M1Y1, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X2, $M1Y2, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X3, $M1Y3, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X4, $M1Y4, 0)

			AddMonster( $T1Heb, 1, $M1, $M1X5, $M1Y5, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X6, $M1Y6, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X7, $M1Y7, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X8, $M1Y8, 0)

			AddMonster( $T1Heb, 1, $M1, $M1X9, $M1Y9, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X10, $M1Y10, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X11, $M1Y11, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X12, $M1Y12, 0)

			AddMonster( $T1Heb, 1, $M1, $M1X13, $M1Y13, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X14, $M1Y14, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X15, $M1Y15, 0)
			AddMonster( $T1Heb, 1, $M1, $M1X16, $M1Y16, 0)


			$M2 = 93

			$M2X1 = 18300 / 254
			$M2Y1 = 5200 / 254

			$M2X2 = 18300 / 254
			$M2Y2 = 5700 / 254

			$M2X3 = 18800 / 254
			$M2Y3 = 5700 / 254

			$M2X4 = 17800 / 254
			$M2Y4 = 5700 / 254

			$M2X5 = 4800 / 254
			$M2Y5 = 18900 / 254

			$M2X6 = 5300 / 254
			$M2Y6 = 18900 / 254

			$M2X7 = 5300 / 254
			$M2Y7 = 18500 / 254

			$M2X8 = 5300 / 254
			$M2Y8 = 19500 / 254

			$M2X9 = 18400 / 254
			$M2Y9 = 26800 / 254

			$M2X10 = 18400 / 254
			$M2Y10 = 26300 / 254

			$M2X11 = 17900 / 254
			$M2Y11 = 26300 / 254

			$M2X12 = 18900 / 254
			$M2Y12 = 26300 / 254

			$M2X13 = 27800 / 254
			$M2Y13 = 16200 / 254

			$M2X14 = 27300 / 254
			$M2Y14 = 16200 / 254

			$M2X15 = 27300 / 254
			$M2Y15 = 16700 / 254

			$M2X16 = 27300 / 254
			$M2Y16 = 15700 / 254


			AddMonster( $T3Heb, 1, $M2, $M2X1, $M2Y1, 0)
			AddMonster( $T3Heb, 1, $M2, $M2X2, $M2Y2, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X3, $M2Y3, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X4, $M2Y4, 0)

			AddMonster( $T3Heb, 1, $M2, $M2X5, $M2Y5, 0)
			AddMonster( $T3Heb, 1, $M2, $M2X6, $M2Y6, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X7, $M2Y7, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X8, $M2Y8, 0)

			AddMonster( $T3Heb, 1, $M2, $M2X9, $M2Y9, 0)
			AddMonster( $T3Heb, 1, $M2, $M2X10, $M2Y10, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X11, $M2Y11, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X12, $M2Y12, 0)

			AddMonster( $T3Heb, 1, $M2, $M2X13, $M2Y13, 0)
			AddMonster( $T3Heb, 1, $M2, $M2X14, $M2Y14, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X15, $M2Y15, 0)
			AddMonster( $T4Heb, 1, $M2, $M2X16, $M2Y16, 0)


			$M3 = 8

			$M3X1 = 16800 / 254
			$M3Y1 = 29200 / 254

			$M3X2 = 16800 / 254
			$M3Y2 = 28700 / 254

			$M3X3 = 16300 / 254
			$M3Y3 = 28700 / 254

			$M3X4 = 17300 / 254
			$M3Y4 = 28700 / 254

			$M3X5 = 10800 / 254
			$M3Y5 = 12800 / 254

			$M3X6 = 10200 / 254
			$M3Y6 = 12700 / 254

			$M3X7 = 10100 / 254
			$M3Y7 = 13300 / 254

			$M3X8 = 10300 / 254
			$M3Y8 = 12000 / 254

			$M3X9 = 13400 / 254
			$M3Y9 = 13100 / 254

			$M3X10 = 13700 / 254
			$M3Y10 = 12700 / 254

			$M3X11 = 13100 / 254
			$M3Y11 = 12200 / 254

			$M3X12 = 14200 / 254
			$M3Y12 = 13100 / 254

			$M3X13 = 21800 / 254
			$M3Y13 = 15400 / 254

			$M3X14 = 22400 / 254
			$M3Y14 = 15000 / 254

			$M3X15 = 22000 / 254
			$M3Y15 = 14700 / 254

			$M3X16 = 22700 / 254
			$M3Y16 = 14800 / 254

			AddMonster( $T3Heb, 1, $M3, $M3X1, $M3Y1, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X2, $M3Y2, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X3, $M3Y3, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X4, $M3Y4, 0)

			AddMonster( $T3Heb, 1, $M3, $M3X5, $M3Y5, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X6, $M3Y6, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X7, $M3Y7, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X8, $M3Y8, 0)

			AddMonster( $T3Heb, 1, $M3, $M3X9, $M3Y9, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X10, $M3Y10, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X11, $M3Y11, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X12, $M3Y12, 0)

			AddMonster( $T3Heb, 1, $M3, $M3X13, $M3Y13, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X14, $M3Y14, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X15, $M3Y15, 0)
			AddMonster( $T3Heb, 1, $M3, $M3X16, $M3Y16, 0)
			}
