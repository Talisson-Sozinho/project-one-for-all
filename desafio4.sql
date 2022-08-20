SELECT
  user_name as usuario,
	IF( YEAR( MAX(userHistoryTable.played_datetime)) >= 2021, 
    'Usuário ativo', 'Usuário inativo' ) AS status_usuario
FROM
  SpotifyClone.user AS userTable
RIGHT JOIN
  SpotifyClone.user_song_history AS userHistoryTable
  ON
    userTable.user_id = userHistoryTable.user_id
GROUP BY
  userHistoryTable.user_id
ORDER BY
  usuario;
