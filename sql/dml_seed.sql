-- Dados para semear o banco de dados com valores pré-definidos, como matérias e conta root
USE jogo_do_notao_db;
-- Matérias
INSERT INTO materia (nome)
VALUES ('Língua Portuguesa'),
    ('Matemática'),
    ('Biologia'),
    ('Física'),
    ('Química'),
    ('História'),
    ('Geografia'),
    ('Filosofia'),
    ('Sociologia'),
    ('Inglês'),
    ('Espanhol'),
    ('Arte'),
    ('Ciências (Fundamental)');
-- Conta root
INSERT INTO professor (nome, email, hash_senha, descricao, coordenador)
VALUES(
        'Conta de Administrador',
        'admin@sistemapoliedro.com.br',
        '$2a$14$NRkBtc2yqhMHeVeXAdrHceXhXlImXDbkO8hGr.RpJh6pBz37uDFqW',
        -- Senha 'admin'
        'Exemplo de conta de administrador/coordenador',
        TRUE
    );
-- Perguntas e Alternativas
-- O id_professor criador será 1 (Conta de Administrador) para todas as perguntas.
-- Língua Portuguesa (id_materia = 1)
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual é o antônimo da palavra "mal"?',
        'Fácil',
        'O oposto de algo ruim ou prejudicial.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Bom', FALSE),
    (@last_pergunta_id, 'Bem', TRUE),
    (@last_pergunta_id, 'Ruim', FALSE),
    (@last_pergunta_id, 'Mau', FALSE),
    (@last_pergunta_id, 'Péssimo', FALSE);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Na frase "O sol beijou o trigo maduro", qual figura de linguagem está presente?',
        'Médio',
        'Atribuição de características humanas a seres não humanos.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Metáfora', FALSE),
    (@last_pergunta_id, 'Hipérbole', FALSE),
    (@last_pergunta_id, 'Prosopopeia', TRUE),
    (@last_pergunta_id, 'Eufemismo', FALSE),
    (@last_pergunta_id, 'Ironia', FALSE);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Quem é o autor de "Dom Casmurro"?',
        'Médio',
        'Um dos maiores escritores da literatura brasileira, conhecido por seu realismo e ironia.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'José de Alencar', FALSE),
    (@last_pergunta_id, 'Machado de Assis', TRUE),
    (
        @last_pergunta_id,
        'Carlos Drummond de Andrade',
        FALSE
    ),
    (@last_pergunta_id, 'Graciliano Ramos', FALSE),
    (@last_pergunta_id, 'Clarice Lispector', FALSE);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das palavras abaixo é um substantivo abstrato?',
        'Fácil',
        'Nomeia sentimentos, qualidades, estados ou ações, que não existem por si próprios.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Cadeira', FALSE),
    (@last_pergunta_id, 'Livro', FALSE),
    (@last_pergunta_id, 'Saudade', TRUE),
    (@last_pergunta_id, 'Menino', FALSE),
    (@last_pergunta_id, 'Água', FALSE);
-- Matemática (id_materia = 2)
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o resultado da operação 15 + (3 x 2) - 4?',
        'Fácil',
        'Lembre-se da ordem das operações: multiplicação primeiro.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, '32', FALSE),
    (@last_pergunta_id, '17', TRUE),
    (@last_pergunta_id, '10', FALSE),
    (@last_pergunta_id, '29', FALSE),
    (@last_pergunta_id, '20', FALSE);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se um quadrado tem lado de 5 cm, qual é a sua área?',
        'Fácil',
        'A área do quadrado é o lado multiplicado por ele mesmo.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, '10 cm²', FALSE),
    (@last_pergunta_id, '20 cm²', FALSE),
    (@last_pergunta_id, '25 cm²', TRUE),
    (@last_pergunta_id, '15 cm²', FALSE),
    (@last_pergunta_id, '50 cm²', FALSE);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a raiz quadrada de 81?',
        'Fácil',
        'Qual número multiplicado por si mesmo resulta em 81?'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, '7', FALSE),
    (@last_pergunta_id, '8', FALSE),
    (@last_pergunta_id, '9', TRUE),
    (@last_pergunta_id, '10', FALSE),
    (@last_pergunta_id, '6', FALSE);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Um ângulo de 90 graus é chamado de ângulo...?',
        'Médio',
        'É o tipo de ângulo formado por duas retas perpendiculares.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Agudo', FALSE),
    (@last_pergunta_id, 'Obtuso', FALSE),
    (@last_pergunta_id, 'Reto', TRUE),
    (@last_pergunta_id, 'Raso', FALSE),
    (@last_pergunta_id, 'Completo', FALSE);
