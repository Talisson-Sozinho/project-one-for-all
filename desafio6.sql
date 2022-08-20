SELECT
  ROUND(MIN(plan_price), 2) as faturamento_minimo,
	ROUND(MAX(plan_price), 2) as faturamento_maximo,
  ROUND(AVG(plan_price), 2) as faturamento_medio,
  ROUND(SUM(plan_price), 2) as faturamento_total
FROM
  SpotifyClone.user as userTable
LEFT JOIN
  SpotifyClone.plan as planTable
  ON
    userTable.plan_id = planTable.plan_id;
