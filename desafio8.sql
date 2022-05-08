SELECT 
    artista, album
FROM
    SpotifyClone.artistas AS ar
        INNER JOIN
    SpotifyClone.albums AS al ON ar.artista_id = al.artista_id
    WHERE artista = 'Walter Phoenix'
ORDER BY album;