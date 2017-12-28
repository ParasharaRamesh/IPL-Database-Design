/*simple*/

/*q1 (select all umpires from australia )*/
select * from umpire where nationality='Australia';
/*q2 (select all head coaches with experience greater than 5 years and works for RCB)*/
select * from coach where role='Head coach' and team_id='RCB' and experience>5;
/*q3 (select average salary of all indian batsmen)*/
select avg(salary) as avg_salary from player where category_id='Batsman' and nationality='India';
/*q4(select  minimum salary of players from each country )*/
select min(salary),nationality from player group by nationality;
/*q5 (name all the match no's which was played at chinaswamy stadium)*/
select m_no from fixture,team where hometeam_id=t_id and homeground='M Chinnaswamy Std';
/*q6 (name all the teams with right arm off spinners who have a skill level greater than or equal to 75)*/
select distinct  team.name from team,player where team_id=t_id and skilllevel>=75 and bowling_id='Right Arm Off Spin';
/*q7 (select names of all teams with greater than or equal to 2 owners)*/
select distinct team.name from team,owner group by owner.team_id having count(*)>=2;


/*hard*/
/*q1 (select the country represented by the most number of spinners */
select count(*),nationality from player where bowling_id LIKE '%Spin%' group by nationality ORDER BY count(*) DESC limit 1;
/*q2 (select the number of players in each team */
select count(*),team_id from player group by team_id;
/*q3 (select the season in which the most number of tweets were posted */
select tweets,s_no,s_year from season where tweets in (select max(tweets) from season);
/* q4(select all the teams which have more than two coaches) */
select team.name from coach,team  where team_id=t_id group by team_id having count(*)>2;
/*q5 (select all the match numbers umpired by 'Simon Taufel' and resulted in a win) */
select distinct m_no from fixture,result where ump1_id in(select u_id from umpire where u_name='Simon Taufel') or ump2_id in (select u_id from umpire where u_name='Simon Taufel') and fixture.result=result.res_id and result.type='Home Team won';
/*q6 (select all the players who captain a side and also keep wickets) */
select * from player where (jersey_no,team_id) in (select wk_id,t_id from team where wk_id=captain_id);
/*q7(select teams who have more than 3 players whose age > 30)*/
select name from team where t_id in (select player.team_id from player where age>30 group by player.team_id having count(*)>3);
/*q8(select the owner of the winning team of match no 1)*/
select name from coach where team_id in (select hometeam_id from fixture where m_no = 1 and result='W') union (select guestteam_id from fixture where m_no=1 and result='L');
