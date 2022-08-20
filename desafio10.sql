SELECT
  songTable.song_name as nome, COUNT(historyTable.user_id) as reproducoes
FROM
  SpotifyClone.user as userTable
LEFT JOIN
  SpotifyClone.plan as planTable
  ON
    userTable.plan_id = planTable.plan_id
RIGHT JOIN
  SpotifyClone.user_song_history as historyTable
  ON
    historyTable.user_id = userTable.user_id
LEFT JOIN
  SpotifyClone.song as songTable
  ON
    songTable.song_id = historyTable.song_id
WHERE
  userTable.plan_id IN (1, 3)
GROUP BY
  historyTable.song_id
ORDER BY
  songTable.song_name;
