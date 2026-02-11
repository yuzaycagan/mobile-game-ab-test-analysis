-- Conversion Rate
SELECT
  testgroup,
  COUNTIF(revenue > 0) as paying_users,
  COUNT(*) as total_users,
  COUNTIF(revenue > 0) / COUNT(*) as conversion_rate
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;

-- ARPU
SELECT
  testgroup,
  SUM(revenue) / COUNT(*) as arpu
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;

-- Total Revenue
SELECT
  testgroup,
  SUM(revenue) as total_revenue
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;