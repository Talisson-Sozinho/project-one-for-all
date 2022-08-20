SELECT
  artistTable.artist_name as artista,
	albumTable.album_name as album,
  COUNT(connectionTable.user_id) as seguidores
FROM
  SpotifyClone.artist as artistTable
RIGHT JOIN
  SpotifyClone.album as albumTable
  ON
    artistTable.artist_id = albumTable.artist_id
LEFT JOIN
  SpotifyClone.connection_artist_user as connectionTable
  ON
    connectionTable.artist_id = artistTable.artist_id
GROUP BY
  artistTable.artist_id, albumTable.album_id
ORDER BY
  seguidores DESC, artista, album;
