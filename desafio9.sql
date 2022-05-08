SELECT 
    COUNT(musica_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico AS h
        INNER JOIN
    SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
WHERE
    usuario = 'Bill'
GROUP BY usuario;