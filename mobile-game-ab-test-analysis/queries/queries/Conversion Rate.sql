-- Conversion Rate
SELECT
  testgroup,
  COUNTIF(revenue > 0) as paying_users,
  COUNT(*) as total_users,
  COUNTIF(revenue > 0) / COUNT(*) as conversion_rate
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;

