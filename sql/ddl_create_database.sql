-- Script MySQL DDL para criar o banco de dados e as tabelas
-- Apagar o banco de dados caso exista (para recriação)
DROP DATABASE IF EXISTS jogo_do_notao_db;
-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS jogo_do_notao_db;
USE jogo_do_notao_db;
-- ---------------------------------------------------------
-- Criar as tabelas:
-- Tabela Professor
CREATE TABLE professor (
    -- Colunas:
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    hash_senha CHAR(64) NOT NULL,
    descricao VARCHAR(100) NULL,
    -- se possui permissões de gerenciar outros professores
    coordenador BOOLEAN NOT NULL,
    -- Validações:
    -- domínio do email
    CONSTRAINT check_email CHECK (email LIKE '%@sistemapoliedro.com.br')
);
-- Tabela Turma
CREATE TABLE turma (
    id_turma INT PRIMARY KEY,
    professor_responsavel INT,
    FOREIGN KEY (professor_responsavel) REFERENCES professor (id_professor),
    nome VARCHAR(45) NOT NULL,
    serie INT NOT NULL,
    descricao VARCHAR(60) NOT NULL
);
CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma (id_turma),
    nome VARCHAR (300) NOT NULL,
    email VARCHAR (80) NOT NULL,
    ra CHAR (8) NOT NULL,
    hash_senha CHAR (6) NOT NULL,
    pontuacao_geral BIGINT NULL
);
CREATE TABLE materia (
    id_materia INT PRIMARY KEY,
    nome VARCHAR (30) NOT NULL
);
CREATE TABLE pontuacao_materia (
    id_aluno INT,
    id_materia INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia),
    PRIMARY KEY (id_aluno, id_materia),
    pontuacao BIGINT NOT NULL
);
CREATE TABLE pergunta (
    id_pergunta INT PRIMARY KEY,
    id_materia INT,
    criador INT,
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia),
    FOREIGN KEY (criador) REFERENCES professor (id_professor),
    titulo VARCHAR(100) NOT NULL,
    dificuldade ENUM('Facil', 'Medio', 'Dificil') NOT NULL,
    dica VARCHAR(100) NOT NULL
);
CREATE TABLE partida (
    id_partida INT PRIMARY KEY,
    id_aluno INT,
    id_materia INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
    FOREIGN KEY (id_materia) REFERENCES materia (id_materia),
    status ENUM(
        'Em andamento',
        'Perdida',
        'Concluida',
        'Abandonada'
    ) NOT NULL,
    rodada TINYINT NOT NULL,
    pontuacao_acumulada INT NULL,
    pontuacao_checkpoint INT NULL,
    ajuda_eliminar TINYINT NULL,
    ajuda_dica TINYINT NULL,
    ajuda_pular TINYINT NULL
);
CREATE TABLE pergunta_partida (
    id_pergunta INT,
    id_partida INT,
    FOREIGN KEY (id_pergunta) REFERENCES pergunta (id_pergunta),
    FOREIGN KEY (id_partida) REFERENCES partida (id_partida),
    rodada TINYINT,
    PRIMARY KEY (rodada, id_partida)
);