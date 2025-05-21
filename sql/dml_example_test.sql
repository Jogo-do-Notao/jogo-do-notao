-- Dados de exemplo para testes
USE jogo_do_notao_db;
-- ---------------------------------------------------
-- Observações: 
--      - Todas as senhas das contas de exemplo são o primeiro nome do usuário em minúsculo;
--      - As senhas devem ser codificadas usando o algoritmo BCrypt (https:// bcrypt-generator.com) com 14 rounds;
-- ---------------------------------------------------
-- Professores de exemplo
INSERT INTO professor (nome, email, hash_senha, descricao, coordenador)
VALUES(
        'Conta de Administrador',
        'admin@sistemapoliedro.com.br',
        '$2a$14$NRkBtc2yqhMHeVeXAdrHceXhXlImXDbkO8hGr.RpJh6pBz37uDFqW',
        'Exemplo de conta de administrador/coordenador',
        TRUE
    ),
    (
        'Ana Souza',
        'ana.souza@sistemapoliedro.com.br',
        '$2a$14$3eO2exkRHAJgDKdJPINiRe7Urdhqx1UV6HblLzSZlmKtKwnSMMTIu',
        'Professora de Língua Portuguesa do Ensino Médio',
        FALSE
    ),
    (
        'Carlos Oliveira',
        'carlos.oliveira@sistemapoliedro.com.br',
        '$2a$14$EsbwCM5dodNEc1WQZWwzgeh0aWf0PemjxRi2o.UhMpmHgWpx4MxXi',
        'Professor de Matemática do Ensino Fundamental II',
        FALSE
    ),
    (
        'Fernanda Lima',
        'fernanda.lima@sistemapoliedro.com.br',
        '$2a$14$7W/r4n91fsX5.wfz0fVc9eq91HqXH5D8ZJJb42kRQwXuc0pbMlEC2',
        'Professora de Ciências do Ensino Fundamental II',
        FALSE
    ),
    (
        'João Silva',
        'joao.silva@sistemapoliedro.com.br',
        '$2a$14$3JS4Oag8uGg8gSkf2FO4OuXGwDwnTLEDw0tOToX32RUkXQxpk/sGi',
        'Professor de História do Ensino Médio',
        FALSE
    ),
    (
        'Luciana Almeida',
        'luciana.almeida@sistemapoliedro.com.br',
        '$2a$14$DOQh5/hRZSLDmkhVB5n2OeGk0vYAqhgQ6GfgvjtuYUnbdZCIM0SI6',
        'Professora de Geografia do Ensino Médio',
        FALSE
    ),
    (
        'Roberto Martins',
        'roberto.martins@sistemapoliedro.com.br',
        '$2a$14$AmltJIoWrrlQkZ91I80iDekNvhiG0N74XF8oBFzXdVwKzEWPkoLMm',
        'Professor de Física do Ensino Médio',
        FALSE
    ),
    (
        'Marcos Pereira',
        'marcos.pereira@sistemapoliedro.com.br',
        '$2a$14$WevUnRp3uZ.uUPAZ5If.EObHoKF.Y/Ss/2ne7WTgPrtj2V/3XF90G',
        'Coordenador pedagógico da unidade Vila Mariana',
        TRUE
    ),
    (
        'Patrícia Ramos',
        'patricia.ramos@sistemapoliedro.com.br',
        '$2a$14$xXHlOd.LUwI6rVexOqAQdOEk529UAcO0BvVCfQMG4CIwbGtAYrl62',
        'Coordenadora administrativa da unidade Tatuapé',
        TRUE
    );
;
-- ---------------------------------------------------
-- Turmas de exemplo
INSERT INTO turma (professor_responsavel, nome, serie, descricao)
VALUES (
        1,
        '2025 - Vila Mariana - 2º EM - A',
        2,
        'Turma do 2º ano do Ensino Médio, turma A, unidade Vila Mariana'
    ),
    (
        2,
        '2025 - Vila Mariana - 9º EF - B',
        9,
        'Turma do 9º ano do Ensino Fundamental, turma B, unidade Vila Mariana'
    ),
    (
        4,
        '2025 - Tatuapé - 1º EM - A',
        1,
        'Turma do 1º ano do Ensino Médio, turma A, unidade Tatuapé'
    ),
    (
        6,
        '2025 - Tatuapé - 3º EM - A',
        3,
        'Turma do 3º ano do Ensino Médio, turma A, unidade Tatuapé'
    ),
    (
        3,
        '2025 - Vila Mariana - 8º EF - A',
        8,
        'Turma do 8º ano do Ensino Fundamental, turma A, unidade Vila Mariana'
    );
-- ---------------------------------------------------
-- Alunos de exemplo