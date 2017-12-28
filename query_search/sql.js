
	var opt;
	function selecttable()
	{
		var search=document.getElementById("doSearch");
		var x = document.getElementById("mySelect");
		opt=x.options[x.selectedIndex].text;
	}
	function selectq()
	{
		var search=document.getElementById("doSearch");
		switch(opt)
		{
			case 'coach':
				search.value='select * from coach';
				break;
			case 'fixture':
				search.value='select * from fixture';
				break;
			case 'owner':
				search.value='select * from owner';
				break;
			case 'player':
				search.value='select * from player';
				break;
			case 'result':
				search.value='select * from result';
				break;
			case 'season':
				search.value='select * from season';
				break;
			case 'team':
				search.value='select * from team';
				break;
			case 'umpire':
				search.value='select * from umpire';
				break;
		}
	}
	function insert()
	{
		var search=document.getElementById("doSearch");
		switch(opt)
		{
			case 'coach':
				search.value='INSERT INTO `coach`(`c_id`, `name`, `role`, `experience`, `team_id`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5])';
				break;
			case 'fixture':
				search.value='INSERT INTO `fixture`(`m_no`, `date`, `time`, `ump1_id`, `ump2_id`, `result`, `hometeam_id`, `guestteam_id`, `MOM_id`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])';
				break;
			case 'owner':
				search.value='INSERT INTO `owner`(`o_id`, `name`, `team_id`) VALUES ([value-1],[value-2],[value-3])';
				break;
			case 'player':
				search.value='INSERT INTO `player`(`jersey_no`, `name`, `runs`, `nationality`, `age`, `average`, `strike_rate`, `catches`, `wickets`, `salary`, `category_id`, `batting_id`, `bowling_id`, `team_id`, `fours`, `sixes`, `skilllevel`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17])';
				break;
			case 'result':
				search.value='INSERT INTO `result`(`res_id`, `type`) VALUES ([value-1],[value-2])';
				break;
			case 'season':
				search.value='INSERT INTO `season`(`s_no`, `s_year`, `matches`, `sponsor`, `runs`, `wickets`, `catches`, `fours`, `sixes`, `tweets`, `winteam_id`, `MVP_id`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12])';
				break;
			case 'team':
				search.value='INSERT INTO `team`(`t_id`, `name`, `city`, `sponsor`, `spending`, `homeground`, `coach_id`, `owner`, `captain_id`, `wk_id`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10])';
				break;
			case 'umpire':
				search.value='INSERT INTO `umpire`(`u_id`, `u_name`, `nationality`) VALUES ([value-1],[value-2],[value-3])';
				break;
		}
	}
	function update()
	{
		var search=document.getElementById("doSearch");
		switch(opt)
		{
			case 'coach':
				search.value='UPDATE `coach` SET `c_id`=[value-1],`name`=[value-2],`role`=[value-3],`experience`=[value-4],`team_id`=[value-5] WHERE 1';
				break;
			case 'fixture':
				search.value='UPDATE `fixture` SET `m_no`=[value-1],`date`=[value-2],`time`=[value-3],`ump1_id`=[value-4],`ump2_id`=[value-5],`result`=[value-6],`hometeam_id`=[value-7],`guestteam_id`=[value-8],`MOM_id`=[value-9] WHERE 1';
				break;
			case 'owner':
				search.value='UPDATE `owner` SET `o_id`=[value-1],`name`=[value-2],`team_id`=[value-3] WHERE 1';
				break;
			case 'player':
				search.value='UPDATE `player` SET `jersey_no`=[value-1],`name`=[value-2],`runs`=[value-3],`nationality`=[value-4],`age`=[value-5],`average`=[value-6],`strike_rate`=[value-7],`catches`=[value-8],`wickets`=[value-9],`salary`=[value-10],`category_id`=[value-11],`batting_id`=[value-12],`bowling_id`=[value-13],`team_id`=[value-14],`fours`=[value-15],`sixes`=[value-16],`skilllevel`=[value-17] WHERE 1';
				break;
			case 'result':
				search.value='UPDATE `result` SET `res_id`=[value-1],`type`=[value-2] WHERE 1';
				break;
			case 'season':
				search.value='UPDATE `season` SET `s_no`=[value-1],`s_year`=[value-2],`matches`=[value-3],`sponsor`=[value-4],`runs`=[value-5],`wickets`=[value-6],`catches`=[value-7],`fours`=[value-8],`sixes`=[value-9],`tweets`=[value-10],`winteam_id`=[value-11],`MVP_id`=[value-12] WHERE 1';
				break;
			case 'team':
				search.value='UPDATE `team` SET `t_id`=[value-1],`name`=[value-2],`city`=[value-3],`sponsor`=[value-4],`spending`=[value-5],`homeground`=[value-6],`coach_id`=[value-7],`owner`=[value-8],`captain_id`=[value-9],`wk_id`=[value-10] WHERE 1';
				break;
			case 'umpire':
				search.value='UPDATE `umpire` SET `u_id`=[value-1],`u_name`=[value-2],`nationality`=[value-3] WHERE 1';
				break;
		}
	}
	//onclick="selectteam()"