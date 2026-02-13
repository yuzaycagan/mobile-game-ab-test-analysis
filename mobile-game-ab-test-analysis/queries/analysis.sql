-- Conversion Rate
SELECT
  testgroup,
  COUNTIF(revenue > 0) as paying_users,
  COUNT(*) as total_users,
  COUNTIF(revenue > 0) / COUNT(*) as conversion_rate
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup

-- ARPU
SELECT
  testgroup,
  SUM(revenue) / COUNT(*) as arpu
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup

-- Total Revenue
SELECT
  testgroup,
  SUM(revenue) as total_revenue
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup

-- median and avg revenue of payers
select testgroup,
  count(*) as payers,
  round(avg(revenue),2) as avg_revenue_per_payer,
  max(revenue) as max_revenue,
  approx_quantiles(revenue, 4)[offset(2)] as median_revenue,
from `mobile-game-1-487012.Gamelytics1.events`
where revenue>0
group by testgroup

-- top 5% revenue contribution

with ranked as(
    select
      testgroup, revenue,
      ntile(20) over (partition by testgroup order by revenue desc) as bucket
    from `mobile-game-1-487012.Gamelytics1.events`
    where revenue > 0
)

select
  testgroup,
  sum(case when bucket = 1 then revenue else 0 end) / sum(revenue) as top_5_percent_share
from ranked
group by testgroup
