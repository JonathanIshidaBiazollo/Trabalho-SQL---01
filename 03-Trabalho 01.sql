/* ===============================================
Lista 05: TRABALHO 01
Aluno: Jonathan Ishida Biazollo
R.A.: 2032320
Turma: BCC-3B
Professor: Claúdio Jesus
=================================================*/

-- Exercício 1: Identifique o título e a duração das músicas que não são cantadas em inglês e que duram menos de 3 minutos.
	SELECT
		musica.titulo AS 'Música',
        musica.duracao AS 'Duração',
        idioma.descricao AS 'Idioma'
	FROM musica
    INNER JOIN idioma
		ON musica.id_idioma = idioma.id_idioma
    WHERE NOT idioma.descricao = 'Inglês' AND musica.duracao < 180;

-- Exercício 2: Liste o título e a duração total dos álbuns que pertencem aos gêneros 1, 2 ou 5, mas que possuem menos de 15 músicas.
	SELECT
		album.titulo AS 'Título do Album',
        album.duracao_total AS 'Duração total',
        genero.titulo AS 'Gênero',
        -- genero.id_genero AS 'ID do gênero',
        album.qtd_musicas AS 'Músicas'
	FROM album
    INNER JOIN genero
		ON album.id_genero = genero.id_genero
	WHERE genero.id_genero IN(1, 2, 5) AND album.qtd_musicas < 15;

-- Exercício 3: Um usuário está buscando uma música específica, mas lembra apenas de um detalhe ortográfico: o título possui a letra "y" como a última letra.
-- Apresente os títulos que correspondem a esse padrão.
	SELECT
		musica.titulo AS 'Música'
	FROM musica
    WHERE titulo LIKE '%Y';
    
-- Exercício 4: Recupere o título e a data de lançamento das músicas que NÃO foram lançadas entre os anos 2000 e 2005.
		SELECT
			musica.titulo AS 'Música',
            musica.data_lancamento AS 'Data de lançamento'
		FROM musica
        WHERE YEAR(musica.data_lancamento) NOT BETWEEN 2000 AND 2005;

-- Exercício 5: Calcule, em uma única consulta, a média de duração, a duração da faixa mais longa e o tempo total acumulado.
-- Considerando exclusivamente as músicas marcadas como explícitas.
	SELECT 
		AVG(musica.duracao) AS 'Média Duração',
        MAX(musica.duracao) AS 'Duração mais longa',
        COUNT(musica.duracao) AS 'Tempo total acumulado'
	FROM musica
    WHERE musica.explicita = 1;
		

-- Exercício 6: Apresente o código de cada álbum acompanhado da duração mais longa de uma música vinculada a ele.
-- Ao final, organize a tabela em ordem crescente, da menor duração para a maior duração.

-- Exercício 7: Exiba o código do idioma e a quantidade de músicas cadastradas, contabilizando apenas aquelas que ultrapassam a marca de 4 minutos.

-- Exercício 8: Agrupe as músicas pelo código do gênero e pelo status de conteúdo explícito, exibindo ambas as colunas junto com a média de duração para cada combinação.
-- PS: você pode inserir mais de uma coluna no agrupamento. Ao final, arredonde a média para duas casas decimais.

-- Exercício 9: Liste os códigos dos álbuns e a quantidade de músicas de cada um, mas exiba estritamente os álbuns cuja duração total somada ultrapasse 20 minutos.
-- Você deve usar obrigatoriamente a tabela "musica" para fazer esse exercício.

-- Exercício 10: Mostre o código do gênero e a quantidade de músicas não explícitas associadas a ele.
-- Filtre o resultado para apresentar apenas os gêneros que possuam 5 ou mais faixas com esse perfil seguro.