-- Biologia (id_materia = 3)
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual organela celular é responsável pela respiração celular e produção de ATP?',
        'Médio',
        'É conhecida como a "usina de energia" da célula.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Núcleo', FALSE),
    (@last_pergunta_id, 'Ribossomo', FALSE),
    (@last_pergunta_id, 'Mitocôndria', TRUE),
    (@last_pergunta_id, 'Lisossomo', FALSE),
    (@last_pergunta_id, 'Complexo de Golgi', FALSE);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Como é chamado o processo pelo qual as plantas produzem seu próprio alimento usando luz solar?',
        'Fácil',
        'Começa com "Foto" e envolve a síntese de compostos orgânicos.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Respiração', FALSE),
    (@last_pergunta_id, 'Transpiração', FALSE),
    (@last_pergunta_id, 'Fotossíntese', TRUE),
    (@last_pergunta_id, 'Digestão', FALSE),
    (@last_pergunta_id, 'Absorção', FALSE);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o nome do pigmento verde encontrado nas plantas, essencial para a fotossíntese?',
        'Médio',
        'Este pigmento capta a energia luminosa.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Carotenoide', FALSE),
    (@last_pergunta_id, 'Hemoglobina', FALSE),
    (@last_pergunta_id, 'Clorofila', TRUE),
    (@last_pergunta_id, 'Melanina', FALSE),
    (@last_pergunta_id, 'Antocianina', FALSE);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O sangue humano é classificado em diferentes tipos. Qual destes NÃO é um tipo sanguíneo principal?',
        'Médio',
        'Os tipos principais são A, B, AB e O.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'A', FALSE),
    (@last_pergunta_id, 'B', FALSE),
    (@last_pergunta_id, 'O', FALSE),
    (@last_pergunta_id, 'AB', FALSE),
    (@last_pergunta_id, 'C', TRUE);
-- Física (id_materia = 4)
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a unidade de medida da Força no Sistema Internacional (SI)?',
        'Fácil',
        'Homenageia um famoso cientista que formulou leis do movimento.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Watt (W)', FALSE),
    (@last_pergunta_id, 'Joule (J)', FALSE),
    (@last_pergunta_id, 'Newton (N)', TRUE),
    (@last_pergunta_id, 'Pascal (Pa)', FALSE),
    (
        @last_pergunta_id,
        'Metro por segundo (m/s)',
        FALSE
    );
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Quem formulou a Teoria da Relatividade Geral?',
        'Médio',
        'Um dos cientistas mais famosos do século XX, conhecido pela equação E=mc².'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Isaac Newton', FALSE),
    (@last_pergunta_id, 'Galileu Galilei', FALSE),
    (@last_pergunta_id, 'Albert Einstein', TRUE),
    (@last_pergunta_id, 'Nikola Tesla', FALSE),
    (@last_pergunta_id, 'Marie Curie', FALSE);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual das seguintes é uma fonte de energia renovável?',
        'Fácil',
        'É gerada a partir de recursos naturais que se reabastecem.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Petróleo', FALSE),
    (@last_pergunta_id, 'Carvão Mineral', FALSE),
    (@last_pergunta_id, 'Energia Solar', TRUE),
    (@last_pergunta_id, 'Gás Natural', FALSE),
    (@last_pergunta_id, 'Urânio', FALSE);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O fenômeno que ocorre quando a luz branca se decompõe em várias cores ao passar por um prisma é chamado de:',
        'Médio',
        'Forma um arco-íris de cores.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Reflexão', FALSE),
    (@last_pergunta_id, 'Refração', FALSE),
    (@last_pergunta_id, 'Dispersão', TRUE),
    (@last_pergunta_id, 'Difração', FALSE),
    (@last_pergunta_id, 'Absorção', FALSE);
