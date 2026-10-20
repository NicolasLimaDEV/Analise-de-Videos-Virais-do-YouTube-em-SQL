-- PERGUNTA: Quais categorias de vídeos possuem a maior taxa de viralização?
SELECT
    category,
    ROUND(AVG(viral) * 100, 2) AS taxa_viralizacao
FROM
    youtube_videos
GROUP BY
    category
ORDER BY
    taxa_viralizacao DESC
LIMIT 100
-- RESPOSTA: A categoria Música apresenta a maior taxa de viralização, com 75% dos vídeos classificados como virais nesta base de dados.

-- PERGUNTA: Qual é a média de visualizações dos vídeos por categoria?
SELECT
    category,
    ROUND(AVG(REPLACE(views, '.', '')::BIGINT), 2) AS media_visualizacoes
FROM
    youtube_videos
GROUP BY
    category
ORDER BY
    media_visualizacoes DESC
LIMIT 100
-- RESPOSTA: A categoria Music apresenta a maior média de visualizações, com aproximadamente 3.531.307 visualizações por vídeo.

-- PERGUNTA: Em qual dia da semana são publicados mais vídeos?
SELECT
    upload_day AS dia_semana,
    COUNT(*) AS quantidade_videos
FROM
    youtube_videos
GROUP BY
    upload_day
ORDER BY
    quantidade_videos DESC;
-- RESPOSTA: Segunda-feira é o dia com mais vídeos publicados no dataset, totalizando 1.751 vídeos
