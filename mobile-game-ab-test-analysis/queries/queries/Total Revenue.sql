-- Total Revenue
SELECT
  testgroup,
  SUM(revenue) as total_revenue
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;