-- Química (id_materia = 5)
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o símbolo químico do elemento Oxigênio?',
        'Fácil',
        'É uma única letra.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Og', FALSE),
    (@last_pergunta_id, 'Ox', FALSE),
    (@last_pergunta_id, 'O', TRUE),
    (@last_pergunta_id, 'H', FALSE),
    (@last_pergunta_id, 'N', FALSE);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a fórmula química da água?',
        'Fácil',
        'Combinação de dois átomos de hidrogênio e um de oxigênio.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'CO2', FALSE),
    (@last_pergunta_id, 'O2', FALSE),
    (@last_pergunta_id, 'H2O', TRUE),
    (@last_pergunta_id, 'NaCl', FALSE),
    (@last_pergunta_id, 'H2O2', FALSE);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é uma substância com pH 7?',
        'Médio',
        'Nem ácida, nem básica.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Ácida', FALSE),
    (@last_pergunta_id, 'Alcalina (Básica)', FALSE),
    (@last_pergunta_id, 'Neutra', TRUE),
    (@last_pergunta_id, 'Saturada', FALSE),
    (@last_pergunta_id, 'Corrosiva', FALSE);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual o gás mais abundante na atmosfera terrestre?',
        'Médio',
        'Compõe cerca de 78% do ar que respiramos.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Oxigênio (O2)', FALSE),
    (
        @last_pergunta_id,
        'Dióxido de Carbono (CO2)',
        FALSE
    ),
    (@last_pergunta_id, 'Nitrogênio (N2)', TRUE),
    (@last_pergunta_id, 'Hélio (He)', FALSE),
    (@last_pergunta_id, 'Argônio (Ar)', FALSE);
-- História (id_materia = 6)
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        6,
        1,
        'Em que ano ocorreu a Proclamação da República no Brasil?',
        'Médio',
        'No final do século XIX.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, '1500', FALSE),
    (@last_pergunta_id, '1822', FALSE),
    (@last_pergunta_id, '1889', TRUE),
    (@last_pergunta_id, '1930', FALSE),
    (@last_pergunta_id, '1964', FALSE);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        6,
        1,
        'Quem foi o líder da Revolução Francesa que se tornou Imperador da França?',
        'Difícil',
        'Conhecido por suas campanhas militares e reformas legais.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Robespierre', FALSE),
    (@last_pergunta_id, 'Luís XVI', FALSE),
    (@last_pergunta_id, 'Napoleão Bonaparte', TRUE),
    (@last_pergunta_id, 'Marquês de Lafayette', FALSE),
    (@last_pergunta_id, 'Danton', FALSE);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        6,
        1,
        'Qual evento é considerado o estopim para o início da Primeira Guerra Mundial?',
        'Médio',
        'Ocorreu em Sarajevo.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'A invasão da Polônia', FALSE),
    (
        @last_pergunta_id,
        'O ataque a Pearl Harbor',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O assassinato do arquiduque Francisco Ferdinando',
        TRUE
    ),
    (@last_pergunta_id, 'A Revolução Russa', FALSE),
    (@last_pergunta_id, 'A crise de 1929', FALSE);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        6,
        1,
        'Qual presidente brasileiro aboliu a escravidão com a Lei Áurea?',
        'Médio',
        'A lei foi assinada por uma princesa regente.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @last_pergunta_id,
        'Dom Pedro II (durante seu reinado)',
        TRUE
    ),
    (@last_pergunta_id, 'Getúlio Vargas', FALSE),
    (
        @last_pergunta_id,
        'Marechal Deodoro da Fonseca',
        FALSE
    ),
    (@last_pergunta_id, 'Prudente de Morais', FALSE),
    (@last_pergunta_id, 'Dom Pedro I', FALSE);
-- Geografia (id_materia = 7)
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o maior oceano do planeta Terra?',
        'Fácil',
        'Cobre mais de um terço da superfície da Terra.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Atlântico', FALSE),
    (@last_pergunta_id, 'Índico', FALSE),
    (@last_pergunta_id, 'Pacífico', TRUE),
    (@last_pergunta_id, 'Ártico', FALSE),
    (@last_pergunta_id, 'Antártico (Austral)', FALSE);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o país com a maior área territorial do mundo?',
        'Médio',
        'Localizado em dois continentes: Europa e Ásia.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Canadá', FALSE),
    (@last_pergunta_id, 'China', FALSE),
    (@last_pergunta_id, 'Rússia', TRUE),
    (@last_pergunta_id, 'Estados Unidos', FALSE),
    (@last_pergunta_id, 'Brasil', FALSE);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a capital da Argentina?',
        'Fácil',
        'Conhecida pelo tango e arquitetura europeia.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Santiago', FALSE),
    (@last_pergunta_id, 'Lima', FALSE),
    (@last_pergunta_id, 'Buenos Aires', TRUE),
    (@last_pergunta_id, 'Montevidéu', FALSE),
    (@last_pergunta_id, 'Bogotá', FALSE);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O Rio Amazonas deságua em qual oceano?',
        'Médio',
        'É o oceano que banha a costa leste da América do Sul.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Oceano Pacífico', FALSE),
    (@last_pergunta_id, 'Oceano Índico', FALSE),
    (@last_pergunta_id, 'Oceano Atlântico', TRUE),
    (@last_pergunta_id, 'Oceano Ártico', FALSE),
    (@last_pergunta_id, 'Mar do Caribe', FALSE);
