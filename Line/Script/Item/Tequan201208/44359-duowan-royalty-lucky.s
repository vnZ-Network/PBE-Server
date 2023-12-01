	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/16
	//		Author:???
	//		TaskName:44237-duowan-royalty-lucky.s
	//		TaskID:2012?4????
	//
	//****************************************


function OnUseItem(){

  $Now_Yday = GetSystemTime("yday" )
  $day = GetPlayerVar(-1, 4054 )
  $number = GetPlayerVar(-1, 3382)
//  #name = GetPlayerInfo( -1, "name" )
//  $pet_count = GetGlobalVar(79 )

  //????,??60?????
  $lv = GetPlayerInfo(-1, "level")
  if $lv < 60
     BC("screen", "player", -1, "You have to be at least LV60 to use that Gyroscope of Fate!")
     return
  endif

  //????????3?
  if $day == $Now_Yday
     if $number >= 3
        BC("screen", "player", -1, "You can only  use the Duowan Gyroscope of Fate 3 times a day!" )
        return
     endif
  endif
  
  //??????
  $bag_count = GetPlayerInfo(-1, "nullitem", 0)
  if $bag_count < 1
     BC("screen", "player", -1, "You don't have enough space in your bag to use that Gyroscope of Fate!")
     BC("chat", "player", -1, "You don't have enough space in your bag to use that Gyroscope of Fate!")
     return
  endif 
  
  //????????
  $bag_count_1 = GetPlayerInfo(-1, "nullitem", 1)
  if $bag_count_1 < 1
     BC("screen", "player", -1, "You don't have enough space in your materials bag to use that Gyroscope of Fate!")
     BC("chat", "player", -1, "You don't have enough space in your materials bag to use that Gyroscope of Fate!")
     return
  endif  
  
  $n = RandomNumber(2, 10001 )
  //????????
//  if $n == 1
//  //??????????,???????????,???????????
//              if $pet_count >= 1
//                 AddPlayerInfo(-1, "item", 59234, 1 )
//              else
//  //??????????12?????????
//                 $a = RandomNumber( 1, 12 )
//                 #name = GetPlayerInfo( -1, "name" )
//                 if $a == 1
//                    AddPlayerInfo( -1, "item", 62012, 1 )
//                    BC( "screen", "player", -1, "GUID:07506000006" )
//                    BC( "screen", "server", -1, "GUID:07506000007",#name,"GUID:07506000008" )
//                 endif
//
//                 if $a == 2
//                    AddPlayerInfo( -1, "item", 62006, 1 )
//                    BC( "screen", "player", -1, "GUID:07506000009" )
//                    BC( "screen", "server", -1, "GUID:07506000010",#name,"GUID:07506000011" )
//                 endif
//
//   		           if $a == 3
//     		            AddPlayerInfo( -1, "item", 62019, 1 )
//    		            BC( "screen", "player", -1, "GUID:07506000012" )
//    	              BC( "screen", "server", -1, "GUID:07506000013",#name,"GUID:07506000014" )
//  		           endif
//
// 		             if $a == 4
//    		            AddPlayerInfo( -1, "item", 62102, 1 )
//     		            BC( "screen", "player", -1, "GUID:07506000015" )
//    			        	BC( "screen", "server", -1, "GUID:07506000016",#name,"GUID:07506000017" )
//  			         endif
//
//  				       if $a == 5
//     	              AddPlayerInfo( -1, "item", 62003, 1 )
//    				        BC( "screen", "player", -1, "GUID:07506000018" )
//    				        BC( "screen", "server", -1, "GUID:07506000019",#name,"GUID:07506000020" )
// 				         endif
//
//  				       if $a == 6
//   					        AddPlayerInfo( -1, "item", 62045, 1 )
//    				        BC( "screen", "player", -1, "GUID:07506000021" )
//    				        BC( "screen", "server", -1, "GUID:07506000022",#name,"GUID:07506000023" )
//  		           endif
//
//  				       if $a == 7
//    			          AddPlayerInfo( -1, "item", 62057, 1 )
//    				        BC( "screen", "player", -1, "GUID:07506000024" )
//   					        BC( "screen", "server", -1, "GUID:07506000025",#name,"GUID:07506000026" )
// 				         endif
//
//  				       if $a == 8
//    				        AddPlayerInfo( -1, "item", 62058, 1 )
//    				        BC( "screen", "player", -1, "GUID:07506000027" )
//     				        BC( "screen", "server", -1, "GUID:07506000028",#name,"GUID:07506000029" )
// 				         endif
//
// 				         if $a == 9
//     				        AddPlayerInfo( -1, "item", 62070, 1 )
//     				        BC( "screen", "player", -1, "GUID:07506000030" )
//    				        BC( "screen", "server", -1, "GUID:07506000031",#name,"GUID:07506000032" )
//  				       endif
//
// 				         if $a == 10
//    				        AddPlayerInfo( -1, "item", 62061, 1 )
//     				        BC( "screen", "player", -1, "GUID:07506000033" )
//    				        BC( "screen", "server", -1, "GUID:07506000034",#name,"GUID:07506000035" )
//  				       endif
//
// 				         if $a == 11
//     				        AddPlayerInfo( -1, "item", 62038, 1 )
//     				        BC( "screen", "player", -1, "GUID:07506000036" )
//    				        BC( "screen", "server", -1, "GUID:07506000037",#name,"GUID:07506000038" )
//  				       endif
//
//  				       if $a == 12
//   					        AddPlayerInfo( -1, "item", 62039, 1 )
//       			        BC( "screen", "player", -1, "GUID:07506000039" )
//   					        BC( "screen", "server", -1, "GUID:07506000040",#name,"GUID:07506000041" )
//	               endif
//  //????
//                 $pet_count = $pet_count + 1
//                 SetGlobalVar(79, $pet_count)
//
//              endif
//  endif 

  //????????
  if $n >= 2
     if $n <= 101
        AddPlayerInfo( -1, "item", 63422, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Zodiac Pet." )
     endif
  endif
           
  if $n >= 102
     if $n <= 111
        AddPlayerInfo( -1, "item", 60484, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a +4 Mount Unbind Scroll." )            
     endif
  endif

  if $n >= 112
     if $n <= 161
        AddPlayerInfo( -1, "item", 63769, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Platinum Noble Card." )          
     endif
  endif

  //????????
  if $n >= 162
     if $n <= 181
       AddPlayerInfo( -1, "item", 60489, 1 )
       BC( "screen", "player", -1, "Congratulations, you have obtained an Elite Mount Gem." )           
     endif
  endif
       
  if $n >= 182
     if $n <= 201
        AddPlayerInfo( -1, "item", 60488, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained an MP Mount Gem." )            
     endif
  endif

  if $n >= 202
     if $n <= 501
        AddPlayerInfo( -1, "item", 2315, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Seal Removal Stone." )            
     endif
  endif
  
  if $n >= 502
     if $n <= 801
        AddPlayerInfo( -1, "item", 20273, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained an Odin's Soul Jade LV4." )           
     endif
  endif

  //????????
  if $n >= 802
     if $n <= 901
        AddPlayerInfo( -1, "item", 60029, 4 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Warcry Trumpet." )            
     endif
  endif
 
  if $n >= 902
     if $n <= 1001               
        AddPlayerInfo( -1, "item", 60004, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Cloak of Protection." )         
     endif
  endif

  if $n >= 1002
     if $n <= 1201
        AddPlayerInfo( -1, "item", 59774, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Holy Water Pack." )          
     endif
  endif

  if $n >= 1202
     if $n <= 3201
        AddPlayerInfo( -1, "item", 59557, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Holy Water Pack." )   
     endif
  endif

  if $n >= 3202
     if $n <= 5201
        $b = RandomNumber( 1, 4 )
        if $b == 1  
           AddPlayerInfo( -1, "item", 59838, 1 )
           BC( "screen", "player", -1, "Congratulations! Received LV2 Gem Coin!" )
        endif
                 
        if $b == 2                  
           AddPlayerInfo( -1, "item", 59838, 1 )
           BC( "screen", "player", -1, "Congratulations! Received LV2 Gem Coin!" )
        endif 

        if $b == 3
           AddPlayerInfo( -1, "item", 59838, 1 )
           BC( "screen", "player", -1, "Congratulations! Received LV2 Gem Coin!" )
        endif
                      
        if $b == 4
           AddPlayerInfo( -1, "item", 59838, 1 )
           BC( "screen", "player", -1, "Congratulations! Received LV2 Gem Coin!" )
        endif
               
     endif
  endif

  if $n >= 5202
     if $n <= 10001
        AddPlayerInfo( -1, "item", 59234, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Book of EXP." )        
     endif
  endif

  //??????

  if $day != $Now_Yday
     SetPlayerVar( -1, 4054, $Now_Yday )
     SetPlayerVar( -1, 3382, 1 )
  else
     $number = $number + 1
     SetPlayerVar(-1, 3382, $number)
  endif
  
} 