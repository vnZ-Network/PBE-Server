	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-wangshibaoxiang-59772.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){

  $Now_Yday = GetSystemTime("yday" )
  $day = GetPlayerVar(-1, 4054 )
  $number = GetPlayerVar(-1, 3382)
  #name = GetPlayerInfo( -1, "name" )
  $pet_count = GetGlobalVar(79 )

  //????,??60?????
  $lv = GetPlayerInfo(-1, "level")
  if $lv < 60
     BC("screen", "player", -1, "You must reach LV60 before you can open this chest.")
     return
  endif

  //????????3?
  if $day == $Now_Yday
     if $number >= 3
        BC("screen", "player", -1, "An Imperial Chest cannot be opened more than 3 times per day." )
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
  
  $n = RandomNumber(1, 10000 )
  //????????
  if $n == 1
  //??????????,???????????,???????????
              if $pet_count >= 1
                 AddPlayerInfo(-1, "item", 59234, 1 )
              else
  //??????????12?????????
                 $a = RandomNumber( 1, 12 )
                 #name = GetPlayerInfo( -1, "name" )
                 if $a == 1
                    AddPlayerInfo( -1, "item", 62012, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Mammoth." )
                    BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Mammoth." )
                 endif

                 if $a == 2
                    AddPlayerInfo( -1, "item", 62006, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Black Dragon scroll." )
                    BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Black Dragon scroll." )
                 endif

   		           if $a == 3
     		            AddPlayerInfo( -1, "item", 62019, 1 )
    		            BC( "screen", "player", -1, "Congratulations, you have obtained a Harp of the Unicorn." )
    	              BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Harp of the Unicorn." )
  		           endif

 		             if $a == 4
    		            AddPlayerInfo( -1, "item", 62102, 1 )
     		            BC( "screen", "player", -1, "Congratulations, you have obtained a King of the Grassland." )
    			        	BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a King of the Grassland." )
  			         endif

  				       if $a == 5
     	              AddPlayerInfo( -1, "item", 62003, 1 )
    				        BC( "screen", "player", -1, "Congratulations, you have obtained a Griffin." )
    				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Griffin." )
 				         endif

  				       if $a == 6
   					        AddPlayerInfo( -1, "item", 62045, 1 )
    				        BC( "screen", "player", -1, "Congratulations, you have obtained an Arcane Relic." )
    				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained an Arcane Relic." )
  		           endif

  				       if $a == 7
    			          AddPlayerInfo( -1, "item", 62057, 1 )
    				        BC( "screen", "player", -1, "Congratulations, you have obtained a Polar Dog Sled." )
   					        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Polar Dog Sled." )
 				         endif

  				       if $a == 8
    				        AddPlayerInfo( -1, "item", 62058, 1 )
    				        BC( "screen", "player", -1, "Congratulations, you have obtained a Christmas Sled." )
     				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Christmas Sled." )
 				         endif

 				         if $a == 9
     				        AddPlayerInfo( -1, "item", 62070, 1 )
     				        BC( "screen", "player", -1, "Congratulations, you have obtained a Man of Iron." )
    				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Man of Iron." )
  				       endif

 				         if $a == 10
    				        AddPlayerInfo( -1, "item", 62061, 1 )
     				        BC( "screen", "player", -1, "Congratulations, you have obtained a Night's Romance." )
    				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Night's Romance." )
  				       endif

 				         if $a == 11
     				        AddPlayerInfo( -1, "item", 62038, 1 )
     				        BC( "screen", "player", -1, "Congratulations, you have obtained a Royal Rabbit." )
    				        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Royal Rabbit." )
  				       endif

  				       if $a == 12
   					        AddPlayerInfo( -1, "item", 62039, 1 )
       			        BC( "screen", "player", -1, "Congratulations, you have obtained a Terror Wheel." )
   					        BC( "screen", "server", -1, "The hero ",#name,"Congratulations, you have obtained a Terror Wheel." )
	               endif
  //????
                 $pet_count = $pet_count + 1
                 SetGlobalVar(79, $pet_count)

              endif
  endif 

  //????????
  if $n >= 2
     if $n <= 101
        AddPlayerInfo( -1, "item", 63422, 1 )
        BC( "screen", "player", -1, "Congratulations, you have obtained a Gem of Hel Fragment." )
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

  if $n >= 5202
     if $n <= 10000
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