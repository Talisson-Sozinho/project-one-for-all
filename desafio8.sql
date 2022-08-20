SELECT
  artist_name as artista, album_name as album 
FROM
  SpotifyClone.artist as artistTable
LEFT JOIN
  SpotifyClone.album as albumTable
  ON
    artistTable.artist_id =  albumTable.artist_id
WHERE
  artist_name = "Elis Regina"
ORDER BY 
  album_name;
