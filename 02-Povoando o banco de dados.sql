USE Spotifalso;

-- =======================================================
-- 1. POVOANDO AS TABELAS DE DOMÍNIO
-- =======================================================
INSERT INTO nacionalidade (descricao) VALUES 
('Estados Unidos'), -- ID 1
('Brasil'),         -- ID 2
('Reino Unido'),    -- ID 3
('Canadá'),         -- ID 4
('Austrália'),      -- ID 5
('Suécia'),         -- ID 6
('Espanha'),        -- ID 7
('Porto Rico');     -- ID 8

INSERT INTO idioma (descricao) VALUES 
('Inglês'),    -- ID 1
('Português'), -- ID 2
('Espanhol'),  -- ID 3
('Mandarim'),  -- ID 4
('Russo'),     -- ID 5
('Italiano');  -- ID 6

INSERT INTO genero (titulo) VALUES 
('Stoner Rock'),          -- ID 1
('Emo / Rock'),           -- ID 2
('Pop Rock / Reggae'),    -- ID 3
('Rap / Hip Hop'),        -- ID 4
('Pop Punk'),             -- ID 5
('MPB / Soul'),           -- ID 6
('Grunge / Alternativo'), -- ID 7
('Reggaeton / Latino');   -- ID 8

INSERT INTO tipo_album (descricao) VALUES 
('Estúdio'), -- ID 1
('Ao Vivo'); -- ID 2

-- =======================================================
-- 2. CADASTRANDO OS ARTISTAS
-- =======================================================
INSERT INTO artista (id_nacionalidade, nome, em_atividade, esta_vivo) VALUES 
-- Originais
(1, 'Queens of the Stone Age', 1, 1), -- ID 1
(1, 'My Chemical Romance', 1, 1),     -- ID 2
(2, 'Skank', 0, 1),                   -- ID 3 
(2, 'Black Alien', 1, 1),             -- ID 4
(1, 'Paramore', 1, 1),                -- ID 5
(1, 'Doechii', 1, 1),                 -- ID 6
(2, 'Tim Maia', 0, 0),                -- ID 7 
(1, 'Nirvana', 0, 0),                 -- ID 8 
(1, 'The White Stripes', 0, 1),       -- ID 9 
(3, 'The Smiths', 0, 1),              -- ID 10 
(3, 'Coldplay', 1, 1),                -- ID 11 
(3, 'Arctic Monkeys', 1, 1),          -- ID 12 
(7, 'Rosalía', 1, 1),                 -- ID 13
(8, 'Bad Bunny', 1, 1);               -- ID 14

-- =======================================================
-- 3. CADASTRANDO OS ÁLBUNS
-- =======================================================
INSERT INTO album (id_genero, id_tipo_album, titulo, data_lancamento, duracao_total, qtd_musicas) VALUES 
(1, 1, 'Songs for the Deaf', '2002-08-27', 3560, 14),               -- ID 1 (QOTSA)
(2, 1, 'The Black Parade', '2006-10-23', 3111, 14),                 -- ID 2 (MCR)
(3, 2, 'MTV Ao Vivo em Ouro Preto', '2001-10-01', 4042, 17),        -- ID 3 (Skank)
(4, 1, 'Abaixo de Zero: Hello Hell', '2019-04-12', 1604, 9),        -- ID 4 (Black Alien)
(5, 1, 'Riot!', '2007-06-12', 2328, 11),                            -- ID 5 (Paramore)
(4, 1, 'Alligator Bites Never Heal', '2024-08-30', 2948, 19),       -- ID 6 (Doechii)
(8, 1, 'MOTOMAMI', '2022-03-18', 2540, 16),                         -- ID 7 (Rosalía)
(8, 1, 'Un Verano Sin Ti', '2022-05-06', 4890, 23);                 -- ID 8 (Bad Bunny)

