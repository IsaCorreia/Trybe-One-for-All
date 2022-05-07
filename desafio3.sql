SELECT 
    usuario,
    COUNT(historico.musica_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios,
    SpotifyClone.historico,
    SpotifyClone.musicas
WHERE
    historico.usuario_id = usuarios.usuario_id
        AND musicas.musica_id = historico.musica_id
GROUP BY usuario
ORDER BY usuario ASC;