-- Filosofia (id_materia = 8)
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        8,
        1,
        'Qual filósofo grego é conhecido por sua frase "Só sei que nada sei"?',
        'Fácil',
        'Considerado um dos fundadores da filosofia ocidental, mestre de Platão.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Aristóteles', FALSE),
    (@last_pergunta_id, 'Platão', FALSE),
    (@last_pergunta_id, 'Sócrates', TRUE),
    (@last_pergunta_id, 'Pitágoras', FALSE),
    (@last_pergunta_id, 'Heráclito', FALSE);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        8,
        1,
        'A frase "Penso, logo existo" (Cogito, ergo sum) é atribuída a qual filósofo?',
        'Médio',
        'Um importante filósofo e matemático francês do século XVII.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'John Locke', FALSE),
    (@last_pergunta_id, 'Immanuel Kant', FALSE),
    (@last_pergunta_id, 'René Descartes', TRUE),
    (@last_pergunta_id, 'Baruch Spinoza', FALSE),
    (@last_pergunta_id, 'Friedrich Nietzsche', FALSE);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        8,
        1,
        'Qual destes conceitos NÃO é um tema central da filosofia de Platão?',
        'Difícil',
        'Pense no Mundo das Ideias, Alegoria da Caverna, e o Rei Filósofo.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @last_pergunta_id,
        'Teoria das Formas (Ideias)',
        FALSE
    ),
    (@last_pergunta_id, 'A República Ideal', FALSE),
    (@last_pergunta_id, 'O Empirismo Radical', TRUE),
    -- Empirismo é mais associado a Locke, Berkeley, Hume
    (
        @last_pergunta_id,
        'A Alegoria da Caverna',
        FALSE
    ),
    (
        @last_pergunta_id,
        'A Imortalidade da Alma',
        FALSE
    );
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        8,
        1,
        'O que é "ética" no campo da filosofia?',
        'Fácil',
        'Relaciona-se com o comportamento humano e os princípios morais.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @last_pergunta_id,
        'O estudo da beleza e da arte',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O estudo da lógica e do raciocínio',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O estudo dos princípios morais e do comportamento correto',
        TRUE
    ),
    (
        @last_pergunta_id,
        'O estudo da natureza da realidade',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O estudo do conhecimento',
        FALSE
    );
-- Sociologia (id_materia = 9)
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        9,
        1,
        'Quem é considerado um dos "pais fundadores" da Sociologia, autor de "O Capital"?',
        'Médio',
        'Filósofo alemão cujas ideias influenciaram o comunismo.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Émile Durkheim', FALSE),
    (@last_pergunta_id, 'Max Weber', FALSE),
    (@last_pergunta_id, 'Karl Marx', TRUE),
    (@last_pergunta_id, 'Auguste Comte', FALSE),
    (@last_pergunta_id, 'Herbert Spencer', FALSE);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        9,
        1,
        'O que é "cultura" no contexto sociológico?',
        'Fácil',
        'Abrange costumes, crenças, arte, moral, leis, etc.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @last_pergunta_id,
        'Apenas manifestações artísticas de elite',
        FALSE
    ),
    (
        @last_pergunta_id,
        'Apenas o nível de educação de uma pessoa',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O conjunto de conhecimentos, crenças, arte, moral, leis, costumes e quaisquer outras capacidades e hábitos adquiridos pelo homem como membro da sociedade',
        TRUE
    ),
    (
        @last_pergunta_id,
        'Apenas as tradições rurais de um povo',
        FALSE
    ),
    (
        @last_pergunta_id,
        'O estudo das plantas e animais',
        FALSE
    );
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        9,
        1,
        'Qual conceito sociológico se refere à divisão da sociedade em camadas ou estratos hierárquicos?',
        'Médio',
        'Pode ser baseada em classe, status ou poder.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Mobilidade Social', FALSE),
    (@last_pergunta_id, 'Coesão Social', FALSE),
    (@last_pergunta_id, 'Estratificação Social', TRUE),
    (@last_pergunta_id, 'Anomia', FALSE),
    (@last_pergunta_id, 'Assimilação Cultural', FALSE);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        9,
        1,
        'Émile Durkheim é conhecido por seu estudo sobre qual fenômeno social?',
        'Difícil',
        'Ele analisou as taxas desse fenômeno em diferentes grupos sociais.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @last_pergunta_id,
        'A Revolução Industrial',
        FALSE
    ),
    (@last_pergunta_id, 'O Crime', FALSE),
    (@last_pergunta_id, 'O Suicídio', TRUE),
    (@last_pergunta_id, 'A Educação', FALSE),
    (@last_pergunta_id, 'A Família', FALSE);