-- =======================================================
-- 4. POVOANDO AS MÚSICAS DOS ÁLBUNS
-- =======================================================
-- ÁLBUM 1: QOTSA (Artista 1)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(1, 1, 1, 1, 1, 'You Think I Ain''t Worth a Dollar...', '2002-08-27', 192, 0),
(1, 1, 1, 1, 2, 'No One Knows', '2002-08-27', 278, 0),
(1, 1, 1, 1, 3, 'First It Giveth', '2002-08-27', 198, 0),
(1, 1, 1, 1, 4, 'A Song for the Dead', '2002-08-27', 352, 0),
(1, 1, 1, 1, 5, 'The Sky Is Fallin''', '2002-08-27', 375, 0),
(1, 1, 1, 1, 6, 'Six Shooter', '2002-08-27', 79, 1), 
(1, 1, 1, 1, 7, 'Hangin'' Tree', '2002-08-27', 186, 0),
(1, 1, 1, 1, 8, 'Go with the Flow', '2002-08-27', 187, 0),
(1, 1, 1, 1, 9, 'Gonna Leave You', '2002-08-27', 170, 0),
(1, 1, 1, 1, 10, 'Do It Again', '2002-08-27', 244, 0),
(1, 1, 1, 1, 11, 'God Is in the Radio', '2002-08-27', 364, 0),
(1, 1, 1, 1, 12, 'Another Love Song', '2002-08-27', 196, 0),
(1, 1, 1, 1, 13, 'A Song for the Deaf', '2002-08-27', 402, 1),
(1, 1, 1, 1, 14, 'Mosquito Song', '2002-08-27', 337, 0);

-- ÁLBUM 2: My Chemical Romance (Artista 2)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(2, 2, 2, 1, 1, 'The End.', '2006-10-23', 112, 0),
(2, 2, 2, 1, 2, 'Dead!', '2006-10-23', 195, 1),
(2, 2, 2, 1, 3, 'This Is How I Disappear', '2006-10-23', 239, 0),
(2, 2, 2, 1, 4, 'The Sharpest Lives', '2006-10-23', 200, 0),
(2, 2, 2, 1, 5, 'Welcome to the Black Parade', '2006-10-23', 311, 0),
(2, 2, 2, 1, 6, 'I Don''t Love You', '2006-10-23', 238, 0),
(2, 2, 2, 1, 7, 'House of Wolves', '2006-10-23', 184, 0),
(2, 2, 2, 1, 8, 'Cancer', '2006-10-23', 142, 0),
(2, 2, 2, 1, 9, 'Mama', '2006-10-23', 279, 0),
(2, 2, 2, 1, 10, 'Sleep', '2006-10-23', 283, 0),
(2, 2, 2, 1, 11, 'Teenagers', '2006-10-23', 161, 1),
(2, 2, 2, 1, 12, 'Disenchanted', '2006-10-23', 295, 0),
(2, 2, 2, 1, 13, 'Famous Last Words', '2006-10-23', 299, 0),
(2, 2, 2, 1, 14, 'Blood (Hidden Track)', '2006-10-23', 173, 0);

-- ÁLBUM 3: Skank (Artista 3)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(3, 3, 3, 2, 1, 'Fome e Vontade de Comer - Ao Vivo', '2001-10-01', 228, 0),
(3, 3, 3, 2, 2, 'É Uma Partida de Futebol - Ao Vivo', '2001-10-01', 211, 0),
(3, 3, 3, 2, 3, 'Esmola - Ao Vivo', '2001-10-01', 165, 0),
(3, 3, 3, 2, 4, 'Pacato Cidadão - Ao Vivo', '2001-10-01', 242, 0),
(3, 3, 3, 2, 5, 'Jackie Tequila - Ao Vivo', '2001-10-01', 272, 0),
(3, 3, 3, 2, 6, 'Acima do Sol - Ao Vivo', '2001-10-01', 245, 0),
(3, 3, 3, 2, 7, 'Balada do Amor Inabalável - Ao Vivo', '2001-10-01', 236, 0),
(3, 3, 3, 2, 8, 'Três Lados - Ao Vivo', '2001-10-01', 213, 0),
(3, 3, 3, 2, 9, 'Tão Seu - Ao Vivo', '2001-10-01', 233, 0),
(3, 3, 3, 2, 10, 'Saideira - Ao Vivo', '2001-10-01', 228, 0),
(3, 3, 3, 2, 11, 'Resposta - Ao Vivo', '2001-10-01', 250, 0),
(3, 3, 3, 2, 12, 'Te Ver - Ao Vivo', '2001-10-01', 211, 0),
(3, 3, 3, 2, 13, 'Estare Prendido En Tus Dedos - Ao Vivo', '2001-10-01', 256, 0),
(3, 3, 3, 2, 14, 'Tanto (I Want You) - Ao Vivo', '2001-10-01', 221, 0),
(3, 3, 3, 2, 15, 'Canção Noturna - Ao Vivo', '2001-10-01', 236, 0),
(3, 3, 3, 2, 16, 'Ali - Ao Vivo', '2001-10-01', 283, 0),
(3, 3, 3, 2, 17, 'Garota Nacional - Ao Vivo', '2001-10-01', 312, 0);

