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
INSERT INTO aluno (
        id_turma,
        nome,
        email,
        ra,
        hash_senha,
        pontuacao_geral
    )
VALUES (
        1,
        'Bruno Carvalho',
        'bruno.carvalho@p4ed.com',
        '21.123-4',
        '$2a$14$.AZqkriN0YBDzFbR5Qa5tun1rGCnolB97L5zNM7fZlQw2faXiB3wu',
        150000
    ),
    (
        1,
        'Larissa Mendes',
        'larissa.mendes@p4ed.com',
        '21.124-5',
        '$2a$14$klW5NqFz68yzOCkU1aXBD.N3rxMJj7M/8b7gFanns0DzPZ9iVwo4m',
        300000
    ),
    (
        2,
        'Gabriel Rocha',
        'gabriel.rocha@p4ed.com',
        '21.125-6',
        '$2a$14$sgOKse2OTg2Hq6gnUBeG7e4sNs6zZsH/Qp.GYYfQiNBbIFoV.sG4y',
        50000
    ),
    (
        2,
        'Juliana Teixeira',
        'juliana.teixeira@p4ed.com',
        '21.126-7',
        '$2a$14$WnHm5k4aJW48y6QXqfmORO2LE9ZITTZT6/mk6dXH.Tvn6UZWax99m',
        100000
    ),
    (
        3,
        'Vinícius Almeida',
        'vinicius.almeida@p4ed.com',
        '21.127-8',
        '$2a$14$YMB1O9PQuL6tltMMNM0rneN/0uL9VevbJyJ53iTbab.x0z4LapRWu',
        750000
    ),
    (
        3,
        'Rafaela Santos',
        'rafaela.santos@p4ed.com',
        '21.128-9',
        '$2a$14$Tv9haLv9CAQ7eL5ECxZwW.61HUo6UmYAq7O5ifGjACHm5hWi3JS/.',
        250000
    ),
    (
        4,
        'Pedro Henrique',
        'pedro.henrique@p4ed.com',
        '21.129-0',
        '$2a$14$I0MXj0IF8rOKDQEsQtqR1ewy6qZYHQTSgf7UW.WD7.uViouQ5OX6u',
        500000
    ),
    (
        4,
        'Amanda Costa',
        'amanda.costa@p4ed.com',
        '21.130-1',
        '$2a$14$fROhUtWk2YM2PWVy4kVhS.KMSwPWBOkEQQ.43PFGrqTiQEt3IphLG',
        1000000
    ),
    (
        5,
        'Lucas Nogueira',
        'lucas.nogueira@p4ed.com',
        '21.131-2',
        '$2a$14$v2dSo88KOPFrTThVuubS8uiT9rEZfcpRzSLcQ1q5dRl7EKwIc4I7m',
        400000
    ),
    (
        5,
        'Isabela Martins',
        'isabela.martins@p4ed.com',
        '21.132-3',
        '$2a$14$BK0v8lWogOwF7zBpV1CuUeZ1PpZWo5PQXghGBe7V4dLOTdj97NhYe',
        100000
    );