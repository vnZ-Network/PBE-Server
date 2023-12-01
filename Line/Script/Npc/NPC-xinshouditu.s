//	//****************************************
//	//
//	//		Copyright：PERFECT WORLD
//	//		Modified：2008/12/19
//	//		Author：祁晶
//	//		TaskName：NPC-xinshouditu.s
//	//		TaskID：蝎子王墓NPC传到龙帝陵,配合新手地图分流
//	//
//	//****************************************
//	
//	//function OnRequest(){
//		
//	//}
//	
//	//传送
//	//function OnOption0(){
//		//是否第一次进入
//	//	$is_first = GetPlayerVar(-1 ,12)
//
//		//if $is_first == 0
//			//第一次进则给723任务,723任务万一给失败,则无法出去
//		//    $r = IsTaskAccept(-1 , 723)
//	//		if $r != 0
//		//		AcceptTask(-1 ,723 )	
//		//	endif         			
//
//			SetTaskDone( -1,501 )
//			SetTaskDone( -1,502 )
//			SetTaskDone( -1,503 )
//			SetTaskDone( -1,504 )
//			SetTaskDone( -1,505 )
//			SetTaskDone( -1,506 )
//			SetTaskDone( -1,507 )
//			SetTaskDone( -1,508 )
//			SetTaskDone( -1,509 )
//			SetTaskDone( -1,510 )
//			SetTaskDone( -1,511 )
//			SetTaskDone( -1,512 )
//			SetTaskDone( -1,513 )
//			SetTaskDone( -1,514 )
//			SetTaskDone( -1,515 )
//			SetTaskDone( -1,516 )
//			SetTaskDone( -1,517 )
//			SetTaskDone( -1,518 )
//			SetTaskDone( -1,519 )
//			SetTaskDone( -1,520 )
//			SetTaskDone( -1,640 )
//			SetTaskDone( -1,641 )
//			SetTaskDone( -1,642 )
//			SetTaskDone( -1,643 )
//			
//			SetTaskDone( -1,685 )
//			SetTaskDone( -1,686 )
//			SetTaskDone( -1,687 )
//			SetTaskDone( -1,688 )
//			SetTaskDone( -1,689 )
//			SetTaskDone( -1,690 )
//			SetTaskDone( -1,691 )
//			SetTaskDone( -1,692 )
//			SetTaskDone( -1,693 )
//			SetTaskDone( -1,694 )
//			SetTaskDone( -1,695 )
//			SetTaskDone( -1,696 )
//			SetTaskDone( -1,697 )
//			SetTaskDone( -1,698 )
//			SetTaskDone( -1,699 )
//			SetTaskDone( -1,700 )
//			SetTaskDone( -1,701 )
//			SetTaskDone( -1,702 )
//			SetTaskDone( -1,703 )
//			SetTaskDone( -1,704 )
//			SetTaskDone( -1,705 )
//			SetTaskDone( -1,706 )
//			SetTaskDone( -1,707 )
//			SetTaskDone( -1,708 )
//			SetTaskDone( -1,709 )
//			SetTaskDone( -1,710 )
//			SetTaskDone( -1,711 )
//			SetTaskDone( -1,712 )
//			SetTaskDone( -1,713 )
//			SetTaskDone( -1,714 )
//			SetTaskDone( -1,715 )
//			SetTaskDone( -1,716 )
//			SetTaskDone( -1,717 )
//			SetTaskDone( -1,718 )
//			SetTaskDone( -1,719 )
//			SetTaskDone( -1,720 )
//			SetTaskDone( -1,721 )
//			SetTaskDone( -1,722 )
//			
//			SetTaskDone( -1,727 )
//			SetTaskDone( -1,728 )
//			SetTaskDone( -1,729 )
//			SetTaskDone( -1,730 )
//			SetTaskDone( -1,731 )
//			SetTaskDone( -1,732 )
//			SetTaskDone( -1,733 )
//			SetTaskDone( -1,734 )
//			SetTaskDone( -1,735 )
//			SetTaskDone( -1,736 )
//			SetPlayerVar(-1 ,12 , 1)
//			
//			FlyToMap( -1 ,119 ,28 ,24 )
//			
//		else
//			FlyToMap( -1 ,119 ,28 ,24 )
//		endif
//
//	}