-- ÁLBUM 4: Black Alien (Artista 4)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(4, 4, 4, 2, 1, 'Área 51', '2019-04-12', 165, 1),
(4, 4, 4, 2, 2, 'Carta pra Amy', '2019-04-12', 262, 1),
(4, 4, 4, 2, 3, 'Vai Baby', '2019-04-12', 177, 0),
(4, 4, 4, 2, 4, 'Que Nem o Meu Cachorro', '2019-04-12', 211, 1),
(4, 4, 4, 2, 5, 'Take Ten', '2019-04-12', 153, 0),
(4, 4, 4, 2, 6, 'Au Revoir', '2019-04-12', 207, 0),
(4, 4, 4, 2, 7, 'Aniversário de Sobriedade', '2019-04-12', 164, 0),
(4, 4, 4, 2, 8, 'Jamais Serão', '2019-04-12', 178, 1),
(4, 4, 4, 2, 9, 'Capítulo Zero', '2019-04-12', 87, 0);

-- ÁLBUM 5: Paramore (Artista 5)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(5, 5, 5, 1, 1, 'For a Pessimist, I''m Pretty Optimistic', '2007-06-12', 228, 0),
(5, 5, 5, 1, 2, 'That''s What You Get', '2007-06-12', 220, 0),
(5, 5, 5, 1, 3, 'Hallelujah', '2007-06-12', 203, 0),
(5, 5, 5, 1, 4, 'Misery Business', '2007-06-12', 211, 0),
(5, 5, 5, 1, 5, 'When It Rains', '2007-06-12', 215, 0),
(5, 5, 5, 1, 6, 'Let the Flames Begin', '2007-06-12', 198, 0),
(5, 5, 5, 1, 7, 'Miracle', '2007-06-12', 209, 0),
(5, 5, 5, 1, 8, 'Crushcrushcrush', '2007-06-12', 189, 0),
(5, 5, 5, 1, 9, 'We Are Broken', '2007-06-12', 218, 0),
(5, 5, 5, 1, 10, 'Fences', '2007-06-12', 199, 0),
(5, 5, 5, 1, 11, 'Born for This', '2007-06-12', 238, 0);

-- ÁLBUM 6: Doechii (Artista 6)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(6, 6, 4, 1, 1, 'STANKA BUG', '2024-08-30', 145, 1),
(6, 6, 4, 1, 2, 'BULLFROG', '2024-08-30', 160, 1),
(6, 6, 4, 1, 3, 'DENIAL IS A RIVER', '2024-08-30', 130, 1),
(6, 6, 4, 1, 4, 'CATFISH', '2024-08-30', 140, 1),
(6, 6, 4, 1, 5, 'SKIPP', '2024-08-30', 150, 1),
(6, 6, 4, 1, 6, 'HIDE N SEEK', '2024-08-30', 165, 1),
(6, 6, 4, 1, 7, 'BLOOM', '2024-08-30', 155, 0),
(6, 6, 4, 1, 8, 'WAIT FOR IT', '2024-08-30', 135, 1),
(6, 6, 4, 1, 9, 'DEATH ROLL', '2024-08-30', 142, 1),
(6, 6, 4, 1, 10, 'PROFILES', '2024-08-30', 138, 1),
(6, 6, 4, 1, 11, 'NISSAN ALTIMA', '2024-08-30', 148, 1),
(6, 6, 4, 1, 12, 'BOOM BAP', '2024-08-30', 150, 1),
(6, 6, 4, 1, 13, 'FIREFLIES', '2024-08-30', 155, 0),
(6, 6, 4, 1, 14, 'BEVERLY HILLS', '2024-08-30', 160, 1),
(6, 6, 4, 1, 15, 'SLIDE', '2024-08-30', 165, 1),
(6, 6, 4, 1, 16, 'HOUND DOG', '2024-08-30', 170, 1),
(6, 6, 4, 1, 17, 'ALLIGATOR BITES NEVER HEAL', '2024-08-30', 175, 1),
(6, 6, 4, 1, 18, 'PROFIT', '2024-08-30', 180, 1),
(6, 6, 4, 1, 19, 'BOOBY TRAP', '2024-08-30', 185, 1);

