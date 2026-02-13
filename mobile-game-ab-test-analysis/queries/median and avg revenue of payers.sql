-- median and avg revenue of payers
select testgroup,
  count(*) as payers,
  round(avg(revenue),2) as avg_revenue_per_payer,
  max(revenue) as max_revenue,
  approx_quantiles(revenue, 4)[offset(2)] as median_revenue,
from `mobile-game-1-487012.Gamelytics1.events`
where revenue>0
group by testgroup
