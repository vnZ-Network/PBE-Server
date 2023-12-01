	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/4
	//		Author:??
	//		TaskName:ITEM-baoxiangchongwu-63364.s
	//		TaskID:???
	//
	//****************************************





function OnUseItem(){

      
	$petcount = GetPetCount(-1)
	$petmaxcount = GetPetMaxCount(-1)
	if $petcount >= $petmaxcount
	    BC( "screen", "player", -1, "Cannot have more pets." )
	    return
	endif
   		
    $result = SubPlayerInfo(-1, "item", 63364, 1)
	if $result == 0
		$n = RandomNumber(1, 25)
		
		if $n == 1
			$pet_number = 2801
		endif
		if $n == 2
			$pet_number = 2802
		endif
		if $n == 3
			$pet_number = 2803
		endif
		if $n == 4
			$pet_number = 2804
		endif
		if $n == 5
			$pet_number = 2805
		endif
		if $n == 6
			$pet_number = 2806
		endif
		if $n == 7
			$pet_number = 2807
		endif
		if $n == 8
			$pet_number = 2808
		endif
		if $n == 9
			$pet_number = 2809
		endif
		if $n == 10
			$pet_number = 2810
		endif
		if $n == 11
			$pet_number = 2811
		endif
		if $n == 12
			$pet_number = 2812
		endif
		if $n == 13
			$pet_number = 2813
		endif
		if $n == 14
			$pet_number = 2814
		endif
		if $n == 15
			$pet_number = 2815
		endif
		if $n == 16
			$pet_number = 2816
		endif
		if $n == 17
			$pet_number = 2817
		endif
		if $n == 18
			$pet_number = 2818
		endif
		if $n == 19
			$pet_number = 2819
		endif
		if $n == 20
			$pet_number = 2820
		endif
		if $n == 21
			$pet_number = 2821
		endif
		if $n == 22
			$pet_number = 2822
		endif
		if $n == 23
			$pet_number = 2823
		endif
		if $n == 24
			$pet_number = 2824
		endif
		if $n == 25
			$pet_number = 2825
		endif

		$pet = AddPet( -1, $pet_number , 1, 0)      
  		BC( "messagebox", "player", -1, "You have acquired a pet!" )
	else
		BC( "screen", "player", -1, "Failed to use item!" )
	endif		
}