-- ÁLBUM 7: Rosalía (Artista 13)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(7, 13, 8, 3, 1, 'SAOKO', '2022-03-18', 137, 1),
(7, 13, 8, 3, 2, 'CANDY', '2022-03-18', 193, 0),
(7, 13, 8, 3, 3, 'LA FAMA', '2021-11-11', 188, 0),
(7, 13, 8, 3, 4, 'BULERÍAS', '2022-03-18', 155, 0),
(7, 13, 8, 3, 5, 'CHICKEN TERIYAKI', '2022-03-18', 122, 0),
(7, 13, 8, 3, 6, 'HENTAI', '2022-03-18', 162, 1),
(7, 13, 8, 3, 7, 'BIZCOCHITO', '2022-03-18', 109, 0),
(7, 13, 8, 3, 8, 'G3 N15', '2022-03-18', 252, 0),
(7, 13, 8, 3, 9, 'MOTOMAMI', '2022-03-18', 61, 0),
(7, 13, 8, 3, 10, 'DIABLO', '2022-03-18', 165, 0),
(7, 13, 8, 3, 11, 'DELIRIO DE GRANDEZA', '2022-03-18', 155, 0),
(7, 13, 8, 3, 12, 'CUUUUuuuuuute', '2022-03-18', 150, 1),
(7, 13, 8, 3, 13, 'COMO UN G', '2022-03-18', 262, 0),
(7, 13, 8, 3, 14, 'Abcdefg', '2022-03-18', 65, 0),
(7, 13, 8, 3, 15, 'LA COMBI VERSACE', '2022-03-18', 160, 0),
(7, 13, 8, 3, 16, 'SAKURA', '2022-03-18', 191, 0);

-- ÁLBUM 8: Bad Bunny (Artista 14)
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(8, 14, 8, 3, 1, 'Moscow Mule', '2022-05-06', 245, 1),
(8, 14, 8, 3, 2, 'Me Porto Bonito', '2022-05-06', 178, 1),
(8, 14, 8, 3, 3, 'Tití Me Preguntó', '2022-05-06', 243, 1),
(8, 14, 8, 3, 4, 'Un Ratito', '2022-05-06', 176, 0),
(8, 14, 8, 3, 5, 'Yo No Soy Celoso', '2022-05-06', 230, 0),
(8, 14, 8, 3, 6, 'Tarot', '2022-05-06', 237, 1),
(8, 14, 8, 3, 7, 'Neverita', '2022-05-06', 173, 0),
(8, 14, 8, 3, 8, 'La Corriente', '2022-05-06', 198, 0),
(8, 14, 8, 3, 9, 'Efecto', '2022-05-06', 213, 0),
(8, 14, 8, 3, 10, 'Party', '2022-05-06', 227, 0),
(8, 14, 8, 3, 11, 'Aguacero', '2022-05-06', 210, 1),
(8, 14, 8, 3, 12, 'Enséñame a Bailar', '2022-05-06', 176, 0),
(8, 14, 8, 3, 13, 'Ojitos Lindos', '2022-05-06', 258, 0),
(8, 14, 8, 3, 14, 'Dos Mil 16', '2022-05-06', 208, 0),
(8, 14, 8, 3, 15, 'El Apagón', '2022-05-06', 194, 1),
(8, 14, 8, 3, 16, 'Otro Atardecer', '2022-05-06', 244, 0),
(8, 14, 8, 3, 17, 'Un Coco', '2022-05-06', 196, 0),
(8, 14, 8, 3, 18, 'Andrea', '2022-05-06', 339, 1),
(8, 14, 8, 3, 19, 'Me Fui de Vacaciones', '2022-05-06', 180, 0),
(8, 14, 8, 3, 20, 'Un Verano Sin Ti', '2022-05-06', 148, 0),
(8, 14, 8, 3, 21, 'Agosto', '2022-05-06', 139, 0),
(8, 14, 8, 3, 22, 'Callaíta', '2022-05-06', 250, 1),
(8, 14, 8, 3, 23, 'Safaera (Bonus)', '2022-05-06', 295, 1);


