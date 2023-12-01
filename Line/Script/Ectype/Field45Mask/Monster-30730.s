//	----------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2012/6/28
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	Monster-30730.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1, 565)
		$shu = GetEctypeVar($ectype_ID,9)
		$shu = $shu + 1
		SetEctypeVar($ectype_ID,9,$shu)
		
		if $shu == 50
			SetEctypeVar($ectype_ID,8,0)
			AddMonsterByFloat(30731,1,$ectype_ID,149,218,0)
			return
		endif
		
		if $shu == 100
			SetEctypeVar($ectype_ID,8,0)
			AddMonsterByFloat(30731,1,$ectype_ID,149,218,0)
			return
		endif
		
		if $shu == 150
			SetEctypeVar($ectype_ID,8,0)
			AddMonsterByFloat(30731,1,$ectype_ID,149,218,0)
			return
		endif
		
		if $shu == 200
			SetEctypeVar($ectype_ID,8,0)
			AddMonsterByFloat(30731,1,$ectype_ID,149,218,0)
			StartEctypeTimer($ectype_ID,6)
			return
		endif
		
	
	}