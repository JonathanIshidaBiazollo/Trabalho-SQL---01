-- 1. Criação e Seleção da Base de Dados
DROP DATABASE spotifalso;
CREATE DATABASE IF NOT EXISTS Spotifalso;
USE Spotifalso;

-- 2. Criação das Tabelas de Domínio
CREATE TABLE nacionalidade (
    id_nacionalidade INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE idioma (
    id_idioma INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_album (
    id_tipo_album INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- 3. Criação das Tabelas Principais
CREATE TABLE artista (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,
    id_nacionalidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    em_atividade TINYINT DEFAULT 1 NOT NULL, -- 1 = Sim, 0 = Não
    esta_vivo TINYINT DEFAULT 1 NOT NULL,    -- 1 = Vivo, 0 = Falecido
    CONSTRAINT fk_artista_nacionalidade FOREIGN KEY (id_nacionalidade) REFERENCES nacionalidade(id_nacionalidade)
);

CREATE TABLE album (
    id_album INT AUTO_INCREMENT PRIMARY KEY,
    id_genero INT NOT NULL,
    id_tipo_album INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    data_lancamento DATE NOT NULL, 
    duracao_total INT DEFAULT 0 NOT NULL,
    qtd_musicas INT DEFAULT 0 NOT NULL, 
    CONSTRAINT fk_album_genero FOREIGN KEY (id_genero) REFERENCES genero(id_genero),
    CONSTRAINT fk_album_tipo FOREIGN KEY (id_tipo_album) REFERENCES tipo_album(id_tipo_album)
);

CREATE TABLE musica (
    id_musica INT AUTO_INCREMENT PRIMARY KEY,
    id_album INT,          -- Deixado sem NOT NULL propositalmente para os Singles (LEFT JOIN)
    id_artista INT NOT NULL, -- NOVO: Ligação direta do artista principal com a música
    id_genero INT NOT NULL,
    id_idioma INT NOT NULL, 
    numero TINYINT,        -- Removido o NOT NULL (Singles não têm número de faixa)
    titulo VARCHAR(100) NOT NULL,
    data_lancamento DATE NOT NULL, 
    duracao INT NOT NULL, 
    explicita TINYINT DEFAULT 0 NOT NULL,
    CONSTRAINT fk_musica_album FOREIGN KEY (id_album) REFERENCES album(id_album),
    CONSTRAINT fk_musica_artista FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
    CONSTRAINT fk_musica_genero FOREIGN KEY (id_genero) REFERENCES genero(id_genero),
    CONSTRAINT fk_musica_idioma FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma)
);

-- 4. Playlists
CREATE TABLE playlist (
    id_playlist INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    qtd_musicas INT DEFAULT 0 NOT NULL,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE playlist_musica (
    id_playlist INT,
    id_musica INT,
    data_adicao DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (id_playlist, id_musica),
    CONSTRAINT fk_pm_playlist FOREIGN KEY (id_playlist) REFERENCES playlist(id_playlist),
    CONSTRAINT fk_pm_musica FOREIGN KEY (id_musica) REFERENCES musica(id_musica)
);