-- =======================================================
-- 5. OS SINGLES (Sem Álbum e Sem Número de Faixa)
-- =======================================================
INSERT INTO musica (id_album, id_artista, id_genero, id_idioma, numero, titulo, data_lancamento, duracao, explicita) VALUES 
(NULL, 1, 1, 1, NULL, 'Make It Wit Chu (Acoustic Single)', '2007-10-15', 290, 0),
(NULL, 2, 2, 1, NULL, 'Fake Your Death', '2014-02-17', 201, 0),
(NULL, 3, 3, 2, NULL, 'Algo Parecido', '2018-08-10', 234, 0),
(NULL, 4, 4, 2, NULL, 'Pique Peaky Blinders', '2022-03-24', 168, 1),
(NULL, 5, 5, 1, NULL, 'Decode', '2008-10-01', 262, 0),
(NULL, 6, 4, 1, NULL, 'Persuasive', '2022-03-18', 175, 1),
(NULL, 7, 6, 2, NULL, 'Descobridor dos Sete Mares', '1983-05-10', 265, 0),
(NULL, 7, 6, 2, NULL, 'Não Quero Dinheiro (Só Quero Amar)', '1971-04-01', 156, 0),
(NULL, 8, 7, 1, NULL, 'You Know You''re Right', '2002-10-08', 218, 0),
(NULL, 8, 7, 1, NULL, 'About a Girl (Live Acoustic)', '1994-10-24', 217, 0),
(NULL, 9, 1, 1, NULL, 'Seven Nation Army', '2003-03-07', 232, 0),
(NULL, 9, 1, 1, NULL, 'Fell In Love With a Girl', '2002-02-11', 110, 0),
(NULL, 10, 7, 1, NULL, 'There Is a Light That Never Goes Out', '1986-10-12', 242, 0),
(NULL, 11, 3, 1, NULL, 'Yellow', '2000-06-26', 269, 0),
(NULL, 11, 3, 1, NULL, 'Viva La Vida', '2008-05-25', 242, 0),
(NULL, 12, 7, 1, NULL, 'Do I Wanna Know?', '2013-06-19', 272, 0),
(NULL, 13, 8, 3, NULL, 'DESPECHÁ', '2022-07-28', 156, 0),
(NULL, 13, 8, 3, NULL, 'LLYLM', '2023-01-27', 182, 0),
(NULL, 14, 8, 3, NULL, 'DÁKITI', '2020-10-30', 205, 1),
(NULL, 14, 8, 3, NULL, 'Yonaguni', '2021-06-04', 206, 0);

-- =======================================================
-- 6. CRIANDO AS PLAYLISTS
-- =======================================================
INSERT INTO playlist (titulo, qtd_musicas) VALUES 
('Nostalgia Emo & Punk 2000s', 6),       
('Sessão Rap & Hip Hop', 6),             
('Rock Alternativo & Brasilidades', 5),  
('Treino Pesado (Metal)', 7),            
('Tranquilidade', 4);    

-- =======================================================
-- 7. ADICIONANDO MÚSICAS ÀS PLAYLISTS (Tabela N:N)
-- =======================================================
INSERT INTO playlist_musica (id_playlist, id_musica) VALUES 
-- Playlist 1: Nostalgia Emo & Punk 
(1, 16), (1, 19), (1, 25), (1, 56), (1, 58), (1, 62),
-- Playlist 2: Rap & Hip Hop 
(2, 46), (2, 49), (2, 51), (2, 76), (2, 77), (2, 82),
-- Playlist 3: Rock Alternativo & Brasilidades 
(3, 2), (3, 8), (3, 30), (3, 34), (3, 38),
-- Playlist 4: Treino Pesado
(4, 1), (4, 4), (4, 10), (4, 16), (4, 19), (4, 60), (4, 64),
-- Playlist 5: Tranquilidade 
(5, 14), (5, 43), (5, 50), (5, 39);