-- Inglês (id_materia = 10)
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        10,
        1,
        'How do you say "livro" in English?',
        'Fácil',
        'It starts with the letter "B".'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Paper', FALSE),
    (@last_pergunta_id, 'Pen', FALSE),
    (@last_pergunta_id, 'Book', TRUE),
    (@last_pergunta_id, 'Table', FALSE),
    (@last_pergunta_id, 'School', FALSE);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        10,
        1,
        'What is the plural of "child"?',
        'Médio',
        'It is an irregular plural form.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Childs', FALSE),
    (@last_pergunta_id, 'Childes', FALSE),
    (@last_pergunta_id, 'Children', TRUE),
    (@last_pergunta_id, 'Childer', FALSE),
    (@last_pergunta_id, 'Child', FALSE);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        10,
        1,
        'Complete the sentence: "She ___ a doctor."',
        'Fácil',
        'Use the correct form of the verb "to be" for the third person singular.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'am', FALSE),
    (@last_pergunta_id, 'are', FALSE),
    (@last_pergunta_id, 'is', TRUE),
    (@last_pergunta_id, 'be', FALSE),
    (@last_pergunta_id, 'was', FALSE);
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        10,
        1,
        'What does "thank you" mean in Portuguese?',
        'Fácil',
        'An expression of gratitude.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Por favor', FALSE),
    (@last_pergunta_id, 'De nada', FALSE),
    (@last_pergunta_id, 'Obrigado(a)', TRUE),
    (@last_pergunta_id, 'Com licença', FALSE),
    (@last_pergunta_id, 'Olá', FALSE);
-- Espanhol (id_materia = 11)
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        11,
        1,
        '¿Cómo se dice "gato" en español?',
        'Fácil',
        'A palavra é a mesma em português.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Perro', FALSE),
    (@last_pergunta_id, 'Libro', FALSE),
    (@last_pergunta_id, 'Gato', TRUE),
    (@last_pergunta_id, 'Casa', FALSE),
    (@last_pergunta_id, 'Pez', FALSE);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        11,
        1,
        '¿Qué significa "hola" en portugués?',
        'Fácil',
        'Uma saudação comum.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Adeus', FALSE),
    (@last_pergunta_id, 'Por favor', FALSE),
    (@last_pergunta_id, 'Olá', TRUE),
    (@last_pergunta_id, 'Obrigado', FALSE),
    (@last_pergunta_id, 'Sim', FALSE);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        11,
        1,
        'Completa la frase: "Yo ___ de Brasil."',
        'Fácil',
        'Usa la forma correcta del verbo "ser" para la primera persona del singular.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'es', FALSE),
    (@last_pergunta_id, 'eres', FALSE),
    (@last_pergunta_id, 'soy', TRUE),
    (@last_pergunta_id, 'somos', FALSE),
    (@last_pergunta_id, 'son', FALSE);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        11,
        1,
        'La palabra "hermano" significa:',
        'Médio',
        'Um membro da família, do sexo masculino, filho dos mesmos pais.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Pai', FALSE),
    (@last_pergunta_id, 'Tio', FALSE),
    (@last_pergunta_id, 'Irmão', TRUE),
    (@last_pergunta_id, 'Primo', FALSE),
    (@last_pergunta_id, 'Avô', FALSE);
