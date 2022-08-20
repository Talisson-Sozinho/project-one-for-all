SELECT
  userTable.user_name as usuario, 
  COUNT( historyTable.song_id ) as qt_de_musicas_ouvidas,
  ROUND(SUM( songTable.song_duration_seconds ) / 60, 2) as total_minutos
FROM
  SpotifyClone.user as userTable
RIGHT JOIN
  SpotifyClone.user_song_history as historyTable
  ON
    userTable.user_id = historyTable.user_id
LEFT JOIN
  SpotifyClone.song as songTable
  ON
    songTable.song_id = historyTable.song_id
GROUP BY 
  userTable.user_id
ORDER BY 
  usuario;
