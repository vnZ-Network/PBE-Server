//	----------------------------------------------------
//	--		Copyright：PERFECT WORLD
//	--		Modified：2012/6/28
//	--		Author：朱建臣
//	--		Class:	Monster-30615.s
//	--		AIName：
//	--		Remark：
//	----------------------------------------------------

// 服务器变量341 控制怪物数量
// 服务器变量298 控制怪物总数

	function OnDead(){
		
		$m = GetServerVar(341)
		$n = GetServerVar(298)
		$m = $m - 1
		$x = RandomNumber(162,174)
		$y = RandomNumber(135,147)
		SetServerVar(341,$m)
		if $n < 151
			AddMonsterByFloat(30615,1,564,$x,$y,0)
			$mm = GetServerVar(341)
			$mm = $mm + 1
			$n = $n + 1
			SetServerVar(341,$mm)
			SetServerVar(298,$n)
		endif

	
	}