-- Arte (id_materia = 12)
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        12,
        1,
        'Quem pintou a "Mona Lisa"?',
        'Fácil',
        'Um famoso artista e inventor italiano do Renascimento.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Vincent van Gogh', FALSE),
    (@last_pergunta_id, 'Pablo Picasso', FALSE),
    (@last_pergunta_id, 'Leonardo da Vinci', TRUE),
    (@last_pergunta_id, 'Michelangelo', FALSE),
    (@last_pergunta_id, 'Claude Monet', FALSE);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        12,
        1,
        'Qual movimento artístico é caracterizado pelo uso de formas geométricas e fragmentação de objetos, como nas obras de Picasso e Braque?',
        'Médio',
        'Começa com a letra "C".'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Impressionismo', FALSE),
    (@last_pergunta_id, 'Surrealismo', FALSE),
    (@last_pergunta_id, 'Cubismo', TRUE),
    (@last_pergunta_id, 'Expressionismo', FALSE),
    (@last_pergunta_id, 'Abstracionismo', FALSE);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        12,
        1,
        'A obra "O Grito" é uma pintura icônica de qual artista expressionista norueguês?',
        'Difícil',
        'Seu sobrenome é Munch.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Gustav Klimt', FALSE),
    (@last_pergunta_id, 'Egon Schiele', FALSE),
    (@last_pergunta_id, 'Edvard Munch', TRUE),
    (@last_pergunta_id, 'Wassily Kandinsky', FALSE),
    (@last_pergunta_id, 'Franz Marc', FALSE);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        12,
        1,
        'Qual arquiteto brasileiro é famoso por projetar grande parte dos edifícios públicos de Brasília?',
        'Médio',
        'Suas obras são conhecidas pelas curvas e uso do concreto armado.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Lúcio Costa', FALSE),
    -- Lucio Costa foi o urbanista
    (@last_pergunta_id, 'Ruy Ohtake', FALSE),
    (@last_pergunta_id, 'Oscar Niemeyer', TRUE),
    (
        @last_pergunta_id,
        'Paulo Mendes da Rocha',
        FALSE
    ),
    (
        @last_pergunta_id,
        'Affonso Eduardo Reidy',
        FALSE
    );
-- Ciências (Fundamental) (id_materia = 13)
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        13,
        1,
        'Quais são os três estados físicos da água?',
        'Fácil',
        'Pense em como a água pode ser encontrada na natureza.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Quente, Frio e Morno', FALSE),
    (
        @last_pergunta_id,
        'Claro, Escuro e Transparente',
        FALSE
    ),
    (
        @last_pergunta_id,
        'Sólido, Líquido e Gasoso',
        TRUE
    ),
    (
        @last_pergunta_id,
        'Doce, Salgado e Amargo',
        FALSE
    ),
    (
        @last_pergunta_id,
        'Mole, Duro e Quebradiço',
        FALSE
    );
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        13,
        1,
        'O Sol é classificado como qual tipo de corpo celeste?',
        'Fácil',
        'Ele produz sua própria luz e calor.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Planeta', FALSE),
    (@last_pergunta_id, 'Satélite Natural', FALSE),
    (@last_pergunta_id, 'Estrela', TRUE),
    (@last_pergunta_id, 'Cometa', FALSE),
    (@last_pergunta_id, 'Asteroide', FALSE);
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        13,
        1,
        'Qual parte da planta é geralmente responsável pela absorção de água e nutrientes do solo?',
        'Fácil',
        'Fica debaixo da terra.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Folha', FALSE),
    (@last_pergunta_id, 'Flor', FALSE),
    (@last_pergunta_id, 'Raiz', TRUE),
    (@last_pergunta_id, 'Caule', FALSE),
    (@last_pergunta_id, 'Fruto', FALSE);
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        13,
        1,
        'Qual é o planeta mais próximo do Sol em nosso sistema solar?',
        'Médio',
        'É um planeta rochoso e pequeno.'
    );
SET @last_pergunta_id = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@last_pergunta_id, 'Vênus', FALSE),
    (@last_pergunta_id, 'Terra', FALSE),
    (@last_pergunta_id, 'Mercúrio', TRUE),
    (@last_pergunta_id, 'Marte', FALSE),
    (@last_pergunta_id, 'Júpiter', FALSE);