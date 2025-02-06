use ipl_yt;

select * from auction 
limit 10;

select count(*) from auction
where category='National';

select count(*) from auction
where category='International';

select count(*) from auction;



alter table auction change column `Player Name`  `Player` varchar(15) ;

alter table auction
change column `Base_bid` `Base_bid_in_cr` float;

alter table auction
change column `Win_bid` `Win_bid_in_cr` float;

alter table auction 
change column `Cap`  `Capped` varchar(15);


select team, sum(win_bid_in_cr)
from auction
group by team;