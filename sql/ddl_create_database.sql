-- Script MySQL DDL para criar o banco de dados e as tabelas
-- Apagar o banco de dados caso exista (para recriação)
DROP DATABASE IF EXISTS jogo_do_notao_db;
-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS jogo_do_notao_db;
USE jogo_do_notao_db;
-- ---------------------------------------------------------
-- Criar as tabelas:
-- Tabela Professor
CREATE TABLE IF NOT EXISTS professor (
    -- Colunas:
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    hash_senha CHAR(64) NOT NULL,
    descricao VARCHAR(100) NULL,
    -- se possui permissões de gerenciar outros professores
    coordenador BOOLEAN NOT NULL DEFAULT FALSE,
    -- Validações:
    -- domínio do email
    CONSTRAINT check_email_professor CHECK (email LIKE '%@sistemapoliedro.com.br')
);
-- Tabela Turma
CREATE TABLE IF NOT EXISTS turma (
    -- Colunas:
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    professor_responsavel INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    serie INT NOT NULL,
    descricao VARCHAR(60) NOT NULL,
    -- FKs:
    FOREIGN KEY (professor_responsavel) REFERENCES professor (id_professor)
);
-- Tabela Aluno
CREATE TABLE IF NOT EXISTS aluno (
    -- Colunas:
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    id_turma INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    ra CHAR(8) NOT NULL UNIQUE,
    hash_senha CHAR(64) NOT NULL,
    pontuacao_geral BIGINT DEFAULT 0,
    -- FKs:
    FOREIGN KEY (id_turma) REFERENCES turma (id_turma),
    -- Validações:
    CONSTRAINT check_email_aluno CHECK (email LIKE '%@p4ed.com')
);
-- Tabela Matéria
CREATE TABLE IF NOT EXISTS materia (
    -- Colunas:
    id_materia INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);
-- Tabela associativa entre Aluno e Matéria
CREATE TABLE IF NOT EXISTS pontuacao_materia (
    -- Colunas:
    id_aluno INT NOT NULL,
    id_materia INT NOT NULL,
    pontuacao BIGINT DEFAULT 0,
    -- PK composta
    PRIMARY KEY (id_aluno, id_materia),
    -- FKs:
    FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia)
);
-- Tabela Pergunta
CREATE TABLE IF NOT EXISTS pergunta (
    -- Colunas:
    id_pergunta INT PRIMARY KEY AUTO_INCREMENT,
    id_materia INT NOT NULL,
    criador INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    dificuldade ENUM('Fácil', 'Médio', 'Difícil') NOT NULL,
    dica VARCHAR(200) NOT NULL,
    -- FKs:
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia),
    FOREIGN KEY (criador) REFERENCES professor (id_professor)
);
-- Tabela Alternativa
CREATE TABLE IF NOT EXISTS alternativa (
    -- Colunas:
    id_alternativa INT PRIMARY KEY AUTO_INCREMENT,
    id_pergunta INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    correta BOOLEAN NOT NULL DEFAULT FALSE,
    -- FKs:
    FOREIGN KEY (id_pergunta) REFERENCES pergunta (id_pergunta)
);
-- Tabela Edição-Pergunta
CREATE TABLE IF NOT EXISTS edicao_pergunta(
    -- Colunas:
    id_edicao_pergunta INT PRIMARY KEY AUTO_INCREMENT,
    id_pergunta INT NOT NULL,
    id_professor INT NOT NULL,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -- FKs:
    FOREIGN KEY (id_pergunta) REFERENCES pergunta (id_pergunta),
    FOREIGN KEY (id_professor) REFERENCES professor (id_professor)
);
-- Tabela Partida
CREATE TABLE IF NOT EXISTS partida (
    -- Colunas:
    id_partida INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    -- se for null, partida tem perguntas de todas as matérias
    id_materia INT NULL,
    -- status da partida
    status ENUM(
        'Em Andamento',
        'Não Concluída',
        'Ganha',
        'Perdida',
        'Abandonada'
    ) NOT NULL DEFAULT 'Não Concluída',
    -- rodada atual: entre 1 a 15
    rodada TINYINT NOT NULL,
    -- pontuacao da partida
    pontuacao_acumulada INT DEFAULT 0,
    pontuacao_checkpoint INT DEFAULT 0,
    -- uso de ajudas (máx 2)
    ajuda_eliminar TINYINT NULL,
    ajuda_dica TINYINT NULL,
    ajuda_pular TINYINT NULL,
    -- FKs:
    FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia),
    -- Validações:
    -- rodada esteja entre 1 e 15
    CONSTRAINT check_rodada CHECK (
        rodada >= 1
        AND rodada <= 15
    ),
    -- pontuacao seja um valor positivo
    CONSTRAINT check_pontuacao CHECK (
        pontuacao_acumulada >= 0
        AND pontuacao_checkpoint >= 0
    ),
    -- ajudas esteja entre 0 e 2
    CONSTRAINT check_valor_ajuda CHECK (
        ajuda_eliminar >= 0
        AND ajuda_eliminar <= 2
        AND ajuda_dica >= 0
        AND ajuda_dica <= 2
        AND ajuda_pular >= 0
        AND ajuda_pular <= 2
    )
);
-- Tabela associativa entre Pergunta e Partida
CREATE TABLE IF NOT EXISTS pergunta_partida (
    -- Colunas:
    id_pergunta INT NOT NULL,
    id_partida INT NOT NULL,
    -- rodada onde a pergunta foi feita na partida
    rodada TINYINT NOT NULL,
    -- PK composta
    PRIMARY KEY (id_partida, rodada),
    -- FKs:
    FOREIGN KEY (id_pergunta) REFERENCES pergunta (id_pergunta),
    FOREIGN KEY (id_partida) REFERENCES partida (id_partida)
);