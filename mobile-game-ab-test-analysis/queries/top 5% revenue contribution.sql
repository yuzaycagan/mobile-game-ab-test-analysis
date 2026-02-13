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