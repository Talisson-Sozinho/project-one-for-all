SELECT
  songTable.song_name AS cancao,
	COUNT(songHistoryTable.song_id) AS reproducoes 
FROM
  SpotifyClone.user_song_history AS songHistoryTable
INNER JOIN
  SpotifyClone.song AS songTable
  ON
    songHistoryTable.song_id = songTable.song_id
GROUP BY
  songHistoryTable.song_id
ORDER BY
  reproducoes DESC, cancao
LIMIT 2;
