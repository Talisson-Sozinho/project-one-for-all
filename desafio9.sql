SELECT
  COUNT(song_id) as quantidade_musicas_no_historico
FROM
  SpotifyClone.user as userTable
LEFT JOIN
  SpotifyClone.user_song_history as userHistoryTable
  ON
    userHistoryTable.user_id = userTable.user_id
WHERE
  userTable.user_name = "Barbara Liskov";
