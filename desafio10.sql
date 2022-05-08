SELECT 
    musica AS nome, COUNT(data_reproducao) AS reproducoes
FROM
    SpotifyClone.musicas AS m
        INNER JOIN
    SpotifyClone.historico AS h ON m.musica_id = h.musica_id
        INNER JOIN
    SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE
    u.plano_id IN (1 , 3)
GROUP BY musica
ORDER BY musica;