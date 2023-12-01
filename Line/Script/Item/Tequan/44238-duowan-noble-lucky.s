	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/16
	//		Author:???
	//		TaskName:44238-duowan-noble-lucky.s
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
     BC("screen", "player", -1, "You must reach LV60 before you can open this chest.")
     return
  endif

  //????????3?
  if $day == $Now_Yday
     if $number >= 3
        BC("screen", "player", -1, "You can only open DuoWan Lucky Pack or Imperial Chest 3 times a day." )
        return
     endif
  endif
  
  //??????
  $bag_count = GetPlayerInfo(-1, "nullitem", 0)
  if $bag_count < 1
     BC("screen", "player", -1, "You do not have enough space in your bag.")
     BC("chat", "player", -1, "You do not have enough space in your bag.")
     return
  endif 
  
  //????????
  $bag_count_1 = GetPlayerInfo(-1, "nullitem", 1)
  if $bag_count_1 < 1
     BC("screen", "player", -1, "You do not have enough space in your Materials bag.")
     BC("chat", "player", -1, "You do not have enough space in your Materials bag.")
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
//                    BC( "screen", "player", -1, "GUID:07666000006" )
//                    BC( "screen", "server", -1, "GUID:07666000007",#name,"GUID:07666000008" )
//                 endif
//
//                 if $a == 2
//                    AddPlayerInfo( -1, "item", 62006, 1 )
//                    BC( "screen", "player", -1, "GUID:07666000009" )
//                    BC( "screen", "server", -1, "GUID:07666000010",#name,"GUID:07666000011" )
//                 endif
//
//   		           if $a == 3
//     		            AddPlayerInfo( -1, "item", 62019, 1 )
//    		            BC( "screen", "player", -1, "GUID:07666000012" )
//    	              BC( "screen", "server", -1, "GUID:07666000013",#name,"GUID:07666000014" )
//  		           endif
//
// 		             if $a == 4
//    		            AddPlayerInfo( -1, "item", 62102, 1 )
//     		            BC( "screen", "player", -1, "GUID:07666000015" )
//    			        	BC( "screen", "server", -1, "GUID:07666000016",#name,"GUID:07666000017" )
//  			         endif
//
//  				       if $a == 5
//     	              AddPlayerInfo( -1, "item", 62003, 1 )
//    				        BC( "screen", "player", -1, "GUID:07666000018" )
//    				        BC( "screen", "server", -1, "GUID:07666000019",#name,"GUID:07666000020" )
// 				         endif
//
//  				       if $a == 6
//   					        AddPlayerInfo( -1, "item", 62045, 1 )
//    				        BC( "screen", "player", -1, "GUID:07666000021" )
//    				        BC( "screen", "server", -1, "GUID:07666000022",#name,"GUID:07666000023" )
//  		           endif
//
//  				       if $a == 7
//    			          AddPlayerInfo( -1, "item", 62057, 1 )
//    				        BC( "screen", "player", -1, "GUID:07666000024" )
//   					        BC( "screen", "server", -1, "GUID:07666000025",#name,"GUID:07666000026" )
// 				         endif
//
//  				       if $a == 8
//    				        AddPlayerInfo( -1, "item", 62058, 1 )
//    				        BC( "screen", "player", -1, "GUID:07666000027" )
//     				        BC( "screen", "server", -1, "GUID:07666000028",#name,"GUID:07666000029" )
// 				         endif
//
// 				         if $a == 9
//     				        AddPlayerInfo( -1, "item", 62070, 1 )
//     				        BC( "screen", "player", -1, "GUID:07666000030" )
//    				        BC( "screen", "server", -1, "GUID:07666000031",#name,"GUID:07666000032" )
//  				       endif
//
// 				         if $a == 10
//    				        AddPlayerInfo( -1, "item", 62061, 1 )
//     				        BC( "screen", "player", -1, "GUID:07666000033" )
//    				        BC( "screen", "server", -1, "GUID:07666000034",#name,"GUID:07666000035" )
//  				       endif
//
// 				         if $a == 11
//     				        AddPlayerInfo( -1, "item", 62038, 1 )
//     				        BC( "screen", "player", -1, "GUID:07666000036" )
//    				        BC( "screen", "server", -1, "GUID:07666000037",#name,"GUID:07666000038" )
//  				       endif
//
//  				       if $a == 12
//   					        AddPlayerInfo( -1, "item", 62039, 1 )
//       			        BC( "screen", "player", -1, "GUID:07666000039" )
//   					        BC( "screen", "server", -1, "GUID:07666000040",#name,"GUID:07666000041" )
//	               endif
//  //????
//                 $pet_count = $pet_count + 1
//                 SetGlobalVar(79, $pet_count)
//
//              endif
//  endif 

  //????????
  if $n >= 2
     if $n <= 51
        AddPlayerInfo( -1, "item", 63422, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Zodiac Pet." )
     endif
  endif
           
  if $n >= 52
     if $n <= 58
        AddPlayerInfo( -1, "item", 60484, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a +4 Mount Unbind Scroll." )            
     endif
  endif

  if $n >= 59
     if $n <= 89
        AddPlayerInfo( -1, "item", 63769, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Platinum Noble Card." )          
     endif
  endif

  //????????
  if $n >= 90
     if $n <= 100
       AddPlayerInfo( -1, "item", 60489, 1 )
       BC( "screen", "player", -1, "Congratulations, you have obtained an Elite Mount Gem." )           
     endif
  endif
       
  if $n >= 101
     if $n <= 111
        AddPlayerInfo( -1, "item", 60488, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained an MP Mount Gem." )            
     endif
  endif

  if $n >= 112
     if $n <= 263
        AddPlayerInfo( -1, "item", 2315, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Seal Removal Stone." )            
     endif
  endif
  
  if $n >= 234
     if $n <= 385
        AddPlayerInfo( -1, "item", 20273, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained an Odin's Soul Jade LV4." )           
     endif
  endif

  //????????
  if $n >= 386
     if $n <= 437
        AddPlayerInfo( -1, "item", 60029, 4 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Warcry Trumpet." )            
     endif
  endif
 
  if $n >= 438
     if $n <= 539               
        AddPlayerInfo( -1, "item", 60004, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Cloak of Protection." )         
     endif
  endif

  if $n >= 540
     if $n <= 640
        AddPlayerInfo( -1, "item", 59774, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Holy Water Pack." )          
     endif
  endif

  if $n >= 641
     if $n <= 1641
        AddPlayerInfo( -1, "item", 59557, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Holy Water Pack." )   
     endif
  endif

  if $n >= 1642
     if $n <= 2641
        $b = RandomNumber( 1, 4 )
        if $b == 1  
           AddPlayerInfo( -1, "item", 61088, 1 )
           BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
        endif
                 
        if $b == 2                  
           AddPlayerInfo( -1, "item", 61089, 1 )
           BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
        endif 

        if $b == 3
           AddPlayerInfo( -1, "item", 61090, 1 )
           BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
        endif
                      
        if $b == 4
           AddPlayerInfo( -1, "item", 61091, 1 )
           BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
        endif
               
     endif
  endif

  if $n >= 2642
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