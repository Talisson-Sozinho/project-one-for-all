SELECT 
  COUNT( songTable.song_id) AS cancoes,
	COUNT( DISTINCT albumTable.artist_id) as artistas,
  COUNT( DISTINCT albumTable.album_id) as albuns
FROM 
  SpotifyClone.album as albumTable
LEFT JOIN 
  SpotifyClone.song as songTable
  ON 
    albumTable.album_id = songTable.album_id;
