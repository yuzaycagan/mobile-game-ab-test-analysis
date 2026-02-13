
-- ARPU
SELECT
  testgroup,
  SUM(revenue) / COUNT(*) as arpu
FROM `mobile-game-1-487012.Gamelytics1.events`
GROUP BY testgroup;
