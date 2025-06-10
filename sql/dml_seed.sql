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
    ('Artes');
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
-- =================================================================
-- Perguntas e Alternativas
-- =================================================================
-- ||                    Língua Portuguesa                        ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual figura de linguagem está presente na frase "O Sol beijava o rosto da menina"?',
        'Fácil',
        'Atribui características humanas a seres inanimados.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Metáfora', 0),
    (@id_pergunta, 'Hipérbole', 0),
    (@id_pergunta, 'Personificação', 1),
    (@id_pergunta, 'Eufemismo', 0),
    (@id_pergunta, 'Ironia', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das palavras abaixo é um exemplo de ditongo decrescente?',
        'Fácil',
        'A vogal vem antes da semivogal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Pai', 1),
    (@id_pergunta, 'Saúde', 0),
    (@id_pergunta, 'Quase', 0),
    (@id_pergunta, 'Mãe', 0),
    (@id_pergunta, 'Poeta', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Na frase "Comprei pão, queijo e presunto", qual a função da vírgula?',
        'Fácil',
        'Serve para separar itens em uma lista.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Separar o vocativo', 0),
    (@id_pergunta, 'Indicar uma pausa longa', 0),
    (@id_pergunta, 'Isolar o aposto', 0),
    (
        @id_pergunta,
        'Separar elementos de uma enumeração',
        1
    ),
    (@id_pergunta, 'Marcar o sujeito', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o sujeito da oração "Choveu muito ontem à noite"?',
        'Fácil',
        'Pense em fenômenos da natureza.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Muito', 0),
    (@id_pergunta, 'Eu', 0),
    (@id_pergunta, 'Oração sem sujeito', 1),
    (@id_pergunta, 'Noite', 0),
    (@id_pergunta, 'Ontem', 0);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A palavra "gato" é classificada como:',
        'Fácil',
        'Refere-se a um ser, objeto ou ideia.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Adjetivo', 0),
    (@id_pergunta, 'Verbo', 0),
    (@id_pergunta, 'Advérbio', 0),
    (@id_pergunta, 'Pronome', 0),
    (@id_pergunta, 'Substantivo', 1);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o antônimo da palavra "alegria"?',
        'Fácil',
        'É o sentimento oposto.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Felicidade', 0),
    (@id_pergunta, 'Tristeza', 1),
    (@id_pergunta, 'Euforia', 0),
    (@id_pergunta, 'Amor', 0),
    (@id_pergunta, 'Paz', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Em "Ele correu rapidamente", a palavra "rapidamente" é um:',
        'Fácil',
        'Modifica o verbo, indicando o modo como a ação foi feita.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Substantivo', 0),
    (@id_pergunta, 'Adjetivo', 0),
    (@id_pergunta, 'Verbo', 0),
    (@id_pergunta, 'Advérbio', 1),
    (@id_pergunta, 'Artigo', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o coletivo de "abelhas"?',
        'Fácil',
        'Pense em um aglomerado de insetos voadores.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cardume', 0),
    (@id_pergunta, 'Enxame', 1),
    (@id_pergunta, 'Manada', 0),
    (@id_pergunta, 'Alcateia', 0),
    (@id_pergunta, 'Rebanho', 0);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das opções é um pronome pessoal do caso reto?',
        'Fácil',
        'Representa quem fala, com quem se fala ou de quem se fala.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Meu', 0),
    (@id_pergunta, 'Contigo', 0),
    (@id_pergunta, 'Nós', 1),
    (@id_pergunta, 'Seu', 0),
    (@id_pergunta, 'Mim', 0);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A frase "Que dia lindo!" termina com qual sinal de pontuação?',
        'Fácil',
        'Expressa emoção, surpresa.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ponto final (.)', 0),
    (@id_pergunta, 'Ponto de interrogação (?)', 0),
    (@id_pergunta, 'Ponto de exclamação (!)', 1),
    (@id_pergunta, 'Reticências (...)', 0),
    (@id_pergunta, 'Ponto e vírgula (;)', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o tempo verbal na frase "Eu estudei para a prova"?',
        'Fácil',
        'A ação já aconteceu e foi concluída.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Presente', 0),
    (@id_pergunta, 'Futuro', 0),
    (@id_pergunta, 'Pretérito perfeito', 1),
    (@id_pergunta, 'Pretérito imperfeito', 0),
    (@id_pergunta, 'Futuro do pretérito', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A palavra "menino" está no grau:',
        'Fácil',
        'Indica o tamanho padrão, sem aumento ou diminuição.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Aumentativo', 0),
    (@id_pergunta, 'Diminutivo', 0),
    (@id_pergunta, 'Comparativo', 0),
    (@id_pergunta, 'Superlativo', 0),
    (@id_pergunta, 'Normal', 1);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual é a forma correta do plural de "cidadão"?',
        'Fácil',
        'A terminação "-ão" tem plurais diferentes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cidadãos', 1),
    (@id_pergunta, 'Cidadões', 0),
    (@id_pergunta, 'Cidadães', 0),
    (@id_pergunta, 'Cidadãos', 0),
    (@id_pergunta, 'Cidadãis', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Em "A casa é bonita", a palavra "bonita" funciona como:',
        'Fácil',
        'Dá uma característica ao substantivo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Verbo', 0),
    (@id_pergunta, 'Advérbio', 0),
    (@id_pergunta, 'Adjetivo', 1),
    (@id_pergunta, 'Pronome', 0),
    (@id_pergunta, 'Substantivo', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual é a primeira letra do alfabeto?',
        'Fácil',
        'É uma vogal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Z', 0),
    (@id_pergunta, 'B', 0),
    (@id_pergunta, 'C', 0),
    (@id_pergunta, 'A', 1),
    (@id_pergunta, 'M', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O que significa a sigla "CEP"?',
        'Fácil',
        'Usado para identificar endereços postais.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Código de Endereçamento Postal',
        1
    ),
    (
        @id_pergunta,
        'Central de Encomendas Prioritárias',
        0
    ),
    (
        @id_pergunta,
        'Cadastro de Entidades Públicas',
        0
    ),
    (
        @id_pergunta,
        'Comprovante de Entrega Pessoal',
        0
    ),
    (@id_pergunta, 'Controle de Envio de Pacotes', 0);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o sinônimo de "casa"?',
        'Fácil',
        'Outra palavra para um lugar onde se mora.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Prédio', 0),
    (@id_pergunta, 'Lar', 1),
    (@id_pergunta, 'Escola', 0),
    (@id_pergunta, 'Rua', 0),
    (@id_pergunta, 'Cidade', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o gênero da palavra "poeta"?',
        'Fácil',
        'Refere-se a uma pessoa que escreve poemas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Feminino', 0),
    (@id_pergunta, 'Neutro', 0),
    (@id_pergunta, 'Masculino', 1),
    (@id_pergunta, 'Comum de dois', 0),
    (@id_pergunta, 'Sobrecomum', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A palavra "felizmente" é formada por qual processo?',
        'Fácil',
        'Adição de um sufixo a uma palavra já existente.'
    );
SET @id_pergunta_facil_19 = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Composição', 0),
    (@id_pergunta, 'Derivação sufixal', 1),
    (@id_pergunta, 'Derivação prefixal', 0),
    (@id_pergunta, 'Aglutinação', 0),
    (@id_pergunta, 'Justaposição', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Quantas sílabas tem a palavra "paralelepípedo"?',
        'Fácil',
        'Conte os impulsos de voz ao pronunciá-la.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '5', 0),
    (@id_pergunta, '6', 0),
    (@id_pergunta, '7', 1),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '9', 0);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual movimento literário brasileiro teve como marco inicial a "Semana de Arte Moderna" de 1922?',
        'Médio',
        'Revolucionou a arte e a literatura no Brasil, buscando uma identidade nacional.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Romantismo', 0),
    (@id_pergunta, 'Realismo', 0),
    (@id_pergunta, 'Modernismo', 1),
    (@id_pergunta, 'Parnasianismo', 0),
    (@id_pergunta, 'Barroco', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Na oração "Precisa-se de funcionários", o "se" é classificado como:',
        'Médio',
        'O sujeito da oração é indeterminado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Partícula apassivadora', 0),
    (
        @id_pergunta,
        'Índice de indeterminação do sujeito',
        1
    ),
    (@id_pergunta, 'Pronome reflexivo', 0),
    (@id_pergunta, 'Conjunção subordinativa', 0),
    (@id_pergunta, 'Partícula expletiva', 0);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A obra "Dom Casmurro", de Machado de Assis, é narrada em que pessoa?',
        'Médio',
        'O narrador é também o personagem principal, contando suas memórias.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Terceira pessoa onisciente', 0),
    (@id_pergunta, 'Primeira pessoa (Bentinho)', 1),
    (@id_pergunta, 'Segunda pessoa', 0),
    (@id_pergunta, 'Terceira pessoa observador', 0),
    (@id_pergunta, 'Narrador múltiplo', 0);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual a função sintática do termo destacado em "Tenho medo DE BARATAS"?',
        'Médio',
        'Completa o sentido de um nome (substantivo, adjetivo ou advérbio).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Objeto direto', 0),
    (@id_pergunta, 'Objeto indireto', 0),
    (@id_pergunta, 'Complemento nominal', 1),
    (@id_pergunta, 'Adjunto adnominal', 0),
    (@id_pergunta, 'Agente da passiva', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A forma verbal "cantara" corresponde a qual tempo e modo?',
        'Médio',
        'Expressa uma ação ocorrida antes de outra ação também no passado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Pretérito Imperfeito do Indicativo',
        0
    ),
    (
        @id_pergunta,
        'Futuro do Presente do Indicativo',
        0
    ),
    (
        @id_pergunta,
        'Pretérito Mais-que-perfeito do Indicativo',
        1
    ),
    (
        @id_pergunta,
        'Futuro do Pretérito do Indicativo',
        0
    ),
    (@id_pergunta, 'Presente do Subjuntivo', 0);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das alternativas apresenta um exemplo de oração subordinada adjetiva restritiva?',
        'Médio',
        'Restringe o sentido do termo antecedente, sem vírgulas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Os alunos, que são estudiosos, passam de ano.',
        0
    ),
    (
        @id_pergunta,
        'Os alunos que são estudiosos passam de ano.',
        1
    ),
    (@id_pergunta, 'Espero que você venha.', 0),
    (@id_pergunta, 'Ele afirmou ser inocente.', 0),
    (@id_pergunta, 'Quando você chegar, avise-me.', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A palavra "embora" é classificada morfologicamente como:',
        'Médio',
        'Liga orações, estabelecendo uma relação de oposição, ressalva.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Advérbio', 0),
    (@id_pergunta, 'Preposição', 0),
    (@id_pergunta, 'Conjunção concessiva', 1),
    (@id_pergunta, 'Conjunção condicional', 0),
    (@id_pergunta, 'Interjeição', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das opções abaixo contém um hiato?',
        'Médio',
        'Duas vogais juntas em uma palavra, mas que pertencem a sílabas diferentes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Caixa', 0),
    (@id_pergunta, 'Saída', 1),
    (@id_pergunta, 'Uruguai', 0),
    (@id_pergunta, 'Pneu', 0),
    (@id_pergunta, 'Herói', 0);
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O uso da crase é obrigatório em qual frase?',
        'Médio',
        'Lembre-se da regra "vou a, volto da".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Fui a Portugal.', 0),
    (@id_pergunta, 'Refiro-me àquele aluno.', 1),
    (@id_pergunta, 'Ele anda a cavalo.', 0),
    (@id_pergunta, 'O texto foi escrito a lápis.', 0),
    (@id_pergunta, 'Estou disposto a ajudar.', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        '"O menino, cansado, deitou-se." O termo "cansado" é um:',
        'Médio',
        'Dá uma característica ao sujeito, mas é separado por vírgulas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Adjunto adnominal', 0),
    (@id_pergunta, 'Predicativo do sujeito', 1),
    (@id_pergunta, 'Aposto', 0),
    (@id_pergunta, 'Vocativo', 0),
    (@id_pergunta, 'Predicativo do objeto', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual a figura de linguagem presente em "Chovia uma triste chuva de resignação"?',
        'Médio',
        'Consiste na repetição de uma mesma palavra ou expressão.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Anáfora', 0),
    (@id_pergunta, 'Pleonasmo', 1),
    (@id_pergunta, 'Polissíndeto', 0),
    (@id_pergunta, 'Aliteração', 0),
    (@id_pergunta, 'Assonância', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A palavra "planalto" é formada por qual processo?',
        'Médio',
        'Junção de duas ou mais palavras com perda de fonemas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Justaposição', 0),
    (@id_pergunta, 'Aglutinação', 1),
    (@id_pergunta, 'Derivação parassintética', 0),
    (@id_pergunta, 'Hibridismo', 0),
    (@id_pergunta, 'Redução', 0);
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Em "É necessário que todos colaborem", a segunda oração é:',
        'Médio',
        'Funciona como sujeito da oração principal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Subordinada Substantiva Objetiva Direta',
        0
    ),
    (
        @id_pergunta,
        'Subordinada Substantiva Subjetiva',
        1
    ),
    (
        @id_pergunta,
        'Subordinada Substantiva Completiva Nominal',
        0
    ),
    (@id_pergunta, 'Subordinada Adverbial Causal', 0),
    (@id_pergunta, 'Coordenada Sindética Aditiva', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual poeta é conhecido como "Poetinha" e autor de "Soneto de Fidelidade"?',
        'Médio',
        'Foi também um importante compositor da Bossa Nova.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Carlos Drummond de Andrade', 0),
    (@id_pergunta, 'Vinicius de Moraes', 1),
    (@id_pergunta, 'Manuel Bandeira', 0),
    (@id_pergunta, 'Cecília Meireles', 0),
    (@id_pergunta, 'Mário de Andrade', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A regência do verbo "esquecer" está INCORRETA em:',
        'Médio',
        'Quando pronominal, exige preposição.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Esqueci o livro em casa.', 0),
    (@id_pergunta, 'Esqueci-me do livro em casa.', 0),
    (@id_pergunta, 'Nunca me esqueço de você.', 0),
    (@id_pergunta, 'Ele esqueceu do compromisso.', 1),
    (@id_pergunta, 'Os fatos foram esquecidos.', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual a voz verbal da frase "A casa foi construída pelos pedreiros"?',
        'Médio',
        'O sujeito sofre a ação expressa pelo verbo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Voz ativa', 0),
    (@id_pergunta, 'Voz passiva analítica', 1),
    (@id_pergunta, 'Voz passiva sintética', 0),
    (@id_pergunta, 'Voz reflexiva', 0),
    (@id_pergunta, 'Voz recíproca', 0);
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        '"Vidas Secas", de Graciliano Ramos, é uma obra de qual escola literária?',
        'Médio',
        'Segunda fase do Modernismo, focada em temas regionais e sociais.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Romantismo', 0),
    (@id_pergunta, 'Realismo', 0),
    (@id_pergunta, 'Modernismo (Geração de 30)', 1),
    (@id_pergunta, 'Naturalismo', 0),
    (@id_pergunta, 'Simbolismo', 0);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das palavras é acentuada pela mesma regra de "história"?',
        'Médio',
        'Termina em ditongo crescente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'País', 0),
    (@id_pergunta, 'Saúde', 0),
    (@id_pergunta, 'Série', 1),
    (@id_pergunta, 'Herói', 0),
    (@id_pergunta, 'Armazém', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O período "Penso, logo existo" é composto por qual tipo de relação entre as orações?',
        'Médio',
        'A segunda oração conclui a ideia da primeira.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Coordenação assindética', 0),
    (@id_pergunta, 'Coordenação sindética aditiva', 0),
    (
        @id_pergunta,
        'Coordenação sindética conclusiva',
        1
    ),
    (@id_pergunta, 'Subordinação adverbial final', 0),
    (
        @id_pergunta,
        'Subordinação substantiva apositiva',
        0
    );
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das opções apresenta um verbo defectivo?',
        'Médio',
        'Não possui conjugação completa em todas as pessoas, tempos e modos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cantar', 0),
    (@id_pergunta, 'Colorir', 1),
    (@id_pergunta, 'Vender', 0),
    (@id_pergunta, 'Partir', 0),
    (@id_pergunta, 'Pôr', 0);
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A figura de linguagem que consiste na omissão de um termo facilmente subentendido na frase é chamada de:',
        'Difícil',
        'É a omissão de uma palavra que já foi dita anteriormente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Zeugma', 1),
    (@id_pergunta, 'Elipse', 0),
    (@id_pergunta, 'Assíndeto', 0),
    (@id_pergunta, 'Hipérbato', 0),
    (@id_pergunta, 'Anacoluto', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Em "Grande Sertão: Veredas", de Guimarães Rosa, a principal característica da linguagem é:',
        'Difícil',
        'O autor cria palavras e resgata termos arcaicos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'O uso de jargão científico', 0),
    (@id_pergunta, 'A linguagem coloquial urbana', 0),
    (@id_pergunta, 'O formalismo parnasiano', 0),
    (
        @id_pergunta,
        'A criação de neologismos e o regionalismo',
        1
    ),
    (@id_pergunta, 'A sintaxe clássica e erudita', 0);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual a correta classificação da oração destacada em "A verdade é QUE NINGUÉM SE IMPORTAVA"?',
        'Difícil',
        'Funciona como o predicativo do sujeito da oração principal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Oração Subordinada Substantiva Subjetiva',
        0
    ),
    (
        @id_pergunta,
        'Oração Subordinada Substantiva Objetiva Direta',
        0
    ),
    (
        @id_pergunta,
        'Oração Subordinada Substantiva Predicativa',
        1
    ),
    (
        @id_pergunta,
        'Oração Subordinada Substantiva Completiva Nominal',
        0
    ),
    (
        @id_pergunta,
        'Oração Subordinada Substantiva Apositiva',
        0
    );
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A inversão da ordem natural dos termos na oração, como em "Ouviram do Ipiranga as margens plácidas", é chamada de:',
        'Difícil',
        'Também conhecida como inversão.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Silepse', 0),
    (@id_pergunta, 'Hipérbato', 1),
    (@id_pergunta, 'Anacoluto', 0),
    (@id_pergunta, 'Pleonasmo vicioso', 0),
    (@id_pergunta, 'Quiasmo', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Na frase "Ele foi eleito o melhor jogador do ano", qual a função sintática de "o melhor jogador do ano"?',
        'Difícil',
        'Atribui uma qualidade ao objeto direto.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Aposto especificativo', 0),
    (@id_pergunta, 'Predicativo do sujeito', 0),
    (@id_pergunta, 'Objeto direto preposicionado', 0),
    (@id_pergunta, 'Agente da passiva', 0),
    (@id_pergunta, 'Predicativo do objeto', 1);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O movimento literário Trovadorismo, em Portugal, tinha como principal produção as:',
        'Difícil',
        'Composições poéticas feitas para serem cantadas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cantigas líricas e satíricas', 1),
    (@id_pergunta, 'Novelas de cavalaria', 0),
    (@id_pergunta, 'Autos e farsas', 0),
    (@id_pergunta, 'Poemas épicos', 0),
    (@id_pergunta, 'Sonetos decassílabos', 0);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Assinale a opção em que o "que" é um pronome relativo.',
        'Difícil',
        'Pode ser substituído por "o qual", "a qual" e suas variações.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Disse que não viria.', 0),
    (@id_pergunta, 'O livro que li é ótimo.', 1),
    (@id_pergunta, 'Que dia quente!', 0),
    (@id_pergunta, 'Ele tem um que de mistério.', 0),
    (@id_pergunta, 'Estude, que a prova é amanhã.', 0);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A concordância verbal está INCORRETA em:',
        'Difícil',
        'Atenção aos sujeitos compostos e verbos como "haver".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Fomos nós que resolvemos o problema.',
        0
    ),
    (
        @id_pergunta,
        'Mais de um aluno faltou à aula.',
        0
    ),
    (
        @id_pergunta,
        'Houveram muitos acidentes na estrada.',
        1
    ),
    (
        @id_pergunta,
        'Precisam-se de novas soluções.',
        0
    ),
    (
        @id_pergunta,
        'Os Estados Unidos são uma potência mundial.',
        0
    );
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O autor de "O Cortiço", obra-prima do Naturalismo no Brasil, é:',
        'Difícil',
        'Seu nome é associado ao determinismo e à zoomorfização das personagens.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Machado de Assis', 0),
    (@id_pergunta, 'José de Alencar', 0),
    (@id_pergunta, 'Aluísio Azevedo', 1),
    (@id_pergunta, 'Raul Pompeia', 0),
    (@id_pergunta, 'Eça de Queirós', 0);
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A figura de pensamento que aproxima termos de sentidos opostos é a:',
        'Difícil',
        'Não chega a ser uma contradição, apenas uma aproximação de opostos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Paradoxo', 0),
    (@id_pergunta, 'Antítese', 1),
    (@id_pergunta, 'Ironia', 0),
    (@id_pergunta, 'Gradação', 0),
    (@id_pergunta, 'Eufemismo', 0);
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das alternativas apresenta uma derivação regressiva?',
        'Difícil',
        'Formação de um substantivo a partir de um verbo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Infelizmente', 0),
    (@id_pergunta, 'Debate (de debater)', 1),
    (@id_pergunta, 'Anoitecer', 0),
    (@id_pergunta, 'Refazer', 0),
    (@id_pergunta, 'Padaria', 0);
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A colocação pronominal conhecida como mesóclise ocorre quando:',
        'Difícil',
        'O pronome se posiciona no meio do verbo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'O verbo está no presente do indicativo.',
        0
    ),
    (
        @id_pergunta,
        'Há uma palavra atrativa antes do verbo.',
        0
    ),
    (
        @id_pergunta,
        'O verbo está no futuro do presente ou futuro do pretérito.',
        1
    ),
    (
        @id_pergunta,
        'A oração está na forma negativa.',
        0
    ),
    (@id_pergunta, 'O verbo está no infinitivo.', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        '"Macunaíma, o herói sem nenhum caráter" é uma rapsódia de qual autor modernista?',
        'Difícil',
        'Um dos principais nomes da primeira fase do Modernismo, polímata e pesquisador.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oswald de Andrade', 0),
    (@id_pergunta, 'Mário de Andrade', 1),
    (@id_pergunta, 'Manuel Bandeira', 0),
    (@id_pergunta, 'Cassiano Ricardo', 0),
    (@id_pergunta, 'Menotti Del Picchia', 0);
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A Silepse é uma figura de concordância ideológica. Qual tipo de silepse ocorre em "Vossa Excelência está preocupado"?',
        'Difícil',
        'A concordância se dá com o sexo da pessoa a quem se refere, não com o gênero da palavra.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Silepse de número', 0),
    (@id_pergunta, 'Silepse de pessoa', 0),
    (@id_pergunta, 'Silepse de gênero', 1),
    (@id_pergunta, 'Silepse de grau', 0),
    (@id_pergunta, 'Não há silepse', 0);
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual das opções contém um verbo que é, ao mesmo tempo, transitivo direto e indireto?',
        'Difícil',
        'A ação transita para dois complementos, um com e outro sem preposição.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Correr', 0),
    (@id_pergunta, 'Assistir (no sentido de ver)', 0),
    (@id_pergunta, 'Informar', 1),
    (@id_pergunta, 'Gostar', 0),
    (@id_pergunta, 'Chegar', 0);
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A obra poética de Cruz e Sousa é o principal expoente de qual movimento literário no Brasil?',
        'Difícil',
        'Caracterizado pelo subjetivismo, musicalidade e uso de sinestesias.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Barroco', 0),
    (@id_pergunta, 'Arcadismo', 0),
    (@id_pergunta, 'Parnasianismo', 0),
    (@id_pergunta, 'Simbolismo', 1),
    (@id_pergunta, 'Pré-Modernismo', 0);
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'A oração "Ao chegar, o aluno sentou-se" é classificada como:',
        'Difícil',
        'Indica uma circunstância de tempo e tem o verbo em uma forma nominal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Oração Reduzida de Infinitivo Adverbial Temporal',
        1
    ),
    (
        @id_pergunta,
        'Oração Reduzida de Gerúndio Adjetiva',
        0
    ),
    (
        @id_pergunta,
        'Oração Reduzida de Particípio Adverbial Causal',
        0
    ),
    (@id_pergunta, 'Oração Principal', 0),
    (@id_pergunta, 'Oração Coordenada Assindética', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual a função sintática do "lhe" em "Obedeci-lhe prontamente"?',
        'Difícil',
        'Verbos como "obedecer" e "desobedecer" exigem um complemento com preposição.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Objeto Direto', 0),
    (@id_pergunta, 'Objeto Indireto', 1),
    (@id_pergunta, 'Adjunto Adnominal', 0),
    (@id_pergunta, 'Complemento Nominal', 0),
    (@id_pergunta, 'Sujeito', 0);
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'O uso do acento grave indicativo da crase é FACULTATIVO em:',
        'Difícil',
        'Pense nos pronomes possessivos femininos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Entreguei o prêmio à vencedora.',
        0
    ),
    (@id_pergunta, 'Vou à Bahia.', 0),
    (@id_pergunta, 'Refiro-me à minha amiga.', 1),
    (@id_pergunta, 'Ele chegou às duas horas.', 0),
    (
        @id_pergunta,
        'À medida que o tempo passa, fico mais sábio.',
        0
    );
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual o nome do recurso estilístico que consiste em quebrar uma estrutura sintática no meio, deixando um termo solto na frase?',
        'Difícil',
        'Exemplo: "Esses políticos, não se pode confiar neles."'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Quiasmo', 0),
    (@id_pergunta, 'Hipálage', 0),
    (@id_pergunta, 'Zeugma', 0),
    (@id_pergunta, 'Anacoluto', 1),
    (@id_pergunta, 'Sínquise', 0);
-- =================================================================
-- ||                      Matemática                             ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o resultado de 15% de 200?',
        'Fácil',
        'Multiplique 200 por 0,15.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '15', 0),
    (@id_pergunta, '20', 0),
    (@id_pergunta, '30', 1),
    (@id_pergunta, '45', 0),
    (@id_pergunta, '50', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se um quadrado tem lado de 5 cm, qual é a sua área?',
        'Fácil',
        'A área do quadrado é o lado elevado ao quadrado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 cm²', 0),
    (@id_pergunta, '20 cm²', 0),
    (@id_pergunta, '25 cm²', 1),
    (@id_pergunta, '30 cm²', 0),
    (@id_pergunta, '50 cm²', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor de "x" na equação: 2x + 3 = 11?',
        'Fácil',
        'Isole o "x" passando os números para o outro lado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2', 0),
    (@id_pergunta, '3', 0),
    (@id_pergunta, '4', 1),
    (@id_pergunta, '5', 0),
    (@id_pergunta, '7', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Quantos lados tem um hexágono?',
        'Fácil',
        'Pense no prefixo "hexa".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '5', 0),
    (@id_pergunta, '6', 1),
    (@id_pergunta, '7', 0),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '10', 0);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a raiz quadrada de 81?',
        'Fácil',
        'Qual número, multiplicado por ele mesmo, resulta em 81?'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '7', 0),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '9', 1),
    (@id_pergunta, '10', 0),
    (@id_pergunta, '11', 0);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se um relógio marca 3 horas, qual é o ângulo formado pelos ponteiros?',
        'Fácil',
        'Um círculo completo tem 360 graus.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '45°', 0),
    (@id_pergunta, '60°', 0),
    (@id_pergunta, '90°', 1),
    (@id_pergunta, '120°', 0),
    (@id_pergunta, '180°', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é o próximo número na sequência: 2, 4, 6, 8, ...?',
        'Fácil',
        'É uma sequência de números pares.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '9', 0),
    (@id_pergunta, '10', 1),
    (@id_pergunta, '11', 0),
    (@id_pergunta, '12', 0),
    (@id_pergunta, '14', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o resultado da operação: 5 * (4 + 2)?',
        'Fácil',
        'Primeiro resolva o que está dentro dos parênteses.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '22', 0),
    (@id_pergunta, '25', 0),
    (@id_pergunta, '30', 1),
    (@id_pergunta, '32', 0),
    (@id_pergunta, '40', 0);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor de 2 elevado à terceira potência (2³)?',
        'Fácil',
        'É o mesmo que 2 x 2 x 2.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '4', 0),
    (@id_pergunta, '6', 0),
    (@id_pergunta, '8', 1),
    (@id_pergunta, '9', 0),
    (@id_pergunta, '16', 0);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Um triângulo com todos os lados iguais é chamado de:',
        'Fácil',
        'O prefixo "equi" significa igual.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Isósceles', 0),
    (@id_pergunta, 'Escaleno', 0),
    (@id_pergunta, 'Retângulo', 0),
    (@id_pergunta, 'Equilátero', 1),
    (@id_pergunta, 'Acutângulo', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é o resultado de 1/2 + 1/4?',
        'Fácil',
        'Encontre o mínimo múltiplo comum dos denominadores.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1/6', 0),
    (@id_pergunta, '2/6', 0),
    (@id_pergunta, '3/4', 1),
    (@id_pergunta, '2/4', 0),
    (@id_pergunta, '1/3', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se um produto custa R$ 50 e tem um desconto de 10%, qual o valor final?',
        'Fácil',
        'Calcule 10% de 50 e subtraia do valor original.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'R$ 40', 0),
    (@id_pergunta, 'R$ 45', 1),
    (@id_pergunta, 'R$ 48', 0),
    (@id_pergunta, 'R$ 55', 0),
    (@id_pergunta, 'R$ 60', 0);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o perímetro de um retângulo com lados de 4 cm e 6 cm?',
        'Fácil',
        'Perímetro é a soma de todos os lados.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 cm', 0),
    (@id_pergunta, '16 cm', 0),
    (@id_pergunta, '20 cm', 1),
    (@id_pergunta, '24 cm²', 0),
    (@id_pergunta, '24 cm', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Quantos minutos existem em 3 horas?',
        'Fácil',
        'Uma hora tem 60 minutos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '120', 0),
    (@id_pergunta, '150', 0),
    (@id_pergunta, '180', 1),
    (@id_pergunta, '210', 0),
    (@id_pergunta, '240', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual número é o sucessor de 999?',
        'Fácil',
        'É o número que vem imediatamente depois.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '998', 0),
    (@id_pergunta, '100', 0),
    (@id_pergunta, '1000', 1),
    (@id_pergunta, '1001', 0),
    (@id_pergunta, '9999', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'O que representa o "Pi" (π) em matemática?',
        'Fácil',
        'É uma constante relacionada a círculos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'A área do triângulo', 0),
    (
        @id_pergunta,
        'A relação entre o perímetro da circunferência e seu diâmetro',
        1
    ),
    (
        @id_pergunta,
        'A hipotenusa de um triângulo retângulo',
        0
    ),
    (@id_pergunta, 'O volume de um cubo', 0),
    (@id_pergunta, 'Um número primo', 0);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é o dobro de 25 mais 10?',
        'Fácil',
        'Primeiro calcule o dobro de 25.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '50', 0),
    (@id_pergunta, '60', 1),
    (@id_pergunta, '35', 0),
    (@id_pergunta, '70', 0),
    (@id_pergunta, '45', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o resultado de 100 dividido por 4?',
        'Fácil',
        'Pense em dividir R$ 100 para 4 pessoas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '20', 0),
    (@id_pergunta, '25', 1),
    (@id_pergunta, '30', 0),
    (@id_pergunta, '40', 0),
    (@id_pergunta, '50', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Um ângulo de 180 graus é chamado de:',
        'Fácil',
        'É um ângulo que forma uma linha reta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Agudo', 0),
    (@id_pergunta, 'Obtuso', 0),
    (@id_pergunta, 'Reto', 0),
    (@id_pergunta, 'Raso', 1),
    (@id_pergunta, 'Completo', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a média aritmética simples entre 10, 20 e 30?',
        'Fácil',
        'Some os três números e divida o resultado por 3.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '15', 0),
    (@id_pergunta, '20', 1),
    (@id_pergunta, '25', 0),
    (@id_pergunta, '30', 0),
    (@id_pergunta, '60', 0);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Quais são as raízes da equação x² - 5x + 6 = 0?',
        'Médio',
        'Use a fórmula de Bhaskara.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1 e 6', 0),
    (@id_pergunta, '2 e 3', 1),
    (@id_pergunta, '-2 e -3', 0),
    (@id_pergunta, '-1 e -6', 0),
    (@id_pergunta, 'Não possui raízes reais', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a área de um círculo com raio de 10 cm? (Use π = 3,14)',
        'Médio',
        'A fórmula é A = π * r².'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '31,4 cm²', 0),
    (@id_pergunta, '62,8 cm²', 0),
    (@id_pergunta, '100 cm²', 0),
    (@id_pergunta, '314 cm²', 1),
    (@id_pergunta, '3140 cm²', 0);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor do seno de 30 graus?',
        'Médio',
        'Lembre-se da tabela de ângulos notáveis.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1', 0),
    (@id_pergunta, '1/2', 1),
    (@id_pergunta, '√3/2', 0),
    (@id_pergunta, '√2/2', 0),
    (@id_pergunta, '0', 0);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o volume de um cubo com aresta de 4 cm?',
        'Médio',
        'O volume do cubo é a aresta elevada ao cubo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '12 cm³', 0),
    (@id_pergunta, '16 cm³', 0),
    (@id_pergunta, '48 cm³', 0),
    (@id_pergunta, '64 cm³', 1),
    (@id_pergunta, '256 cm³', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Em um triângulo retângulo, os catetos medem 3 cm e 4 cm. Qual a medida da hipotenusa?',
        'Médio',
        'Use o Teorema de Pitágoras: a² = b² + c².'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '5 cm', 1),
    (@id_pergunta, '6 cm', 0),
    (@id_pergunta, '7 cm', 0),
    (@id_pergunta, '8 cm', 0),
    (@id_pergunta, '9 cm', 0);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual a probabilidade de, ao lançar um dado de 6 faces, obter um número maior que 4?',
        'Médio',
        'Os casos favoráveis são 5 e 6.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1/6', 0),
    (@id_pergunta, '1/3', 1),
    (@id_pergunta, '1/2', 0),
    (@id_pergunta, '2/3', 0),
    (@id_pergunta, '5/6', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se log₂(x) = 3, qual o valor de x?',
        'Médio',
        'Use a definição de logaritmo: base elevada ao resultado é igual ao logaritmando.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '6', 0),
    (@id_pergunta, '8', 1),
    (@id_pergunta, '9', 0),
    (@id_pergunta, '1/3', 0),
    (@id_pergunta, '5', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a soma dos ângulos internos de um pentágono?',
        'Médio',
        'A fórmula é S = (n-2) * 180, onde n é o número de lados.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '180°', 0),
    (@id_pergunta, '360°', 0),
    (@id_pergunta, '540°', 1),
    (@id_pergunta, '720°', 0),
    (@id_pergunta, '900°', 0);
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Uma loja aumenta o preço de um produto de R$ 80 para R$ 100. Qual foi o percentual de aumento?',
        'Médio',
        'Calcule a diferença de preço e divida pelo valor original.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10%', 0),
    (@id_pergunta, '15%', 0),
    (@id_pergunta, '20%', 0),
    (@id_pergunta, '25%', 1),
    (@id_pergunta, '30%', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Resolva o sistema de equações: x + y = 7 e x - y = 1.',
        'Médio',
        'Some as duas equações para eliminar o "y".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'x=3, y=4', 0),
    (@id_pergunta, 'x=4, y=3', 1),
    (@id_pergunta, 'x=5, y=2', 0),
    (@id_pergunta, 'x=2, y=5', 0),
    (@id_pergunta, 'x=6, y=1', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o 10º termo da Progressão Aritmética (P.A.) com a₁ = 2 e razão r = 3?',
        'Médio',
        'Use a fórmula do termo geral: aₙ = a₁ + (n-1)r.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '27', 0),
    (@id_pergunta, '29', 1),
    (@id_pergunta, '30', 0),
    (@id_pergunta, '32', 0),
    (@id_pergunta, '35', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a equação da reta que passa pelos pontos (1, 2) e (3, 6)?',
        'Médio',
        'Encontre o coeficiente angular e depois use a fórmula y - y₀ = m(x - x₀).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'y = x + 1', 0),
    (@id_pergunta, 'y = 2x', 1),
    (@id_pergunta, 'y = 3x - 1', 0),
    (@id_pergunta, 'y = x + 3', 0),
    (@id_pergunta, 'y = 2x + 1', 0);
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a área de um losango cujas diagonais medem 10 cm e 8 cm?',
        'Médio',
        'A fórmula é A = (D * d) / 2.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '18 cm²', 0),
    (@id_pergunta, '40 cm²', 1),
    (@id_pergunta, '80 cm²', 0),
    (@id_pergunta, '90 cm²', 0),
    (@id_pergunta, '100 cm²', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a juros simples produzidos por um capital de R$ 1.200, aplicado a 5% ao mês, durante 4 meses?',
        'Médio',
        'Use a fórmula J = C * i * t.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'R$ 60', 0),
    (@id_pergunta, 'R$ 120', 0),
    (@id_pergunta, 'R$ 200', 0),
    (@id_pergunta, 'R$ 240', 1),
    (@id_pergunta, 'R$ 300', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor de 3! (fatorial de 3)?',
        'Médio',
        'É o produto de todos os inteiros positivos menores ou iguais a 3.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '3', 0),
    (@id_pergunta, '5', 0),
    (@id_pergunta, '6', 1),
    (@id_pergunta, '9', 0),
    (@id_pergunta, '12', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'A soma das idades de pai e filho é 45 anos. A idade do pai é 4 vezes a do filho. Quais são as idades?',
        'Médio',
        'Monte um sistema de equações: P + F = 45 e P = 4F.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Pai: 30, Filho: 15', 0),
    (@id_pergunta, 'Pai: 35, Filho: 10', 0),
    (@id_pergunta, 'Pai: 36, Filho: 9', 1),
    (@id_pergunta, 'Pai: 40, Filho: 5', 0),
    (@id_pergunta, 'Pai: 32, Filho: 13', 0);
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual a área de um triângulo equilátero de lado 4 cm?',
        'Médio',
        'A fórmula é A = (l² * √3) / 4.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2√3 cm²', 0),
    (@id_pergunta, '4√3 cm²', 1),
    (@id_pergunta, '8√3 cm²', 0),
    (@id_pergunta, '16 cm²', 0),
    (@id_pergunta, '16√3 cm²', 0);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor do cosseno de 60 graus?',
        'Médio',
        'Lembre-se dos ângulos notáveis, é o mesmo que o seno do seu complemento.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1', 0),
    (@id_pergunta, '√3/2', 0),
    (@id_pergunta, '√2/2', 0),
    (@id_pergunta, '1/2', 1),
    (@id_pergunta, '0', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se f(x) = 2x + 5, qual o valor de f(3)?',
        'Médio',
        'Substitua o "x" por 3 na função.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '6', 0),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '10', 0),
    (@id_pergunta, '11', 1),
    (@id_pergunta, '13', 0);
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a diagonal de um quadrado de lado 6 cm?',
        'Médio',
        'A fórmula é d = l√2.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '6 cm', 0),
    (@id_pergunta, '6√2 cm', 1),
    (@id_pergunta, '12 cm', 0),
    (@id_pergunta, '12√2 cm', 0),
    (@id_pergunta, '36 cm', 0);
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'De quantas maneiras 5 pessoas podem sentar em 5 cadeiras enfileiradas?',
        'Difícil',
        'Isso é um problema de permutação simples.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '25', 0),
    (@id_pergunta, '60', 0),
    (@id_pergunta, '120', 1),
    (@id_pergunta, '240', 0),
    (@id_pergunta, '720', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o montante de uma aplicação a juros compostos de R$ 1.000, a 10% ao ano, por 3 anos?',
        'Difícil',
        'Use a fórmula M = C * (1 + i)ᵗ.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'R$ 1.300,00', 0),
    (@id_pergunta, 'R$ 1.331,00', 1),
    (@id_pergunta, 'R$ 1.400,00', 0),
    (@id_pergunta, 'R$ 1.452,00', 0),
    (@id_pergunta, 'R$ 3.000,00', 0);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o 5º termo da Progressão Geométrica (P.G.) com a₁ = 3 e razão q = 2?',
        'Difícil',
        'A fórmula é aₙ = a₁ * q^(n-1).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '24', 0),
    (@id_pergunta, '30', 0),
    (@id_pergunta, '32', 0),
    (@id_pergunta, '48', 1),
    (@id_pergunta, '64', 0);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor de log₃(81)?',
        'Difícil',
        'A que potência o 3 deve ser elevado para resultar em 81?'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '3', 0),
    (@id_pergunta, '4', 1),
    (@id_pergunta, '9', 0),
    (@id_pergunta, '27', 0),
    (@id_pergunta, '81', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Uma urna contém 4 bolas azuis e 6 bolas vermelhas. Qual a probabilidade de retirar 2 bolas azuis seguidas, sem reposição?',
        'Difícil',
        'Multiplique a probabilidade de tirar a primeira azul pela de tirar a segunda azul.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1/5', 0),
    (@id_pergunta, '2/15', 1),
    (@id_pergunta, '4/10', 0),
    (@id_pergunta, '6/25', 0),
    (@id_pergunta, '1/3', 0);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual a área de um hexágono regular de lado 6 cm?',
        'Difícil',
        'A área é 6 vezes a área de um triângulo equilátero de mesmo lado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '36√3 cm²', 0),
    (@id_pergunta, '54√3 cm²', 1),
    (@id_pergunta, '72√3 cm²', 0),
    (@id_pergunta, '108 cm²', 0),
    (@id_pergunta, '216 cm²', 0);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é o determinante da matriz [[2, 1], [3, 4]]?',
        'Difícil',
        'Calcule o produto da diagonal principal menos o produto da diagonal secundária.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2', 0),
    (@id_pergunta, '5', 1),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '11', 0),
    (@id_pergunta, '10', 0);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é a soma dos infinitos termos da P.G. (1/2, 1/4, 1/8, ...)?',
        'Difícil',
        'Use a fórmula da soma infinita: S = a₁ / (1 - q).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1', 1),
    (@id_pergunta, '2', 0),
    (@id_pergunta, '1/2', 0),
    (@id_pergunta, '3/4', 0),
    (@id_pergunta, 'Infinito', 0);
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Quantos anagramas tem a palavra "CASA"?',
        'Difícil',
        'Use a permutação com repetição: n! / (r₁! * r₂! * ...).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '24', 0),
    (@id_pergunta, '12', 1),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '6', 0),
    (@id_pergunta, '4', 0);
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual é o valor do número complexo z = (1 + i)²?',
        'Difícil',
        'Aplique o produto notável (a+b)² = a² + 2ab + b² e lembre que i² = -1.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2i', 1),
    (@id_pergunta, '1 - i', 0),
    (@id_pergunta, '2 - 2i', 0),
    (@id_pergunta, '2', 0),
    (@id_pergunta, '-2i', 0);
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o volume de uma esfera de raio 3 cm? (Use π = 3,14)',
        'Difícil',
        'A fórmula é V = (4/3) * π * r³.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '28,26 cm³', 0),
    (@id_pergunta, '37,68 cm³', 0),
    (@id_pergunta, '113,04 cm³', 1),
    (@id_pergunta, '94,2 cm³', 0),
    (@id_pergunta, '314 cm³', 0);
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o coeficiente angular da reta 4x + 2y - 6 = 0?',
        'Difícil',
        'Isole o "y" para colocar a equação na forma reduzida y = mx + c.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '4', 0),
    (@id_pergunta, '2', 0),
    (@id_pergunta, '-2', 1),
    (@id_pergunta, '-4', 0),
    (@id_pergunta, '3', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Quantos subconjuntos possui um conjunto com 4 elementos?',
        'Difícil',
        'O número de subconjuntos é dado por 2ⁿ, onde n é o número de elementos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '4', 0),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '16', 1),
    (@id_pergunta, '24', 0),
    (@id_pergunta, '32', 0);
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual a área de um setor circular com ângulo central de 60° e raio de 6 cm?',
        'Difícil',
        'A área do setor é (ângulo/360) * π * r².'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2π cm²', 0),
    (@id_pergunta, '4π cm²', 0),
    (@id_pergunta, '6π cm²', 1),
    (@id_pergunta, '8π cm²', 0),
    (@id_pergunta, '12π cm²', 0);
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o resto da divisão de x³ - 2x² + x + 5 por x - 1?',
        'Difícil',
        'Use o Teorema do Resto, calculando P(1).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1', 0),
    (@id_pergunta, '3', 0),
    (@id_pergunta, '5', 1),
    (@id_pergunta, '7', 0),
    (@id_pergunta, '9', 0);
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'De quantas formas podemos formar uma comissão de 3 pessoas a partir de um grupo de 10?',
        'Difícil',
        'Use a fórmula de combinação: C(n, p) = n! / (p! * (n-p)!).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '30', 0),
    (@id_pergunta, '72', 0),
    (@id_pergunta, '120', 1),
    (@id_pergunta, '240', 0),
    (@id_pergunta, '720', 0);
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o valor da tangente de 45 graus?',
        'Difícil',
        'Lembre-se que tan(x) = sen(x) / cos(x).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '0', 0),
    (@id_pergunta, '1/2', 0),
    (@id_pergunta, '√3/3', 0),
    (@id_pergunta, '1', 1),
    (@id_pergunta, '√3', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual o volume de um cone com raio da base 5 cm e altura 12 cm?',
        'Difícil',
        'A fórmula é V = (1/3) * π * r² * h.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '50π cm³', 0),
    (@id_pergunta, '75π cm³', 0),
    (@id_pergunta, '100π cm³', 1),
    (@id_pergunta, '120π cm³', 0),
    (@id_pergunta, '300π cm³', 0);
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Qual a solução da inequação 2x - 8 > 4?',
        'Difícil',
        'Isole o "x" como faria em uma equação normal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'x > 2', 0),
    (@id_pergunta, 'x < 2', 0),
    (@id_pergunta, 'x > 4', 0),
    (@id_pergunta, 'x < 6', 0),
    (@id_pergunta, 'x > 6', 1);
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        2,
        1,
        'Se a área de um círculo é 25π cm², qual é o seu diâmetro?',
        'Difícil',
        'Primeiro encontre o raio usando A = π * r², depois dobre o valor.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '5 cm', 0),
    (@id_pergunta, '10 cm', 1),
    (@id_pergunta, '12,5 cm', 0),
    (@id_pergunta, '20 cm', 0),
    (@id_pergunta, '25 cm', 0);
-- =================================================================
-- ||                       Biologia                              ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual organela celular é responsável pela respiração celular e produção de energia (ATP)?',
        'Fácil',
        'É conhecida como a "usina de energia" da célula.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ribossomo', 0),
    (@id_pergunta, 'Complexo de Golgi', 0),
    (@id_pergunta, 'Mitocôndria', 1),
    (@id_pergunta, 'Lisossomo', 0),
    (@id_pergunta, 'Núcleo', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o processo pelo qual as plantas produzem seu próprio alimento usando a luz solar?',
        'Fácil',
        'Envolve a clorofila e a conversão de gás carbônico em glicose.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Respiração', 0),
    (@id_pergunta, 'Transpiração', 0),
    (@id_pergunta, 'Fotossíntese', 1),
    (@id_pergunta, 'Digestão', 0),
    (@id_pergunta, 'Fagocitose', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual dos reinos a seguir agrupa seres procariontes, como as bactérias?',
        'Fácil',
        'É o reino mais primitivo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Reino Fungi', 0),
    (@id_pergunta, 'Reino Plantae', 0),
    (@id_pergunta, 'Reino Animalia', 0),
    (@id_pergunta, 'Reino Monera', 1),
    (@id_pergunta, 'Reino Protista', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o nome da molécula que carrega a informação genética dos seres vivos?',
        'Fácil',
        'Sua sigla é DNA.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'RNA', 0),
    (@id_pergunta, 'Proteína', 0),
    (@id_pergunta, 'Carboidrato', 0),
    (@id_pergunta, 'Lipídio', 0),
    (@id_pergunta, 'Ácido Desoxirribonucleico', 1);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual sistema do corpo humano é responsável pelo transporte de oxigênio e nutrientes?',
        'Fácil',
        'Envolve o coração, sangue e vasos sanguíneos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Sistema Nervoso', 0),
    (@id_pergunta, 'Sistema Digestório', 0),
    (@id_pergunta, 'Sistema Respiratório', 0),
    (@id_pergunta, 'Sistema Cardiovascular', 1),
    (@id_pergunta, 'Sistema Esquelético', 0);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Animais que se alimentam exclusivamente de plantas são chamados de:',
        'Fácil',
        'Pense em vacas, coelhos e cavalos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Carnívoros', 0),
    (@id_pergunta, 'Onívoros', 0),
    (@id_pergunta, 'Herbívoros', 1),
    (@id_pergunta, 'Detritívoros', 0),
    (@id_pergunta, 'Insetívoros', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o maior osso do corpo humano?',
        'Fácil',
        'Fica localizado na coxa.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Úmero', 0),
    (@id_pergunta, 'Fêmur', 1),
    (@id_pergunta, 'Tíbia', 0),
    (@id_pergunta, 'Costela', 0),
    (@id_pergunta, 'Crânio', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O conjunto de todos os ecossistemas da Terra é chamado de:',
        'Fácil',
        'É a camada do planeta onde existe vida.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Comunidade', 0),
    (@id_pergunta, 'População', 0),
    (@id_pergunta, 'Biosfera', 1),
    (@id_pergunta, 'Habitat', 0),
    (@id_pergunta, 'Nicho ecológico', 0);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual vitamina é obtida principalmente através da exposição à luz solar?',
        'Fácil',
        'É importante para a saúde dos ossos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Vitamina C', 0),
    (@id_pergunta, 'Vitamina A', 0),
    (@id_pergunta, 'Vitamina B12', 0),
    (@id_pergunta, 'Vitamina D', 1),
    (@id_pergunta, 'Vitamina K', 0);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual dos seguintes animais é um mamífero?',
        'Fácil',
        'A principal característica é a presença de glândulas mamárias.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Tubarão', 0),
    (@id_pergunta, 'Sapo', 0),
    (@id_pergunta, 'Baleia', 1),
    (@id_pergunta, 'Pinguim', 0),
    (@id_pergunta, 'Jacaré', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A gripe é uma doença causada por um:',
        'Fácil',
        'É um agente infeccioso microscópico que se replica dentro de células vivas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Fungo', 0),
    (@id_pergunta, 'Vírus', 1),
    (@id_pergunta, 'Bactéria', 0),
    (@id_pergunta, 'Protozoário', 0),
    (@id_pergunta, 'Verme', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é a principal função das raízes de uma planta?',
        'Fácil',
        'Além de fixar a planta, ela absorve algo essencial do solo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Realizar fotossíntese', 0),
    (@id_pergunta, 'Produzir flores', 0),
    (@id_pergunta, 'Absorver água e nutrientes', 1),
    (@id_pergunta, 'Armazenar energia solar', 0),
    (@id_pergunta, 'Realizar a polinização', 0);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O estudo das células é chamado de:',
        'Fácil',
        'O nome vem do grego "kytos" (célula) + "logos" (estudo).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Genética', 0),
    (@id_pergunta, 'Zoologia', 0),
    (@id_pergunta, 'Botânica', 0),
    (@id_pergunta, 'Citologia', 1),
    (@id_pergunta, 'Ecologia', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual gás é essencial para a respiração da maioria dos seres vivos?',
        'Fácil',
        'Está presente no ar que inspiramos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Gás Carbônico (CO₂)', 0),
    (@id_pergunta, 'Nitrogênio (N₂)', 0),
    (@id_pergunta, 'Oxigênio (O₂)', 1),
    (@id_pergunta, 'Hidrogênio (H₂)', 0),
    (@id_pergunta, 'Hélio (He)', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Como são chamados os seres vivos que produzem o seu próprio alimento?',
        'Fácil',
        'O nome significa "que se alimenta por si mesmo".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Consumidores', 0),
    (@id_pergunta, 'Decompositores', 0),
    (@id_pergunta, 'Heterotróficos', 0),
    (@id_pergunta, 'Autotróficos', 1),
    (@id_pergunta, 'Parasitas', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o órgão central do sistema nervoso humano?',
        'Fácil',
        'Está protegido pelo crânio.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Coração', 0),
    (@id_pergunta, 'Pulmão', 0),
    (@id_pergunta, 'Fígado', 0),
    (@id_pergunta, 'Estômago', 0),
    (@id_pergunta, 'Cérebro', 1);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A transformação da lagarta em borboleta é um exemplo de:',
        'Fácil',
        'É um processo de grande mudança na forma do corpo de um animal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Evolução', 0),
    (@id_pergunta, 'Metamorfose', 1),
    (@id_pergunta, 'Adaptação', 0),
    (@id_pergunta, 'Mutação', 0),
    (@id_pergunta, 'Clonagem', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Em uma cadeia alimentar, os fungos e as bactérias são classificados como:',
        'Fácil',
        'Eles reciclam a matéria orgânica morta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Produtores', 0),
    (@id_pergunta, 'Consumidores primários', 0),
    (@id_pergunta, 'Consumidores secundários', 0),
    (@id_pergunta, 'Decompositores', 1),
    (@id_pergunta, 'Predadores de topo', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual o nome do açúcar encontrado no leite?',
        'Fácil',
        'Pessoas com intolerância a ele não produzem a enzima lactase.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Glicose', 0),
    (@id_pergunta, 'Frutose', 0),
    (@id_pergunta, 'Sacarose', 0),
    (@id_pergunta, 'Lactose', 1),
    (@id_pergunta, 'Amido', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual dos cinco sentidos está relacionado ao olfato?',
        'Fácil',
        'É o sentido que nos permite perceber os cheiros.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Visão', 0),
    (@id_pergunta, 'Audição', 0),
    (@id_pergunta, 'Paladar', 0),
    (@id_pergunta, 'Tato', 0),
    (@id_pergunta, 'Olfato', 1);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A teoria da evolução por seleção natural foi proposta por qual cientista?',
        'Médio',
        'Ele viajou o mundo a bordo do navio HMS Beagle.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Gregor Mendel', 0),
    (@id_pergunta, 'Louis Pasteur', 0),
    (@id_pergunta, 'Charles Darwin', 1),
    (@id_pergunta, 'Lamarck', 0),
    (@id_pergunta, 'Lineu', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é o nome do processo de divisão celular que origina os gametas?',
        'Médio',
        'Reduz o número de cromossomos pela metade.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Mitose', 0),
    (@id_pergunta, 'Meiose', 1),
    (@id_pergunta, 'Brotamento', 0),
    (@id_pergunta, 'Cissiparidade', 0),
    (@id_pergunta, 'Fragmentação', 0);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual tipo sanguíneo é considerado o "doador universal"?',
        'Médio',
        'Não possui antígenos A ou B em suas hemácias.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'A+', 0),
    (@id_pergunta, 'B-', 0),
    (@id_pergunta, 'AB+', 0),
    (@id_pergunta, 'O-', 1),
    (@id_pergunta, 'A-', 0);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Em genética, um indivíduo que possui dois alelos diferentes para uma característica é chamado de:',
        'Médio',
        'O prefixo "hetero" significa diferente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Homozigoto dominante', 0),
    (@id_pergunta, 'Homozigoto recessivo', 0),
    (@id_pergunta, 'Heterozigoto', 1),
    (@id_pergunta, 'Híbrido', 0),
    (@id_pergunta, 'Puro', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A relação ecológica em que ambas as espécies se beneficiam e a convivência é obrigatória é chamada de:',
        'Médio',
        'Um exemplo clássico são os liquens (associação entre algas e fungos).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Comensalismo', 0),
    (@id_pergunta, 'Parasitismo', 0),
    (@id_pergunta, 'Mutualismo', 1),
    (@id_pergunta, 'Predatismo', 0),
    (@id_pergunta, 'Competição', 0);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual hormônio é responsável pela regulação dos níveis de açúcar no sangue?',
        'Médio',
        'É produzido no pâncreas e sua falta causa a diabetes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Adrenalina', 0),
    (@id_pergunta, 'Testosterona', 0),
    (@id_pergunta, 'Insulina', 1),
    (@id_pergunta, 'Estrogênio', 0),
    (@id_pergunta, 'Tiroxina', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'As plantas que não possuem vasos condutores de seiva, como os musgos, são classificadas como:',
        'Médio',
        'Elas são de pequeno porte e dependem da água para a reprodução.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Gimnospermas', 0),
    (@id_pergunta, 'Angiospermas', 0),
    (@id_pergunta, 'Pteridófitas', 0),
    (@id_pergunta, 'Briófitas', 1),
    (@id_pergunta, 'Algas', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Onde ocorre a maior parte da digestão e absorção de nutrientes no corpo humano?',
        'Médio',
        'É um longo tubo que se divide em duodeno, jejuno e íleo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Estômago', 0),
    (@id_pergunta, 'Intestino Grosso', 0),
    (@id_pergunta, 'Intestino Delgado', 1),
    (@id_pergunta, 'Fígado', 0),
    (@id_pergunta, 'Esôfago', 0);
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A febre amarela e a dengue são doenças transmitidas pelo mesmo vetor, que é o mosquito:',
        'Médio',
        'O nome científico dele é Aedes aegypti.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Anopheles', 0),
    (@id_pergunta, 'Culex', 0),
    (@id_pergunta, 'Aedes aegypti', 1),
    (@id_pergunta, 'Lutzomyia', 0),
    (@id_pergunta, 'Triatoma infestans', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual é a principal função dos glóbulos brancos (leucócitos) no sangue?',
        'Médio',
        'Eles fazem parte do sistema imunológico.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Transportar oxigênio', 0),
    (@id_pergunta, 'Coagulação sanguínea', 0),
    (@id_pergunta, 'Defesa do organismo', 1),
    (@id_pergunta, 'Transportar nutrientes', 0),
    (@id_pergunta, 'Produzir hormônios', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O processo de transcrição gênica consiste na:',
        'Médio',
        'É o primeiro passo para a expressão de um gene.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Duplicação da molécula de DNA', 0),
    (
        @id_pergunta,
        'Síntese de uma molécula de RNA a partir de um molde de DNA',
        1
    ),
    (
        @id_pergunta,
        'Síntese de proteínas nos ribossomos',
        0
    ),
    (@id_pergunta, 'Divisão do núcleo celular', 0),
    (@id_pergunta, 'Correção de erros no DNA', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Estruturas análogas em biologia evolutiva são aquelas que:',
        'Médio',
        'Exemplo: asas de insetos e asas de aves.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Possuem a mesma origem embrionária, mas funções diferentes',
        0
    ),
    (
        @id_pergunta,
        'Possuem origens embrionárias diferentes, mas a mesma função',
        1
    ),
    (
        @id_pergunta,
        'Não possuem função aparente no organismo',
        0
    ),
    (
        @id_pergunta,
        'São idênticas em função e origem',
        0
    ),
    (@id_pergunta, 'Existem apenas em fósseis', 0);
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O bioma brasileiro caracterizado por uma vegetação de savana, com árvores tortuosas e gramíneas, é o:',
        'Médio',
        'É considerado o "berço das águas" do Brasil.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Amazônia', 0),
    (@id_pergunta, 'Mata Atlântica', 0),
    (@id_pergunta, 'Cerrado', 1),
    (@id_pergunta, 'Caatinga', 0),
    (@id_pergunta, 'Pampa', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual das seguintes doenças NÃO é uma Infecção Sexualmente Transmissível (IST)?',
        'Médio',
        'É transmitida pela picada de um inseto infectado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'AIDS (HIV)', 0),
    (@id_pergunta, 'Sífilis', 0),
    (@id_pergunta, 'Gonorreia', 0),
    (@id_pergunta, 'Malária', 1),
    (@id_pergunta, 'HPV', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'As enzimas são moléculas de qual tipo de composto orgânico?',
        'Médio',
        'Elas atuam como catalisadores biológicos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Carboidratos', 0),
    (@id_pergunta, 'Lipídios', 0),
    (@id_pergunta, 'Proteínas', 1),
    (@id_pergunta, 'Ácidos Nucleicos', 0),
    (@id_pergunta, 'Vitaminas', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'No olho humano, a estrutura responsável por focar a luz na retina é o:',
        'Médio',
        'Funciona como uma lente convergente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Íris', 0),
    (@id_pergunta, 'Pupila', 0),
    (@id_pergunta, 'Cristalino', 1),
    (@id_pergunta, 'Córnea', 0),
    (@id_pergunta, 'Nervo óptico', 0);
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual das alternativas descreve corretamente a Primeira Lei de Mendel?',
        'Médio',
        'Também é conhecida como Lei da Segregação dos Fatores.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Os alelos para características diferentes segregam-se de forma independente.',
        0
    ),
    (
        @id_pergunta,
        'Cada característica é determinada por um par de fatores que se separam na formação dos gametas.',
        1
    ),
    (
        @id_pergunta,
        'As características adquiridas durante a vida são passadas aos descendentes.',
        0
    ),
    (
        @id_pergunta,
        'Apenas os mais aptos sobrevivem e se reproduzem.',
        0
    ),
    (
        @id_pergunta,
        'Existe uma dominância incompleta entre os alelos.',
        0
    );
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Os corais são animais pertencentes a qual filo?',
        'Médio',
        'O nome do filo se refere à presença de células urticantes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Porifera', 0),
    (@id_pergunta, 'Cnidaria', 1),
    (@id_pergunta, 'Mollusca', 0),
    (@id_pergunta, 'Annelida', 0),
    (@id_pergunta, 'Echinodermata', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O ciclo do nitrogênio é fundamental para os seres vivos porque este elemento é um componente essencial de:',
        'Médio',
        'Pense nas moléculas que formam os músculos e carregam a informação genética.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Carboidratos e Lipídios', 0),
    (@id_pergunta, 'Apenas Água', 0),
    (@id_pergunta, 'Proteínas e Ácidos Nucleicos', 1),
    (@id_pergunta, 'Sais minerais e Vitaminas', 0),
    (@id_pergunta, 'Glicose e Frutose', 0);
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual parte do sistema nervoso autônomo é responsável por preparar o corpo para situações de "luta ou fuga"?',
        'Médio',
        'Aumenta a frequência cardíaca e libera adrenalina.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Sistema Nervoso Central', 0),
    (
        @id_pergunta,
        'Sistema Nervoso Parassimpático',
        0
    ),
    (@id_pergunta, 'Sistema Nervoso Simpático', 1),
    (@id_pergunta, 'Sistema Nervoso Somático', 0),
    (@id_pergunta, 'Arco reflexo', 0);
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O processo de formação de novas espécies a partir de um ancestral comum é chamado de:',
        'Difícil',
        'É um dos principais mecanismos da macroevolução.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Seleção artificial', 0),
    (@id_pergunta, 'Deriva genética', 0),
    (@id_pergunta, 'Especiação', 1),
    (@id_pergunta, 'Convergência adaptativa', 0),
    (@id_pergunta, 'Irradiação adaptativa', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Na fotossíntese, a fase escura (ou ciclo de Calvin) ocorre em qual parte do cloroplasto?',
        'Difícil',
        'É na matriz gelatinosa do cloroplasto, onde o CO₂ é fixado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Membrana externa', 0),
    (@id_pergunta, 'Tilacoides', 0),
    (@id_pergunta, 'Granum', 0),
    (@id_pergunta, 'Estroma', 1),
    (@id_pergunta, 'Membrana interna', 0);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual das seguintes condições genéticas é um exemplo de aneuploidia?',
        'Difícil',
        'Envolve a alteração no número de um ou mais cromossomos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Anemia falciforme', 0),
    (
        @id_pergunta,
        'Síndrome de Down (Trissomia do 21)',
        1
    ),
    (@id_pergunta, 'Fenilcetonúria', 0),
    (@id_pergunta, 'Albinismo', 0),
    (@id_pergunta, 'Hemofilia', 0);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A bomba de sódio e potássio é um exemplo de:',
        'Difícil',
        'Move íons contra o gradiente de concentração, com gasto de ATP.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Transporte ativo', 1),
    (@id_pergunta, 'Difusão simples', 0),
    (@id_pergunta, 'Difusão facilitada', 0),
    (@id_pergunta, 'Osmose', 0),
    (@id_pergunta, 'Endocitose', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A Segunda Lei de Mendel, ou Lei da Segregação Independente, só é válida para genes que se localizam em:',
        'Difícil',
        'Se os genes estiverem no mesmo cromossomo, pode ocorrer ligação gênica (linkage).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Cromossomos homólogos diferentes',
        1
    ),
    (@id_pergunta, 'No mesmo cromossomo', 0),
    (@id_pergunta, 'Cromossomos sexuais', 0),
    (
        @id_pergunta,
        'Apenas em cromossomos autossômicos',
        0
    ),
    (@id_pergunta, 'No DNA mitocondrial', 0);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O processo de magnificação trófica (ou bioacumulação) refere-se:',
        'Difícil',
        'Um exemplo clássico é o acúmulo de DDT ou mercúrio.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Ao aumento da biomassa ao longo da cadeia alimentar',
        0
    ),
    (
        @id_pergunta,
        'À perda de energia a cada nível trófico',
        0
    ),
    (
        @id_pergunta,
        'Ao acúmulo de compostos não biodegradáveis nos níveis mais altos da cadeia alimentar',
        1
    ),
    (
        @id_pergunta,
        'À diversidade de espécies em um ecossistema',
        0
    ),
    (@id_pergunta, 'À sucessão ecológica primária', 0);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'No ciclo cardíaco, o som "TUM" corresponde ao fechamento de quais valvas?',
        'Difícil',
        'É o primeiro som (bulha) que se ouve em uma ausculta cardíaca.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Valvas aórtica e pulmonar', 0),
    (
        @id_pergunta,
        'Valvas tricúspide e mitral (atrioventriculares)',
        1
    ),
    (@id_pergunta, 'Apenas a valva mitral', 0),
    (@id_pergunta, 'Apenas a valva aórtica', 0),
    (
        @id_pergunta,
        'Não corresponde ao fechamento de valvas',
        0
    );
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O Operon Lac, em bactérias, é um exemplo de mecanismo de:',
        'Difícil',
        'Controla quando um gene deve ou não ser expresso.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Mutação gênica', 0),
    (@id_pergunta, 'Replicação do DNA', 0),
    (@id_pergunta, 'Regulação da expressão gênica', 1),
    (@id_pergunta, 'Crossing-over', 0),
    (@id_pergunta, 'Tradução de proteínas', 0);
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A teoria endossimbiótica explica a origem de quais organelas celulares eucarióticas?',
        'Difícil',
        'Essas organelas possuem DNA próprio e dupla membrana.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Retículo endoplasmático e Complexo de Golgi',
        0
    ),
    (@id_pergunta, 'Mitocôndrias e Cloroplastos', 1),
    (@id_pergunta, 'Lisossomos e Peroxissomos', 0),
    (@id_pergunta, 'Núcleo e Ribossomos', 0),
    (@id_pergunta, 'Centríolos e Vacúolos', 0);
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual hormônio vegetal está relacionado com o amadurecimento dos frutos e a queda das folhas?',
        'Difícil',
        'É um gás liberado pelas plantas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Auxina', 0),
    (@id_pergunta, 'Giberelina', 0),
    (@id_pergunta, 'Citocinina', 0),
    (@id_pergunta, 'Etileno', 1),
    (@id_pergunta, 'Ácido abscísico', 0);
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A reação em cadeia da polimerase (PCR) é uma técnica de biologia molecular usada para:',
        'Difícil',
        'É fundamental para testes de DNA e diagnóstico de doenças.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Separar proteínas por tamanho', 0),
    (@id_pergunta, 'Clonar organismos inteiros', 0),
    (
        @id_pergunta,
        'Amplificar (fazer muitas cópias) de um segmento específico de DNA',
        1
    ),
    (@id_pergunta, 'Sequenciar o genoma completo', 0),
    (
        @id_pergunta,
        'Produzir anticorpos monoclonais',
        0
    );
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Em vertebrados, a principal excreta nitrogenada dos peixes é a(o) ______, enquanto a das aves é o(a) ______.',
        'Difícil',
        'Pense na toxicidade e na necessidade de água para diluição de cada excreta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ureia; Amônia', 0),
    (@id_pergunta, 'Ácido úrico; Ureia', 0),
    (@id_pergunta, 'Amônia; Ácido úrico', 1),
    (@id_pergunta, 'Ureia; Ácido úrico', 0),
    (@id_pergunta, 'Amônia; Ureia', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O potencial de ação em um neurônio é desencadeado pela:',
        'Difícil',
        'Inicia-se quando o estímulo atinge o limiar de excitação.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Saída de íons potássio (K+)', 0),
    (
        @id_pergunta,
        'Entrada de íons sódio (Na+) através de canais voltagem-dependentes',
        1
    ),
    (
        @id_pergunta,
        'Ação da bomba de sódio e potássio',
        0
    ),
    (@id_pergunta, 'Entrada de íons cloreto (Cl-)', 0),
    (
        @id_pergunta,
        'Liberação de neurotransmissores na fenda sináptica',
        0
    );
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O "crossing-over" ou permutação gênica, que aumenta a variabilidade genética, ocorre em qual fase da meiose?',
        'Difícil',
        'É a primeira subfase da primeira divisão meiótica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Prófase I', 1),
    (@id_pergunta, 'Metáfase I', 0),
    (@id_pergunta, 'Anáfase II', 0),
    (@id_pergunta, 'Telófase II', 0),
    (@id_pergunta, 'Prófase II', 0);
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Plantas de dia curto florescem quando:',
        'Difícil',
        'O nome pode enganar; o fator determinante é a duração da noite.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'O período de luz é maior que um valor crítico',
        0
    ),
    (
        @id_pergunta,
        'O período de escuridão ininterrupta é maior que um valor crítico',
        1
    ),
    (
        @id_pergunta,
        'Recebem um flash de luz durante a noite',
        0
    ),
    (@id_pergunta, 'A temperatura está elevada', 0),
    (
        @id_pergunta,
        'O dia e a noite têm a mesma duração',
        0
    );
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'Qual o papel da transcriptase reversa no ciclo de vida de retrovírus como o HIV?',
        'Difícil',
        'O nome da enzima já indica sua função contrária à usual.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Sintetizar RNA a partir de DNA',
        0
    ),
    (
        @id_pergunta,
        'Sintetizar DNA a partir de um molde de RNA',
        1
    ),
    (
        @id_pergunta,
        'Destruir o DNA da célula hospedeira',
        0
    ),
    (
        @id_pergunta,
        'Montar novas partículas virais',
        0
    ),
    (
        @id_pergunta,
        'Inserir o DNA viral no genoma do hospedeiro',
        0
    );
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'A estrutura que impede o alimento de entrar no sistema respiratório durante a deglutição é a:',
        'Difícil',
        'É uma cartilagem que fecha a entrada da laringe.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Faringe', 0),
    (@id_pergunta, 'Laringe', 0),
    (@id_pergunta, 'Glote', 0),
    (@id_pergunta, 'Epiglote', 1),
    (@id_pergunta, 'Traqueia', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O equilíbrio de Hardy-Weinberg descreve uma situação hipotética em que:',
        'Difícil',
        'Nessa situação, não ocorre evolução.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A seleção natural atua intensamente',
        0
    ),
    (
        @id_pergunta,
        'A população está evoluindo rapidamente',
        0
    ),
    (
        @id_pergunta,
        'As frequências alélicas e genotípicas de uma população permanecem constantes',
        1
    ),
    (
        @id_pergunta,
        'Ocorrem altas taxas de mutação e migração',
        0
    ),
    (
        @id_pergunta,
        'A população é pequena e sofre deriva genética',
        0
    );
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'No sistema imune, os linfócitos T auxiliares (CD4) são responsáveis principalmente por:',
        'Difícil',
        'Eles são o principal alvo do vírus HIV.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Produzir anticorpos', 0),
    (
        @id_pergunta,
        'Ativar outras células do sistema imune, como linfócitos B e T citotóxicos',
        1
    ),
    (
        @id_pergunta,
        'Realizar fagocitose de patógenos',
        0
    ),
    (
        @id_pergunta,
        'Destruir diretamente células infectadas',
        0
    ),
    (@id_pergunta, 'Atuar como células de memória', 0);
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        3,
        1,
        'O xilema e o floema são tecidos vegetais responsáveis, respectivamente, pelo transporte de:',
        'Difícil',
        'Lembre-se: um transporta a seiva bruta e o outro a seiva elaborada.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Seiva elaborada e seiva bruta', 0),
    (@id_pergunta, 'Seiva bruta e seiva elaborada', 1),
    (@id_pergunta, 'Gases e água', 0),
    (@id_pergunta, 'Hormônios e nutrientes', 0),
    (@id_pergunta, 'Açúcares e sais minerais', 0);
-- =================================================================
-- ||                        Física                               ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a unidade de medida de Força no Sistema Internacional (SI)?',
        'Fácil',
        'O nome da unidade é uma homenagem ao cientista que formulou as leis do movimento.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Joule', 0),
    (@id_pergunta, 'Watt', 0),
    (@id_pergunta, 'Newton', 1),
    (@id_pergunta, 'Pascal', 0),
    (@id_pergunta, 'Volt', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A Primeira Lei de Newton é também conhecida como o Princípio da:',
        'Fácil',
        'Um corpo em repouso tende a permanecer em repouso...'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ação e Reação', 0),
    (@id_pergunta, 'Inércia', 1),
    (@id_pergunta, 'Aceleração', 0),
    (@id_pergunta, 'Energia', 0),
    (@id_pergunta, 'Gravitação', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual tipo de energia está associado ao movimento de um corpo?',
        'Fácil',
        'O nome vem do grego "kinesis", que significa movimento.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Energia Potencial', 0),
    (@id_pergunta, 'Energia Térmica', 0),
    (@id_pergunta, 'Energia Cinética', 1),
    (@id_pergunta, 'Energia Elástica', 0),
    (@id_pergunta, 'Energia Nuclear', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O fenômeno que ocorre quando a luz bate em uma superfície e volta para o seu meio de origem é chamado de:',
        'Fácil',
        'É o que nos permite ver nossa imagem em um espelho.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Refração', 0),
    (@id_pergunta, 'Absorção', 0),
    (@id_pergunta, 'Difração', 0),
    (@id_pergunta, 'Reflexão', 1),
    (@id_pergunta, 'Dispersão', 0);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a grandeza física que mede o grau de agitação das moléculas de um corpo?',
        'Fácil',
        'Medimos com um termômetro.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Calor', 0),
    (@id_pergunta, 'Temperatura', 1),
    (@id_pergunta, 'Pressão', 0),
    (@id_pergunta, 'Energia', 0),
    (@id_pergunta, 'Trabalho', 0);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Materiais que permitem a passagem de corrente elétrica com facilidade são chamados de:',
        'Fácil',
        'Metais como cobre e alumínio são bons exemplos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Isolantes', 0),
    (@id_pergunta, 'Semicondutores', 0),
    (@id_pergunta, 'Condutores', 1),
    (@id_pergunta, 'Resistores', 0),
    (@id_pergunta, 'Capacitores', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A força que atrai os corpos para o centro da Terra é chamada de:',
        'Fácil',
        'É o motivo pelo qual as coisas caem.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Força Elétrica', 0),
    (@id_pergunta, 'Força Magnética', 0),
    (@id_pergunta, 'Força de Atrito', 0),
    (@id_pergunta, 'Força Peso', 1),
    (@id_pergunta, 'Força Normal', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a unidade de medida de potência no Sistema Internacional?',
        'Fácil',
        'A mesma unidade que mede a potência de lâmpadas e chuveiros elétricos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Joule', 0),
    (@id_pergunta, 'Ampere', 0),
    (@id_pergunta, 'Watt', 1),
    (@id_pergunta, 'Volt', 0),
    (@id_pergunta, 'Ohm', 0);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A mudança do estado sólido para o líquido é chamada de:',
        'Fácil',
        'É o que acontece com o gelo fora do congelador.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Vaporização', 0),
    (@id_pergunta, 'Solidificação', 0),
    (@id_pergunta, 'Condensação', 0),
    (@id_pergunta, 'Sublimação', 0),
    (@id_pergunta, 'Fusão', 1);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual instrumento é usado para medir a corrente elétrica?',
        'Fácil',
        'Seu nome vem da unidade de medida da corrente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Voltímetro', 0),
    (@id_pergunta, 'Amperímetro', 1),
    (@id_pergunta, 'Ohmetro', 0),
    (@id_pergunta, 'Termômetro', 0),
    (@id_pergunta, 'Barômetro', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A variação da velocidade em função do tempo é chamada de:',
        'Fácil',
        'Quando um carro "acelera", ele está mudando sua velocidade.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Deslocamento', 0),
    (@id_pergunta, 'Aceleração', 1),
    (@id_pergunta, 'Força', 0),
    (@id_pergunta, 'Trabalho', 0),
    (@id_pergunta, 'Inércia', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O som é uma onda do tipo:',
        'Fácil',
        'Precisa de um meio material para se propagar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Eletromagnética', 0),
    (@id_pergunta, 'Mecânica', 1),
    (@id_pergunta, 'Transversal', 0),
    (@id_pergunta, 'Luminosa', 0),
    (@id_pergunta, 'Gravitacional', 0);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual das cores abaixo NÃO é uma cor primária da luz?',
        'Fácil',
        'A mistura das três cores primárias da luz resulta em branco.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Vermelho', 0),
    (@id_pergunta, 'Verde', 0),
    (@id_pergunta, 'Azul', 0),
    (@id_pergunta, 'Amarelo', 1),
    (@id_pergunta, 'Todas são primárias', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A mudança de estado gasoso para o líquido é chamada de:',
        'Fácil',
        'É o que forma as gotículas de água em uma janela fria.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Fusão', 0),
    (@id_pergunta, 'Vaporização', 0),
    (@id_pergunta, 'Condensação', 1),
    (@id_pergunta, 'Solidificação', 0),
    (@id_pergunta, 'Sublimação', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A unidade de medida da frequência de uma onda é:',
        'Fácil',
        'O nome homenageia um físico alemão.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Metro', 0),
    (@id_pergunta, 'Segundo', 0),
    (@id_pergunta, 'Hertz', 1),
    (@id_pergunta, 'Newton', 0),
    (@id_pergunta, 'Decibel', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é o nome da força que se opõe ao movimento entre duas superfícies em contato?',
        'Fácil',
        'É o que nos permite caminhar sem escorregar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Força Peso', 0),
    (@id_pergunta, 'Força Normal', 0),
    (@id_pergunta, 'Força de Atrito', 1),
    (@id_pergunta, 'Força Centrípeta', 0),
    (@id_pergunta, 'Empuxo', 0);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O desvio da luz ao passar de um meio para outro é chamado de:',
        'Fácil',
        'É por isso que um lápis parece "quebrado" dentro de um copo com água.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Reflexão', 0),
    (@id_pergunta, 'Refração', 1),
    (@id_pergunta, 'Difração', 0),
    (@id_pergunta, 'Polarização', 0),
    (@id_pergunta, 'Interferência', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um ímã possui dois polos, que são:',
        'Fácil',
        'Semelhante aos polos geográficos da Terra.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Positivo e Negativo', 0),
    (@id_pergunta, 'Leste e Oeste', 0),
    (@id_pergunta, 'Norte e Sul', 1),
    (@id_pergunta, 'Atração e Repulsão', 0),
    (@id_pergunta, 'Entrada e Saída', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A escala de temperatura mais utilizada no Brasil é a:',
        'Fácil',
        'Utilizada na maioria dos países, exceto nos EUA.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Kelvin', 0),
    (@id_pergunta, 'Fahrenheit', 0),
    (@id_pergunta, 'Celsius', 1),
    (@id_pergunta, 'Rankine', 0),
    (@id_pergunta, 'Newton', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a principal fonte de energia do Sistema Solar?',
        'Fácil',
        'É a estrela em torno da qual a Terra orbita.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Lua', 0),
    (@id_pergunta, 'Júpiter', 0),
    (@id_pergunta, 'Terra', 0),
    (@id_pergunta, 'Sol', 1),
    (@id_pergunta, 'Marte', 0);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Segundo a 2ª Lei de Newton, se uma força de 10 N é aplicada em um corpo de 2 kg, qual é a sua aceleração?',
        'Médio',
        'Use a fórmula F = m * a.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2 m/s²', 0),
    (@id_pergunta, '5 m/s²', 1),
    (@id_pergunta, '10 m/s²', 0),
    (@id_pergunta, '12 m/s²', 0),
    (@id_pergunta, '20 m/s²', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um carro se move a 72 km/h. Qual é a sua velocidade em m/s?',
        'Médio',
        'Para converter km/h para m/s, divida por 3,6.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 m/s', 0),
    (@id_pergunta, '15 m/s', 0),
    (@id_pergunta, '20 m/s', 1),
    (@id_pergunta, '25 m/s', 0),
    (@id_pergunta, '36 m/s', 0);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'De acordo com a Lei de Ohm, se um resistor de 10 Ω é submetido a uma tensão de 120 V, qual é a corrente que o atravessa?',
        'Médio',
        'Use a fórmula V = R * i.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 A', 0),
    (@id_pergunta, '12 A', 1),
    (@id_pergunta, '120 A', 0),
    (@id_pergunta, '1200 A', 0),
    (@id_pergunta, '1,2 A', 0);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um objeto de 4 kg está se movendo a 5 m/s. Qual é a sua energia cinética?',
        'Médio',
        'A fórmula é Ec = (m * v²) / 2.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '20 J', 0),
    (@id_pergunta, '40 J', 0),
    (@id_pergunta, '50 J', 1),
    (@id_pergunta, '80 J', 0),
    (@id_pergunta, '100 J', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A lei que afirma que "a energia total de um sistema isolado permanece constante" é o Princípio da:',
        'Médio',
        'A energia não pode ser criada nem destruída, apenas transformada.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Conservação da Massa', 0),
    (@id_pergunta, 'Conservação da Carga Elétrica', 0),
    (@id_pergunta, 'Conservação da Energia', 1),
    (@id_pergunta, 'Conservação do Momento Linear', 0),
    (@id_pergunta, 'Incerteza de Heisenberg', 0);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual o tipo de lente usada para corrigir a miopia?',
        'Médio',
        'Miopia ocorre quando a imagem se forma antes da retina. A lente deve espalhar os raios de luz.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Convergente', 0),
    (@id_pergunta, 'Divergente', 1),
    (@id_pergunta, 'Plana', 0),
    (@id_pergunta, 'Biconvexa', 0),
    (@id_pergunta, 'Cilíndrica', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O processo de transferência de calor por meio de ondas eletromagnéticas é chamado de:',
        'Médio',
        'É assim que o Sol aquece a Terra.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Condução', 0),
    (@id_pergunta, 'Convecção', 0),
    (@id_pergunta, 'Irradiação', 1),
    (@id_pergunta, 'Advecção', 0),
    (@id_pergunta, 'Evaporação', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A força que um fluido exerce sobre um corpo nele imerso, dirigida para cima, é chamada de:',
        'Médio',
        'Recebe o nome do cientista que a descobriu na sua banheira.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Pressão', 0),
    (@id_pergunta, 'Peso', 0),
    (@id_pergunta, 'Empuxo', 1),
    (@id_pergunta, 'Tensão superficial', 0),
    (@id_pergunta, 'Viscosidade', 0);
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual o trabalho realizado por uma força de 20 N que desloca um objeto por 5 metros na mesma direção e sentido da força?',
        'Médio',
        'Trabalho = Força x Deslocamento.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '4 J', 0),
    (@id_pergunta, '25 J', 0),
    (@id_pergunta, '50 J', 0),
    (@id_pergunta, '100 J', 1),
    (@id_pergunta, '200 J', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A mudança aparente na frequência de uma onda causada pelo movimento relativo entre a fonte e o observador é conhecida como:',
        'Médio',
        'É o que faz o som de uma ambulância parecer mais agudo quando se aproxima e mais grave quando se afasta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Efeito Joule', 0),
    (@id_pergunta, 'Efeito Doppler', 1),
    (@id_pergunta, 'Efeito Estufa', 0),
    (@id_pergunta, 'Efeito Tyndall', 0),
    (@id_pergunta, 'Efeito Fotoelétrico', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um objeto é abandonado em queda livre (g=10 m/s²). Qual será sua velocidade após 3 segundos?',
        'Médio',
        'Use a fórmula v = v₀ + a*t.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 m/s', 0),
    (@id_pergunta, '15 m/s', 0),
    (@id_pergunta, '30 m/s', 1),
    (@id_pergunta, '45 m/s', 0),
    (@id_pergunta, '100 m/s', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A Terceira Lei de Newton estabelece que para toda ação existe uma reação:',
        'Médio',
        'Pense em como um foguete é impulsionado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'De menor intensidade e sentido oposto',
        0
    ),
    (
        @id_pergunta,
        'De mesma intensidade e mesmo sentido',
        0
    ),
    (
        @id_pergunta,
        'De mesma intensidade e sentido oposto',
        1
    ),
    (
        @id_pergunta,
        'De maior intensidade e mesmo sentido',
        0
    ),
    (@id_pergunta, 'Que ocorre instantes depois', 0);
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual a potência elétrica de um chuveiro que opera com 220 V e é percorrido por uma corrente de 20 A?',
        'Médio',
        'Use a fórmula P = V * i.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '11 W', 0),
    (@id_pergunta, '220 W', 0),
    (@id_pergunta, '2200 W', 0),
    (@id_pergunta, '4400 W', 1),
    (@id_pergunta, '440 W', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A grandeza física que relaciona a massa de um corpo com o seu volume é a:',
        'Médio',
        'Um quilo de chumbo e um quilo de algodão têm massas iguais, mas esta grandeza é diferente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Pressão', 0),
    (@id_pergunta, 'Densidade', 1),
    (@id_pergunta, 'Peso', 0),
    (@id_pergunta, 'Força', 0),
    (@id_pergunta, 'Empuxo', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A soma das energias cinética e potencial de um sistema é chamada de energia:',
        'Médio',
        'É a energia total de movimento e posição.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Térmica', 0),
    (@id_pergunta, 'Elétrica', 0),
    (@id_pergunta, 'Nuclear', 0),
    (@id_pergunta, 'Mecânica', 1),
    (@id_pergunta, 'Química', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um espelho convexo sempre forma uma imagem:',
        'Médio',
        'Pense nos espelhos de segurança de lojas e garagens.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Real, invertida e maior', 0),
    (@id_pergunta, 'Virtual, direita e menor', 1),
    (@id_pergunta, 'Real, direita e menor', 0),
    (@id_pergunta, 'Virtual, invertida e maior', 0),
    (
        @id_pergunta,
        'Real, direita e do mesmo tamanho',
        0
    );
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A Primeira Lei da Termodinâmica é uma aplicação do princípio da conservação de:',
        'Médio',
        'Relaciona trabalho, calor e variação da energia interna.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Massa', 0),
    (@id_pergunta, 'Carga', 0),
    (@id_pergunta, 'Energia', 1),
    (@id_pergunta, 'Momento', 0),
    (@id_pergunta, 'Matéria', 0);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a quantidade de calor necessária para elevar em 10°C a temperatura de 20g de água? (calor específico da água = 1 cal/g°C)',
        'Médio',
        'Use a fórmula do calor sensível: Q = m * c * ΔT.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '2 cal', 0),
    (@id_pergunta, '30 cal', 0),
    (@id_pergunta, '100 cal', 0),
    (@id_pergunta, '200 cal', 1),
    (@id_pergunta, '2000 cal', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O momento linear (ou quantidade de movimento) de um corpo é o produto de sua massa pela sua:',
        'Médio',
        'É uma medida da "inércia em movimento".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Aceleração', 0),
    (@id_pergunta, 'Velocidade', 1),
    (@id_pergunta, 'Posição', 0),
    (@id_pergunta, 'Força', 0),
    (@id_pergunta, 'Energia', 0);
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A associação de resistores em série resulta em uma resistência equivalente que é:',
        'Médio',
        'Pense em colocar vários obstáculos um após o outro em um caminho.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A soma das resistências individuais',
        1
    ),
    (
        @id_pergunta,
        'A média das resistências individuais',
        0
    ),
    (
        @id_pergunta,
        'Menor que a menor das resistências',
        0
    ),
    (
        @id_pergunta,
        'O inverso da soma dos inversos',
        0
    ),
    (
        @id_pergunta,
        'Igual à maior das resistências',
        0
    );
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A lei da indução eletromagnética, que descreve como um campo magnético variável pode gerar uma corrente elétrica, foi formulada por:',
        'Difícil',
        'Esta lei é a base para o funcionamento de geradores e transformadores.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ampère', 0),
    (@id_pergunta, 'Ohm', 0),
    (@id_pergunta, 'Faraday', 1),
    (@id_pergunta, 'Coulomb', 0),
    (@id_pergunta, 'Maxwell', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Segundo a Teoria da Relatividade Especial de Einstein, qual das seguintes grandezas NÃO é relativa e sim absoluta?',
        'Difícil',
        'É a constante "c" que aparece na famosa equação E=mc².'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Tempo', 0),
    (@id_pergunta, 'Espaço', 0),
    (@id_pergunta, 'Massa', 0),
    (@id_pergunta, 'A velocidade da luz no vácuo', 1),
    (@id_pergunta, 'Velocidade do observador', 0);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual o rendimento de uma máquina de Carnot que opera entre as temperaturas de 500 K (fonte quente) e 300 K (fonte fria)?',
        'Difícil',
        'A fórmula do rendimento é η = 1 - (Tfria / Tquente).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '20%', 0),
    (@id_pergunta, '40%', 1),
    (@id_pergunta, '50%', 0),
    (@id_pergunta, '60%', 0),
    (@id_pergunta, '100%', 0);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O Efeito Fotoelétrico, explicado por Einstein, demonstra que a luz pode se comportar como:',
        'Difícil',
        'A luz, neste caso, é composta por pacotes de energia chamados fótons.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Apenas uma onda', 0),
    (@id_pergunta, 'Uma partícula (fóton)', 1),
    (@id_pergunta, 'Um fluido', 0),
    (@id_pergunta, 'Um campo magnético', 0),
    (@id_pergunta, 'Um gás ideal', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Em uma colisão perfeitamente elástica entre dois corpos, quais grandezas são conservadas?',
        'Difícil',
        'Pense tanto na energia quanto no momento do sistema.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Apenas a energia cinética', 0),
    (@id_pergunta, 'Apenas o momento linear', 0),
    (
        @id_pergunta,
        'A energia cinética e o momento linear',
        1
    ),
    (@id_pergunta, 'Apenas a energia potencial', 0),
    (@id_pergunta, 'Nenhuma das duas', 0);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'A Segunda Lei da Termodinâmica estabelece que a ______ de um sistema isolado tende a aumentar com o tempo.',
        'Difícil',
        'Esta grandeza é uma medida do grau de desordem ou aleatoriedade de um sistema.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Energia interna', 0),
    (@id_pergunta, 'Entropia', 1),
    (@id_pergunta, 'Temperatura', 0),
    (@id_pergunta, 'Pressão', 0),
    (@id_pergunta, 'Entalpia', 0);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um objeto colocado a 30 cm de uma lente convergente de distância focal 15 cm terá sua imagem formada a que distância da lente?',
        'Difícil',
        'Use a equação dos fabricantes de lentes: 1/f = 1/p + 1/p''.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '10 cm', 0),
    (@id_pergunta, '15 cm', 0),
    (@id_pergunta, '20 cm', 0),
    (@id_pergunta, '30 cm', 1),
    (@id_pergunta, '-15 cm', 0);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a resistência equivalente de dois resistores, de 10 Ω e 30 Ω, associados em paralelo?',
        'Difícil',
        'Use a fórmula 1/Req = 1/R₁ + 1/R₂.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '40 Ω', 0),
    (@id_pergunta, '20 Ω', 0),
    (@id_pergunta, '7,5 Ω', 1),
    (@id_pergunta, '15 Ω', 0),
    (@id_pergunta, '4 Ω', 0);
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O princípio que afirma ser impossível determinar simultaneamente e com precisão a posição e o momento de uma partícula é o Princípio da:',
        'Difícil',
        'É um conceito fundamental da mecânica quântica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Exclusão de Pauli', 0),
    (@id_pergunta, 'Incerteza de Heisenberg', 1),
    (@id_pergunta, 'Equivalência de Einstein', 0),
    (@id_pergunta, 'Superposição Quântica', 0),
    (@id_pergunta, 'Dualidade Onda-Partícula', 0);
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual é a força de atração gravitacional entre duas massas de 1 kg cada, separadas por 1 metro de distância? (Use G ≈ 6,67 x 10⁻¹¹ N·m²/kg²)',
        'Difícil',
        'A força será numericamente igual à constante de gravitação universal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '9,8 N', 0),
    (@id_pergunta, '1 N', 0),
    (@id_pergunta, '6,67 x 10⁻¹¹ N', 1),
    (@id_pergunta, '0 N', 0),
    (@id_pergunta, '1,6 x 10⁻¹⁹ N', 0);
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O período de um pêndulo simples depende principalmente:',
        'Difícil',
        'Não depende da massa do objeto, mas sim de seu comprimento e da gravidade local.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Da massa e da amplitude', 0),
    (
        @id_pergunta,
        'Do seu comprimento e da gravidade',
        1
    ),
    (@id_pergunta, 'Apenas da massa', 0),
    (
        @id_pergunta,
        'Apenas da amplitude da oscilação',
        0
    ),
    (@id_pergunta, 'Da cor do objeto', 0);
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'As equações de Maxwell unificaram quais áreas da física?',
        'Difícil',
        'Demonstraram que a luz é uma onda composta por esses dois campos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Termodinâmica e Mecânica Quântica',
        0
    ),
    (
        @id_pergunta,
        'Eletricidade, Magnetismo e Óptica',
        1
    ),
    (
        @id_pergunta,
        'Gravitação e Mecânica Clássica',
        0
    ),
    (@id_pergunta, 'Física Nuclear e Relatividade', 0),
    (@id_pergunta, 'Acústica e Fluidodinâmica', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual a capacitância equivalente de dois capacitores de 10 μF e 40 μF associados em série?',
        'Difícil',
        'A fórmula para capacitores em série é similar à de resistores em paralelo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '50 μF', 0),
    (@id_pergunta, '25 μF', 0),
    (@id_pergunta, '8 μF', 1),
    (@id_pergunta, '10 μF', 0),
    (@id_pergunta, '400 μF', 0);
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um isótopo radioativo tem uma meia-vida de 10 anos. Após 30 anos, qual porcentagem da amostra original terá restado?',
        'Difícil',
        '30 anos correspondem a 3 períodos de meia-vida.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '50%', 0),
    (@id_pergunta, '25%', 0),
    (@id_pergunta, '12,5%', 1),
    (@id_pergunta, '6,25%', 0),
    (@id_pergunta, '0%', 0);
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O fenômeno da supercondutividade é caracterizado por:',
        'Difícil',
        'Ocorre em certos materiais a temperaturas extremamente baixas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Resistência elétrica infinita', 0),
    (@id_pergunta, 'Resistência elétrica nula', 1),
    (@id_pergunta, 'Capacitância nula', 0),
    (@id_pergunta, 'Magnetismo extremamente forte', 0),
    (@id_pergunta, 'Emissão de luz espontânea', 0);
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O momento de inércia de um corpo depende:',
        'Difícil',
        'É a resistência de um corpo à rotação. Não depende da velocidade.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Da velocidade angular do corpo',
        0
    ),
    (
        @id_pergunta,
        'Da sua massa e da distribuição dessa massa em relação ao eixo de rotação',
        1
    ),
    (
        @id_pergunta,
        'Apenas da sua velocidade linear',
        0
    ),
    (@id_pergunta, 'Apenas da força aplicada', 0),
    (@id_pergunta, 'Da aceleração angular', 0);
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Qual princípio explica por que um avião voa?',
        'Difícil',
        'Relaciona a velocidade de um fluido com a sua pressão.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Princípio de Arquimedes', 0),
    (@id_pergunta, 'Princípio de Pascal', 0),
    (@id_pergunta, 'Equação de Torricelli', 0),
    (@id_pergunta, 'Princípio de Bernoulli', 1),
    (@id_pergunta, 'Lei de Stevin', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O que é um buraco negro, em termos de gravidade e velocidade de escape?',
        'Difícil',
        'A gravidade é tão intensa que nada pode escapar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Uma região onde a velocidade de escape é menor que a da luz',
        0
    ),
    (
        @id_pergunta,
        'Uma região onde a velocidade de escape é maior que a da luz',
        1
    ),
    (
        @id_pergunta,
        'Uma estrela com gravidade zero',
        0
    ),
    (@id_pergunta, 'Um planeta sem atmosfera', 0),
    (@id_pergunta, 'Uma galáxia sem estrelas', 0);
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'O fenômeno da difração é mais acentuado quando o tamanho do obstáculo ou fenda é:',
        'Difícil',
        'A onda contorna o obstáculo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Muito maior que o comprimento de onda',
        0
    ),
    (
        @id_pergunta,
        'Da mesma ordem de grandeza do comprimento de onda',
        1
    ),
    (
        @id_pergunta,
        'Muito menor que o comprimento de onda',
        0
    ),
    (
        @id_pergunta,
        'Independente do comprimento de onda',
        0
    ),
    (@id_pergunta, 'Nulo', 0);
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        4,
        1,
        'Um elétron movendo-se perpendicularmente a um campo magnético uniforme descreverá uma trajetória:',
        'Difícil',
        'A força magnética atua como uma força centrípeta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Retilínea', 0),
    (@id_pergunta, 'Parabólica', 0),
    (@id_pergunta, 'Circular', 1),
    (@id_pergunta, 'Helicoidal', 0),
    (@id_pergunta, 'Hiperbólica', 0);
-- =================================================================
-- ||                       Química                               ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o símbolo químico do elemento Ouro?',
        'Fácil',
        'Vem do latim "Aurum".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ag', 0),
    (@id_pergunta, 'Ou', 0),
    (@id_pergunta, 'Au', 1),
    (@id_pergunta, 'Go', 0),
    (@id_pergunta, 'Fe', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual partícula subatômica possui carga elétrica positiva?',
        'Fácil',
        'Fica localizada no núcleo do átomo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Elétron', 0),
    (@id_pergunta, 'Nêutron', 0),
    (@id_pergunta, 'Próton', 1),
    (@id_pergunta, 'Fóton', 0),
    (@id_pergunta, 'Nêutrino', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Como se chama a passagem do estado líquido para o gasoso?',
        'Fácil',
        'Pode ocorrer por ebulição ou evaporação.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Fusão', 0),
    (@id_pergunta, 'Solidificação', 0),
    (@id_pergunta, 'Vaporização', 1),
    (@id_pergunta, 'Condensação', 0),
    (@id_pergunta, 'Sublimação', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o gás mais abundante na atmosfera terrestre?',
        'Fácil',
        'Sua fórmula química é N₂.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oxigênio', 0),
    (@id_pergunta, 'Gás Carbônico', 0),
    (@id_pergunta, 'Hidrogênio', 0),
    (@id_pergunta, 'Nitrogênio', 1),
    (@id_pergunta, 'Hélio', 0);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Na fórmula da água, H₂O, o que o "H" representa?',
        'Fácil',
        'É o elemento de número atômico 1.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Hélio', 0),
    (@id_pergunta, 'Oxigênio', 0),
    (@id_pergunta, 'Hidrogênio', 1),
    (@id_pergunta, 'Húmus', 0),
    (@id_pergunta, 'Carbono', 0);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O sal de cozinha (NaCl) é classificado como:',
        'Fácil',
        'É formado pela ligação de dois elementos diferentes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Um elemento', 0),
    (@id_pergunta, 'Uma substância simples', 0),
    (@id_pergunta, 'Uma substância composta', 1),
    (@id_pergunta, 'Uma mistura heterogênea', 0),
    (@id_pergunta, 'Uma mistura homogênea', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o pH de uma substância neutra, como a água pura?',
        'Fácil',
        'A escala de pH vai de 0 a 14.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '0', 0),
    (@id_pergunta, '5', 0),
    (@id_pergunta, '7', 1),
    (@id_pergunta, '9', 0),
    (@id_pergunta, '14', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Em qual grupo da Tabela Periódica se encontram os Gases Nobres?',
        'Fácil',
        'São os elementos da última coluna da direita.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Grupo 1', 0),
    (@id_pergunta, 'Grupo 2', 0),
    (@id_pergunta, 'Grupo 14', 0),
    (@id_pergunta, 'Grupo 17', 0),
    (@id_pergunta, 'Grupo 18', 1);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o símbolo químico da Prata?',
        'Fácil',
        'Vem do latim "Argentum".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Pr', 0),
    (@id_pergunta, 'Pt', 0),
    (@id_pergunta, 'Pa', 0),
    (@id_pergunta, 'Ag', 1),
    (@id_pergunta, 'Au', 0);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A passagem direta do estado sólido para o gasoso é chamada de:',
        'Fácil',
        'É o que acontece com a naftalina.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Fusão', 0),
    (@id_pergunta, 'Evaporação', 0),
    (@id_pergunta, 'Condensação', 0),
    (@id_pergunta, 'Sublimação', 1),
    (@id_pergunta, 'Solidificação', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a menor unidade de um elemento que mantém suas propriedades químicas?',
        'Fácil',
        'É a "peça" fundamental da matéria.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Molécula', 0),
    (@id_pergunta, 'Íon', 0),
    (@id_pergunta, 'Átomo', 1),
    (@id_pergunta, 'Composto', 0),
    (@id_pergunta, 'Célula', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual tipo de ligação química envolve o compartilhamento de elétrons entre átomos?',
        'Fácil',
        'Ocorre geralmente entre ametais.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ligação Iônica', 0),
    (@id_pergunta, 'Ligação Metálica', 0),
    (@id_pergunta, 'Ligação Covalente', 1),
    (@id_pergunta, 'Ponte de Hidrogênio', 0),
    (@id_pergunta, 'Ligação de Van der Waals', 0);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'As colunas verticais da Tabela Periódica são chamadas de:',
        'Fácil',
        'Elementos na mesma coluna têm propriedades semelhantes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Períodos', 0),
    (@id_pergunta, 'Séries', 0),
    (@id_pergunta, 'Classes', 0),
    (@id_pergunta, 'Grupos ou Famílias', 1),
    (@id_pergunta, 'Níveis', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual dos seguintes é um exemplo de metal?',
        'Fácil',
        'É usado em construções e é atraído por ímãs.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oxigênio', 0),
    (@id_pergunta, 'Carbono', 0),
    (@id_pergunta, 'Enxofre', 0),
    (@id_pergunta, 'Ferro', 1),
    (@id_pergunta, 'Hélio', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Uma reação de combustão, como a queima de papel, consome qual gás da atmosfera?',
        'Fácil',
        'É o mesmo gás que usamos para respirar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Nitrogênio', 0),
    (@id_pergunta, 'Oxigênio', 1),
    (@id_pergunta, 'Gás Carbônico', 0),
    (@id_pergunta, 'Hidrogênio', 0),
    (@id_pergunta, 'Argônio', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é uma mistura homogênea?',
        'Fácil',
        'Pense em água com açúcar dissolvido.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Uma substância pura', 0),
    (
        @id_pergunta,
        'Uma mistura com várias fases visíveis',
        0
    ),
    (
        @id_pergunta,
        'Uma mistura com apenas uma fase visível',
        1
    ),
    (@id_pergunta, 'Um elemento químico', 0),
    (@id_pergunta, 'Uma reação química', 0);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual o número de prótons em um átomo de Carbono (C)?',
        'Fácil',
        'É o mesmo que seu número atômico.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '12', 0),
    (@id_pergunta, '14', 0),
    (@id_pergunta, '6', 1),
    (@id_pergunta, '8', 0),
    (@id_pergunta, '1', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Uma substância com pH 2 é considerada:',
        'Fácil',
        'Valores de pH abaixo de 7 são característicos dessa função inorgânica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ácida', 1),
    (@id_pergunta, 'Básica', 0),
    (@id_pergunta, 'Neutra', 0),
    (@id_pergunta, 'Um sal', 0),
    (@id_pergunta, 'Um óxido', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o principal gás liberado na respiração humana?',
        'Fácil',
        'Sua fórmula é CO₂.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oxigênio', 0),
    (@id_pergunta, 'Nitrogênio', 0),
    (
        @id_pergunta,
        'Gás Carbônico (Dióxido de Carbono)',
        1
    ),
    (@id_pergunta, 'Hidrogênio', 0),
    (@id_pergunta, 'Vapor de água', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A substância que acelera uma reação química sem ser consumida é chamada de:',
        'Fácil',
        'As enzimas são exemplos biológicos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Reagente', 0),
    (@id_pergunta, 'Produto', 0),
    (@id_pergunta, 'Indicador', 0),
    (@id_pergunta, 'Solvente', 0),
    (@id_pergunta, 'Catalisador', 1);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Átomos do mesmo elemento químico com diferente número de nêutrons são chamados de:',
        'Médio',
        'O Carbono-12 e o Carbono-14 são exemplos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Isóbaros', 0),
    (@id_pergunta, 'Isótonos', 0),
    (@id_pergunta, 'Isótopos', 1),
    (@id_pergunta, 'Isômeros', 0),
    (@id_pergunta, 'Alótropos', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a massa molar da água (H₂O)? (Massas atômicas: H=1, O=16)',
        'Médio',
        'Some a massa de dois hidrogênios e um oxigênio.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '17 g/mol', 0),
    (@id_pergunta, '18 g/mol', 1),
    (@id_pergunta, '20 g/mol', 0),
    (@id_pergunta, '32 g/mol', 0),
    (@id_pergunta, '34 g/mol', 0);
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Uma reação química que libera calor para o ambiente é classificada como:',
        'Médio',
        '"Exo" significa "para fora".'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Endotérmica', 0),
    (@id_pergunta, 'Exotérmica', 1),
    (@id_pergunta, 'Isotérmica', 0),
    (@id_pergunta, 'De simples troca', 0),
    (@id_pergunta, 'De síntese', 0);
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual a função orgânica caracterizada pela presença de um grupo hidroxila (-OH) ligado a um carbono saturado?',
        'Médio',
        'O etanol, presente em bebidas, é um exemplo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ácido Carboxílico', 0),
    (@id_pergunta, 'Aldeído', 0),
    (@id_pergunta, 'Álcool', 1),
    (@id_pergunta, 'Éter', 0),
    (@id_pergunta, 'Cetona', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A Lei da Conservação da Massa, de Lavoisier, afirma que:',
        'Médio',
        '"Na natureza, nada se cria, nada se perde, tudo se transforma."'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A massa dos produtos é sempre maior que a dos reagentes',
        0
    ),
    (
        @id_pergunta,
        'A soma das massas dos reagentes é igual à soma das massas dos produtos',
        1
    ),
    (
        @id_pergunta,
        'A energia de um sistema se conserva',
        0
    ),
    (
        @id_pergunta,
        'A temperatura se mantém constante em uma reação',
        0
    ),
    (
        @id_pergunta,
        'Um gás ideal ocupa um volume de 22,4 L',
        0
    );
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o nome da reação entre um ácido e uma base, que forma sal e água?',
        'Médio',
        'A reação "neutraliza" as propriedades de ambos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oxidação', 0),
    (@id_pergunta, 'Esterificação', 0),
    (@id_pergunta, 'Neutralização', 1),
    (@id_pergunta, 'Hidrólise', 0),
    (@id_pergunta, 'Combustão', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual o valor aproximado da Constante de Avogadro?',
        'Médio',
        'Representa o número de partículas em um mol.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '3,14 x 10²³', 0),
    (@id_pergunta, '6,02 x 10²³', 1),
    (@id_pergunta, '9,8 x 10⁹', 0),
    (@id_pergunta, '1,6 x 10⁻¹⁹', 0),
    (@id_pergunta, '8,31 x 10³', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A Molaridade (ou concentração molar) de uma solução é definida como:',
        'Médio',
        'É uma das formas mais comuns de expressar a concentração.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Massa do soluto / volume da solução',
        0
    ),
    (
        @id_pergunta,
        'Mols do soluto / volume da solução (em litros)',
        1
    ),
    (
        @id_pergunta,
        'Mols do soluto / massa do solvente (em kg)',
        0
    ),
    (
        @id_pergunta,
        'Massa do soluto / massa da solução',
        0
    ),
    (
        @id_pergunta,
        'Volume do soluto / volume da solução',
        0
    );
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Hidrocarbonetos que contêm apenas ligações simples entre os carbonos são chamados de:',
        'Médio',
        'São também chamados de hidrocarbonetos saturados.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Alcenos', 0),
    (@id_pergunta, 'Alcinos', 0),
    (@id_pergunta, 'Alcanos', 1),
    (@id_pergunta, 'Aromáticos', 0),
    (@id_pergunta, 'Ciclanos', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A chuva ácida é causada principalmente pela emissão de quais óxidos na atmosfera?',
        'Médio',
        'São gerados pela queima de combustíveis fósseis.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Óxidos de carbono e silício', 0),
    (
        @id_pergunta,
        'Óxidos de enxofre e nitrogênio',
        1
    ),
    (@id_pergunta, 'Óxidos de sódio e cálcio', 0),
    (@id_pergunta, 'Óxidos de ferro e alumínio', 0),
    (@id_pergunta, 'Monóxido de carbono e ozônio', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é um agente oxidante em uma reação de oxirredução?',
        'Médio',
        'Ele "rouba" elétrons de outra espécie.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A espécie que perde elétrons (oxida)',
        0
    ),
    (
        @id_pergunta,
        'A espécie que ganha elétrons (reduz)',
        1
    ),
    (
        @id_pergunta,
        'A espécie que não participa da reação',
        0
    ),
    (@id_pergunta, 'O catalisador da reação', 0),
    (@id_pergunta, 'O produto da oxidação', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o nome do composto C₂H₅OH?',
        'Médio',
        'É o álcool comum.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Metanol', 0),
    (@id_pergunta, 'Etanol', 1),
    (@id_pergunta, 'Propanol', 0),
    (@id_pergunta, 'Ácido acético', 0),
    (@id_pergunta, 'Acetona', 0);
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O estado de equilíbrio químico é atingido quando:',
        'Médio',
        'A reação não para, mas as concentrações ficam constantes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Todos os reagentes são consumidos',
        0
    ),
    (
        @id_pergunta,
        'As velocidades das reações direta e inversa se igualam',
        1
    ),
    (
        @id_pergunta,
        'A temperatura do sistema se iguala à do ambiente',
        0
    ),
    (@id_pergunta, 'A pressão para de variar', 0),
    (@id_pergunta, 'A reação se torna endotérmica', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Compostos que possuem a mesma fórmula molecular mas diferentes arranjos estruturais são chamados de:',
        'Médio',
        'Eles podem ter propriedades físicas e químicas bem diferentes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Isótopos', 0),
    (@id_pergunta, 'Alótropos', 0),
    (@id_pergunta, 'Polímeros', 0),
    (@id_pergunta, 'Isômeros', 1),
    (@id_pergunta, 'Híbridos', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Em uma pilha de Daniell, o fluxo de elétrons vai do:',
        'Médio',
        'Os elétrons saem do eletrodo que oxida para o que reduz.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cobre para o Zinco', 0),
    (@id_pergunta, 'Zinco para o Cobre', 1),
    (@id_pergunta, 'Cátodo para o Ânodo', 0),
    (@id_pergunta, 'Pela ponte salina', 0),
    (@id_pergunta, 'Não há fluxo de elétrons', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a geometria da molécula de amônia (NH₃)?',
        'Médio',
        'O nitrogênio tem um par de elétrons não ligante que "empurra" as ligações.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Linear', 0),
    (@id_pergunta, 'Trigonal plana', 0),
    (@id_pergunta, 'Piramidal trigonal', 1),
    (@id_pergunta, 'Angular', 0),
    (@id_pergunta, 'Tetraédrica', 0);
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual fator NÃO aumenta a velocidade de uma reação química?',
        'Médio',
        'Pense no que faria as partículas se moverem mais devagar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Aumento da temperatura', 0),
    (
        @id_pergunta,
        'Aumento da concentração dos reagentes',
        0
    ),
    (@id_pergunta, 'Adição de um catalisador', 0),
    (
        @id_pergunta,
        'Aumento da superfície de contato',
        0
    ),
    (@id_pergunta, 'Diminuição da temperatura', 1);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O petróleo é uma mistura complexa de qual tipo de compostos?',
        'Médio',
        'Seus componentes são formados apenas por Carbono e Hidrogênio.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Álcoois', 0),
    (@id_pergunta, 'Hidrocarbonetos', 1),
    (@id_pergunta, 'Carboidratos', 0),
    (@id_pergunta, 'Proteínas', 0),
    (@id_pergunta, 'Sais minerais', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O diamante e o grafite são formas alotrópicas de qual elemento?',
        'Médio',
        'É o elemento base da química orgânica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Silício', 0),
    (@id_pergunta, 'Oxigênio', 0),
    (@id_pergunta, 'Carbono', 1),
    (@id_pergunta, 'Enxofre', 0),
    (@id_pergunta, 'Fósforo', 0);
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A reação de um ácido carboxílico com um álcool forma um éster e água. Como se chama essa reação?',
        'Médio',
        'É uma reação orgânica clássica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Saponificação', 0),
    (@id_pergunta, 'Hidrogenação', 0),
    (@id_pergunta, 'Combustão', 0),
    (@id_pergunta, 'Esterificação', 1),
    (@id_pergunta, 'Polimerização', 0);
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'De acordo com o Princípio de Le Chatelier, o que acontece com o equilíbrio N₂(g) + 3H₂(g) ⇌ 2NH₃(g) se a pressão for aumentada?',
        'Difícil',
        'O sistema tentará reduzir a pressão, favorecendo o lado com menos mols de gás.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Desloca-se para a esquerda (reagentes)',
        0
    ),
    (
        @id_pergunta,
        'Desloca-se para a direita (produtos)',
        1
    ),
    (@id_pergunta, 'Não sofre alteração', 0),
    (
        @id_pergunta,
        'A constante de equilíbrio aumenta',
        0
    ),
    (@id_pergunta, 'A reação para', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a hibridização do átomo de carbono em uma molécula de eteno (C₂H₄)?',
        'Difícil',
        'O eteno possui uma ligação dupla entre os carbonos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'sp', 0),
    (@id_pergunta, 'sp²', 1),
    (@id_pergunta, 'sp³', 0),
    (@id_pergunta, 'sp³d', 0),
    (@id_pergunta, 'sp³d²', 0);
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o pH de uma solução de HCl com concentração 0,01 mol/L?',
        'Difícil',
        'Lembre-se que pH = -log[H⁺] e que o HCl é um ácido forte.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '0,01', 0),
    (@id_pergunta, '1', 0),
    (@id_pergunta, '2', 1),
    (@id_pergunta, '12', 0),
    (@id_pergunta, '14', 0);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Em uma célula eletrolítica, o processo que ocorre no cátodo é a:',
        'Difícil',
        'Lembre-se do mnemônico CRAI (Cátodo Reduz, Ânodo Oxida).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oxidação', 0),
    (@id_pergunta, 'Redução', 1),
    (@id_pergunta, 'Fusão', 0),
    (@id_pergunta, 'Eletrólise', 0),
    (@id_pergunta, 'Neutralização', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A variação de entalpia (ΔH) de uma reação espontânea e a variação de entropia (ΔS) do universo devem ser, respectivamente:',
        'Difícil',
        'Pense na energia livre de Gibbs (ΔG = ΔH - TΔS < 0) e na Segunda Lei da Termodinâmica.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Negativa e positiva', 0),
    (@id_pergunta, 'Positiva e negativa', 0),
    (@id_pergunta, 'Pode variar e positiva', 1),
    (@id_pergunta, 'Negativa e negativa', 0),
    (@id_pergunta, 'Positiva e pode variar', 0);
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é uma solução tampão?',
        'Difícil',
        'É formada por um ácido fraco e seu sal correspondente, ou uma base fraca e seu sal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Uma solução com pH exatamente 7',
        0
    ),
    (
        @id_pergunta,
        'Uma solução que resiste a grandes variações de pH',
        1
    ),
    (@id_pergunta, 'Uma solução supersaturada', 0),
    (
        @id_pergunta,
        'Uma solução que conduz eletricidade',
        0
    ),
    (@id_pergunta, 'Uma solução colorida', 0);
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual número quântico descreve a orientação de um orbital no espaço?',
        'Difícil',
        'Pense nos orbitais p (px, py, pz).'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Número Quântico Principal (n)', 0),
    (@id_pergunta, 'Número Quântico Azimutal (l)', 0),
    (
        @id_pergunta,
        'Número Quântico Magnético (ml)',
        1
    ),
    (@id_pergunta, 'Número Quântico de Spin (ms)', 0),
    (@id_pergunta, 'Número de Avogadro', 0);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A reação de hidrólise de um éster em meio básico é chamada de:',
        'Difícil',
        'É o processo utilizado para fabricar sabão.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Esterificação', 0),
    (@id_pergunta, 'Saponificação', 1),
    (@id_pergunta, 'Polimerização', 0),
    (@id_pergunta, 'Neutralização', 0),
    (@id_pergunta, 'Oxidação de Tollens', 0);
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a lei da velocidade para uma reação elementar A + 2B → C?',
        'Difícil',
        'A velocidade é proporcional ao produto das concentrações dos reagentes, elevadas a seus coeficientes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'v = k[A][B]', 0),
    (@id_pergunta, 'v = k[A]²[B]', 0),
    (@id_pergunta, 'v = k[A][B]²', 1),
    (@id_pergunta, 'v = k[C]', 0),
    (@id_pergunta, 'v = k[C]/[A][B]', 0);
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O Princípio da Exclusão de Pauli afirma que:',
        'Difícil',
        'Relaciona-se com a distribuição de elétrons em orbitais.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'É impossível saber a posição e a velocidade de um elétron simultaneamente',
        0
    ),
    (
        @id_pergunta,
        'Em um mesmo átomo, não podem existir dois elétrons com os quatro números quânticos iguais',
        1
    ),
    (
        @id_pergunta,
        'Os elétrons preenchem primeiro os orbitais de menor energia',
        0
    ),
    (
        @id_pergunta,
        'A energia é quantizada em pacotes chamados fótons',
        0
    ),
    (
        @id_pergunta,
        'A massa se conserva em uma reação química',
        0
    );
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é um isômero óptico (ou enantiômero)?',
        'Difícil',
        'São como a mão direita e a mão esquerda: imagens especulares não sobreponíveis.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Uma molécula que é a imagem especular não sobreponível de outra',
        1
    ),
    (
        @id_pergunta,
        'Uma molécula com diferentes posições de um grupo funcional',
        0
    ),
    (
        @id_pergunta,
        'Uma molécula com um anel benzênico',
        0
    ),
    (
        @id_pergunta,
        'Um isômero com um arranjo cis ou trans',
        0
    ),
    (
        @id_pergunta,
        'Uma molécula com um carbono de hibridização sp',
        0
    );
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é o produto de solubilidade (Kps) do AgCl, se sua solubilidade é 1x10⁻⁵ mol/L?',
        'Difícil',
        'Para AgCl(s) ⇌ Ag⁺(aq) + Cl⁻(aq), Kps = [Ag⁺][Cl⁻].'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1x10⁻⁵', 0),
    (@id_pergunta, '2x10⁻⁵', 0),
    (@id_pergunta, '1x10⁻¹⁰', 1),
    (@id_pergunta, '1x10⁻²·⁵', 0),
    (@id_pergunta, '5x10⁻⁶', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'A Regra de Markovnikov prevê o produto principal na adição de HBr a qual tipo de composto?',
        'Difícil',
        'Diz que o hidrogênio se liga ao carbono mais hidrogenado da dupla ligação.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Alcanos', 0),
    (@id_pergunta, 'Alcenos assimétricos', 1),
    (@id_pergunta, 'Benzeno', 0),
    (@id_pergunta, 'Álcoois', 0),
    (@id_pergunta, 'Cetonas', 0);
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O que é a energia de ativação de uma reação?',
        'Difícil',
        'É a "barreira" de energia que os reagentes precisam superar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A energia total liberada pela reação',
        0
    ),
    (
        @id_pergunta,
        'A energia mínima necessária para que a reação ocorra',
        1
    ),
    (
        @id_pergunta,
        'A diferença de energia entre produtos e reagentes',
        0
    ),
    (
        @id_pergunta,
        'A energia do estado de equilíbrio',
        0
    ),
    (
        @id_pergunta,
        'A energia economizada pelo uso de um catalisador',
        0
    );
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'O processo de cobrir um metal com uma fina camada de outro metal, usando eletrólise, é chamado de:',
        'Difícil',
        'É usado para proteger contra a corrosão ou para fins estéticos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Anodização', 0),
    (@id_pergunta, 'Galvanização', 1),
    (@id_pergunta, 'Passivação', 0),
    (@id_pergunta, 'Destilação', 0),
    (@id_pergunta, 'Titulação', 0);
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual dos seguintes compostos é um aromático?',
        'Difícil',
        'Sua estrutura é um anel de 6 carbonos com ligações duplas alternadas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cicloexano', 0),
    (@id_pergunta, 'Hexeno', 0),
    (@id_pergunta, 'Benzeno', 1),
    (@id_pergunta, 'Acetileno', 0),
    (@id_pergunta, 'Propeno', 0);
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Para uma reação ser espontânea em qualquer temperatura, ΔH e ΔS devem ser, respectivamente:',
        'Difícil',
        'Pense na equação ΔG = ΔH - TΔS. ΔG deve ser sempre negativo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Positivo e Positivo', 0),
    (@id_pergunta, 'Negativo e Negativo', 0),
    (@id_pergunta, 'Negativo e Positivo', 1),
    (@id_pergunta, 'Positivo e Negativo', 0),
    (@id_pergunta, 'Zero e Positivo', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Qual é a ordem total da reação com a lei de velocidade v = k[A]¹[B]²?',
        'Difícil',
        'É a soma dos expoentes das concentrações na lei da velocidade.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '1', 0),
    (@id_pergunta, '2', 0),
    (@id_pergunta, '3', 1),
    (@id_pergunta, '4', 0),
    (@id_pergunta, 'Não pode ser determinada', 0);
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'As forças intermoleculares mais fortes presentes em uma amostra de amônia (NH₃) são:',
        'Difícil',
        'Ocorrem quando o Hidrogênio está ligado a F, O ou N.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Forças de London (dipolo induzido)',
        0
    ),
    (@id_pergunta, 'Forças dipolo-dipolo', 0),
    (@id_pergunta, 'Ligações de hidrogênio', 1),
    (@id_pergunta, 'Ligações iônicas', 0),
    (@id_pergunta, 'Ligações covalentes', 0);
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        5,
        1,
        'Um decaimento beta (β⁻) em um núcleo atômico resulta na:',
        'Difícil',
        'Um nêutron se transforma em um próton e um elétron é ejetado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Diminuição do número de massa em 4',
        0
    ),
    (
        @id_pergunta,
        'Aumento do número atômico em 1',
        1
    ),
    (
        @id_pergunta,
        'Diminuição do número atômico em 1',
        0
    ),
    (
        @id_pergunta,
        'Aumento do número de nêutrons em 1',
        0
    ),
    (@id_pergunta, 'Emissão de um núcleo de Hélio', 0);
-- =================================================================
-- ||                       História                              ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================

-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual civilização antiga se desenvolveu no vale do rio Nilo?', 'Fácil', 'São famosos por suas pirâmides e faraós.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Grega', 0),
(@id_pergunta, 'Romana', 0),
(@id_pergunta, 'Egípcia', 1),
(@id_pergunta, 'Mesopotâmica', 0),
(@id_pergunta, 'Chinesa', 0);

-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Quem foi o primeiro imperador do Brasil?', 'Fácil', 'Ele proclamou a independência às margens do rio Ipiranga.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Dom João VI', 0),
(@id_pergunta, 'Dom Pedro I', 1),
(@id_pergunta, 'Dom Pedro II', 0),
(@id_pergunta, 'Marechal Deodoro', 0),
(@id_pergunta, 'Tiradentes', 0);

-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual evento é considerado o marco inicial da Primeira Guerra Mundial?', 'Fácil', 'O assassinato de um arquiduque em Sarajevo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A invasão da Polônia', 0),
(@id_pergunta, 'O ataque a Pearl Harbor', 0),
(@id_pergunta, 'O assassinato de Francisco Ferdinando', 1),
(@id_pergunta, 'A Revolução Russa', 0),
(@id_pergunta, 'A queda da Bastilha', 0);

-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual era o principal sistema de organização social e econômica durante a Idade Média na Europa?', 'Fácil', 'Baseava-se na posse de terras (feudos) e relações de suserania e vassalagem.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Capitalismo', 0),
(@id_pergunta, 'Feudalismo', 1),
(@id_pergunta, 'Comunismo', 0),
(@id_pergunta, 'Democracia', 0),
(@id_pergunta, 'Mercantilismo', 0);

-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual país europeu colonizou o Brasil?', 'Fácil', 'O idioma oficial do Brasil deriva deste país.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Espanha', 0),
(@id_pergunta, 'França', 0),
(@id_pergunta, 'Holanda', 0),
(@id_pergunta, 'Inglaterra', 0),
(@id_pergunta, 'Portugal', 1);

-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Guerra Fria foi uma disputa ideológica entre quais duas superpotências?', 'Fácil', 'Uma defendia o capitalismo e a outra o socialismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Alemanha e Japão', 0),
(@id_pergunta, 'Inglaterra e França', 0),
(@id_pergunta, 'Estados Unidos e União Soviética', 1),
(@id_pergunta, 'China e Índia', 0),
(@id_pergunta, 'Brasil e Argentina', 0);

-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual lei aboliu oficialmente a escravidão no Brasil em 1888?', 'Fácil', 'O nome da lei significa "Lei Dourada".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Lei do Ventre Livre', 0),
(@id_pergunta, 'Lei Áurea', 1),
(@id_pergunta, 'Lei Eusébio de Queirós', 0),
(@id_pergunta, 'Lei dos Sexagenários', 0),
(@id_pergunta, 'Lei de Terras', 0);

-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Quem foi o líder do Partido Nazista e chanceler da Alemanha durante a Segunda Guerra Mundial?', 'Fácil', 'Ele é o autor de "Mein Kampf".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Benito Mussolini', 0),
(@id_pergunta, 'Joseph Stalin', 0),
(@id_pergunta, 'Winston Churchill', 0),
(@id_pergunta, 'Adolf Hitler', 1),
(@id_pergunta, 'Franklin Roosevelt', 0);

-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A civilização romana teve sua capital em qual cidade atual?', 'Fácil', 'É a capital da Itália.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Atenas', 0),
(@id_pergunta, 'Paris', 0),
(@id_pergunta, 'Londres', 0),
(@id_pergunta, 'Roma', 1),
(@id_pergunta, 'Cairo', 0);

-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Em que ano foi proclamada a República no Brasil?', 'Fácil', 'Ocorreu no dia 15 de novembro.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, '1822', 0),
(@id_pergunta, '1888', 0),
(@id_pergunta, '1889', 1),
(@id_pergunta, '1930', 0),
(@id_pergunta, '1964', 0);

-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Quem iniciou a Reforma Protestante ao fixar suas 95 Teses na porta da igreja?', 'Fácil', 'Era um monge alemão.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'João Calvino', 0),
(@id_pergunta, 'Henrique VIII', 0),
(@id_pergunta, 'Martinho Lutero', 1),
(@id_pergunta, 'Inácio de Loyola', 0),
(@id_pergunta, 'Galileu Galilei', 0);

-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual civilização antiga é conhecida como o "berço da democracia"?', 'Fácil', 'A cidade-estado de Atenas é o principal exemplo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Egito', 0),
(@id_pergunta, 'Roma', 0),
(@id_pergunta, 'Pérsia', 0),
(@id_pergunta, 'Grécia', 1),
(@id_pergunta, 'Esparta', 0);

-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A queda de qual cidade em 1453 é frequentemente usada para marcar o fim da Idade Média?', 'Fácil', 'Era a capital do Império Bizantino.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Roma', 0),
(@id_pergunta, 'Jerusalém', 0),
(@id_pergunta, 'Constantinopla', 1),
(@id_pergunta, 'Alexandria', 0),
(@id_pergunta, 'Atenas', 0);

-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Em qual ano os portugueses, liderados por Pedro Álvares Cabral, chegaram ao Brasil?', 'Fácil', 'Foi no início do século XVI.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, '1492', 0),
(@id_pergunta, '1500', 1),
(@id_pergunta, '1530', 0),
(@id_pergunta, '1600', 0),
(@id_pergunta, '1822', 0);

-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual foi a primeira capital do Brasil?', 'Fácil', 'É uma grande cidade no estado da Bahia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Rio de Janeiro', 0),
(@id_pergunta, 'São Paulo', 0),
(@id_pergunta, 'Salvador', 1),
(@id_pergunta, 'Brasília', 0),
(@id_pergunta, 'Ouro Preto', 0);

-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O Muro de Berlim dividiu qual cidade durante a Guerra Fria?', 'Fácil', 'O nome do muro já diz o nome da cidade.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Moscou', 0),
(@id_pergunta, 'Paris', 0),
(@id_pergunta, 'Varsóvia', 0),
(@id_pergunta, 'Berlim', 1),
(@id_pergunta, 'Viena', 0);

-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A invenção da prensa de tipos móveis, por Gutenberg, foi fundamental para qual movimento?', 'Fácil', 'Facilitou a disseminação de novas ideias religiosas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Revolução Industrial', 0),
(@id_pergunta, 'Reforma Protestante', 1),
(@id_pergunta, 'Revolução Francesa', 0),
(@id_pergunta, 'Iluminismo', 0),
(@id_pergunta, 'Cruzadas', 0);

-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual destes é um famoso monumento do Império Romano?', 'Fácil', 'Era uma arena para batalhas de gladiadores.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Acrópole', 0),
(@id_pergunta, 'Coliseu', 1),
(@id_pergunta, 'Pirâmides de Gizé', 0),
(@id_pergunta, 'Muralha da China', 0),
(@id_pergunta, 'Torre Eiffel', 0);

-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Como ficou conhecido o período em que Getúlio Vargas governou o Brasil?', 'Fácil', 'O nome faz referência ao tempo em que ele esteve no poder.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'República Velha', 0),
(@id_pergunta, 'Ditadura Militar', 0),
(@id_pergunta, 'Era Vargas', 1),
(@id_pergunta, 'Período Regencial', 0),
(@id_pergunta, 'Segundo Reinado', 0);

-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O principal objetivo das Cruzadas medievais era:', 'Fácil', 'Envolvia uma cidade sagrada para os cristãos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Descobrir novas rotas comerciais', 0),
(@id_pergunta, 'Conquistar a Terra Santa (Jerusalém)', 1),
(@id_pergunta, 'Combater os vikings', 0),
(@id_pergunta, 'Unificar a Europa sob um único rei', 0),
(@id_pergunta, 'Espalhar o feudalismo', 0);


-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================

-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a Revolta da Vacina, ocorrida no Rio de Janeiro em 1904?', 'Médio', 'Foi uma rebelião popular motivada por uma campanha de saúde pública.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma revolta de médicos por melhores salários', 0),
(@id_pergunta, 'Um motim popular contra a vacinação obrigatória', 1),
(@id_pergunta, 'Uma campanha para erradicar a varíola', 0),
(@id_pergunta, 'Uma greve de enfermeiros', 0),
(@id_pergunta, 'Uma revolta contra a falta de vacinas', 0);

-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual tratado, assinado em 1494, dividiu as terras "descobertas e por descobrir" entre Portugal e Espanha?', 'Médio', 'O nome do tratado é o de uma cidade espanhola.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Tratado de Madri', 0),
(@id_pergunta, 'Tratado de Versalhes', 0),
(@id_pergunta, 'Tratado de Tordesilhas', 1),
(@id_pergunta, 'Bula Inter Coetera', 0),
(@id_pergunta, 'Tratado de Utrecht', 0);

-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A "Queda da Bastilha" é o evento simbólico que marca o início de qual revolução?', 'Médio', 'O lema desta revolução era "Liberdade, Igualdade e Fraternidade".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Revolução Russa', 0),
(@id_pergunta, 'Revolução Industrial', 0),
(@id_pergunta, 'Revolução Francesa', 1),
(@id_pergunta, 'Revolução Americana', 0),
(@id_pergunta, 'Revolução Gloriosa', 0);

-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual foi a principal consequência da Guerra do Paraguai para o Brasil?', 'Médio', 'Envolveu o aumento do poder de uma instituição e o endividamento do país.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A perda de territórios para a Argentina', 0),
(@id_pergunta, 'O fortalecimento do Exército e o aumento da dívida externa', 1),
(@id_pergunta, 'A abolição imediata da escravidão', 0),
(@id_pergunta, 'A proclamação da República', 0),
(@id_pergunta, 'O início da industrialização', 0);

-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a Inconfidência Mineira?', 'Médio', 'Ocorreu em Minas Gerais e um de seus líderes foi Tiradentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma revolta de escravos na Bahia', 0),
(@id_pergunta, 'Um movimento separatista da elite mineira contra Portugal', 1),
(@id_pergunta, 'Uma guerra contra os holandeses em Pernambuco', 0),
(@id_pergunta, 'Um movimento pela abolição da escravatura', 0),
(@id_pergunta, 'Uma rebelião de tropeiros no Sul', 0);

-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi o "Plano Marshall" no pós-Segunda Guerra Mundial?', 'Médio', 'Foi um programa de ajuda econômica para a reconstrução da Europa.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um plano de ataque militar da União Soviética', 0),
(@id_pergunta, 'Um programa de ajuda econômica dos EUA para a Europa', 1),
(@id_pergunta, 'A criação da Organização das Nações Unidas (ONU)', 0),
(@id_pergunta, 'A divisão da Alemanha em duas partes', 0),
(@id_pergunta, 'A criação da aliança militar OTAN', 0);

-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O regime de segregação racial que vigorou na África do Sul entre 1948 e 1994 foi chamado de:', 'Médio', 'Nelson Mandela foi o maior líder da luta contra este regime.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Holocausto', 0),
(@id_pergunta, 'Apartheid', 1),
(@id_pergunta, 'Imperialismo', 0),
(@id_pergunta, 'Comunismo', 0),
(@id_pergunta, 'Segregação', 0);

-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Revolução Industrial teve início em qual país?', 'Médio', 'Este país era uma grande potência naval e possuía ricas minas de carvão.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'França', 0),
(@id_pergunta, 'Alemanha', 0),
(@id_pergunta, 'Inglaterra', 1),
(@id_pergunta, 'Estados Unidos', 0),
(@id_pergunta, 'Rússia', 0);

-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual presidente brasileiro ficou conhecido pela política do "Pão, Terra e Trabalho" e pela criação da CLT?', 'Médio', 'Ele governou o Brasil de 1930 a 1945 e depois de 1951 a 1954.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Juscelino Kubitschek', 0),
(@id_pergunta, 'Getúlio Vargas', 1),
(@id_pergunta, 'João Goulart', 0),
(@id_pergunta, 'Eurico Gaspar Dutra', 0),
(@id_pergunta, 'Washington Luís', 0);

-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O movimento "Diretas Já", entre 1983 e 1984, reivindicava o quê?', 'Médio', 'Foi uma das maiores manifestações populares da história do Brasil.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O fim da Ditadura Militar', 0),
(@id_pergunta, 'A anistia para os presos políticos', 0),
(@id_pergunta, 'Eleições diretas para presidente da República', 1),
(@id_pergunta, 'A criação de uma nova Constituição', 0),
(@id_pergunta, 'A reforma agrária', 0);

-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Crise dos Mísseis de 1962 foi um tenso confronto entre os EUA e a União Soviética devido à instalação de mísseis em qual país?', 'Médio', 'É uma ilha caribenha próxima aos Estados Unidos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Vietnã', 0),
(@id_pergunta, 'Coreia', 0),
(@id_pergunta, 'Cuba', 1),
(@id_pergunta, 'Turquia', 0),
(@id_pergunta, 'Angola', 0);

-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual o nome do líder messiânico da Guerra de Canudos?', 'Médio', 'Ele era visto como um profeta pelos seus seguidores no sertão baiano.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Lampião', 0),
(@id_pergunta, 'Zumbi dos Palmares', 0),
(@id_pergunta, 'Antônio Conselheiro', 1),
(@id_pergunta, 'Padre Cícero', 0),
(@id_pergunta, 'José do Contestado', 0);

-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foram as Capitanias Hereditárias no Brasil Colônia?', 'Médio', 'Foi a primeira forma de administração territorial implementada por Portugal.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Províncias governadas por presidentes eleitos', 0),
(@id_pergunta, 'Grandes lotes de terra doados a nobres (donatários) para colonização', 1),
(@id_pergunta, 'Territórios indígenas protegidos pela Coroa', 0),
(@id_pergunta, 'Distritos de mineração de ouro e diamantes', 0),
(@id_pergunta, 'Fortalezas militares no litoral', 0);

-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A política econômica dos reinos europeus na Idade Moderna, baseada no metalismo e na balança comercial favorável, era chamada de:', 'Médio', 'O objetivo era acumular riquezas para o Estado.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Fisiocracia', 0),
(@id_pergunta, 'Liberalismo', 0),
(@id_pergunta, 'Mercantilismo', 1),
(@id_pergunta, 'Socialismo', 0),
(@id_pergunta, 'Feudalismo', 0);

-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Unificação Alemã, em 1871, foi liderada por qual estado e por qual chanceler?', 'Médio', 'O chanceler era conhecido como o "Chanceler de Ferro".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Áustria e Metternich', 0),
(@id_pergunta, 'Prússia e Otto von Bismarck', 1),
(@id_pergunta, 'Baviera e Luís II', 0),
(@id_pergunta, 'Saxônia e Frederico Augusto', 0),
(@id_pergunta, 'França e Napoleão III', 0);

-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Marcha sobre Roma" em 1922?', 'Médio', 'Foi um evento que marcou a ascensão do fascismo na Itália.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma peregrinação religiosa ao Vaticano', 0),
(@id_pergunta, 'Uma manifestação de fascistas que levou Mussolini ao poder', 1),
(@id_pergunta, 'A invasão de Roma pelo exército alemão', 0),
(@id_pergunta, 'Uma greve geral dos trabalhadores romanos', 0),
(@id_pergunta, 'Uma parada militar para celebrar o fim da Primeira Guerra', 0);

-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O Iluminismo foi um movimento intelectual que defendia:', 'Médio', 'Seus pensadores eram críticos do absolutismo e do clero.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O poder absoluto dos reis', 0),
(@id_pergunta, 'O uso da razão, a liberdade e os direitos individuais', 1),
(@id_pergunta, 'A superioridade da fé sobre a ciência', 0),
(@id_pergunta, 'O sistema feudal', 0),
(@id_pergunta, 'A expansão do colonialismo', 0);

-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'No Brasil, a chamada "República do Café com Leite" foi caracterizada pela alternância de poder entre as oligarquias de:', 'Médio', 'Esses estados eram os maiores produtores de café e de laticínios.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Rio de Janeiro e Bahia', 0),
(@id_pergunta, 'São Paulo e Minas Gerais', 1),
(@id_pergunta, 'Pernambuco e Rio Grande do Sul', 0),
(@id_pergunta, 'Bahia e Pernambuco', 0),
(@id_pergunta, 'São Paulo e Rio de Janeiro', 0);

-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual foi a principal consequência da Revolução dos Cravos em Portugal, em 1974?', 'Médio', 'O evento teve grande impacto nas colônias portuguesas na África.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A entrada de Portugal na União Europeia', 0),
(@id_pergunta, 'O fim da ditadura salazarista e o início da descolonização', 1),
(@id_pergunta, 'A restauração da monarquia', 0),
(@id_pergunta, 'O início de uma guerra civil', 0),
(@id_pergunta, 'A adoção do euro como moeda', 0);

-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'As civilizações pré-colombianas Asteca e Inca se desenvolveram, respectivamente, nas regiões que hoje correspondem a:', 'Médio', 'Uma se localizava na América Central e a outra na Cordilheira dos Andes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Brasil e Argentina', 0),
(@id_pergunta, 'México e Peru', 1),
(@id_pergunta, 'Estados Unidos e Canadá', 0),
(@id_pergunta, 'Colômbia e Chile', 0),
(@id_pergunta, 'Caribe e Patagônia', 0);


-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================

-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Questão Christie", ocorrida durante o Segundo Reinado no Brasil?', 'Difícil', 'Envolveu o embaixador britânico William Christie e navios naufragados.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma disputa de terras entre Brasil e Argentina', 0),
(@id_pergunta, 'Um conflito diplomático que levou ao rompimento de relações entre Brasil e Grã-Bretanha', 1),
(@id_pergunta, 'Um debate sobre a sucessão do trono imperial', 0),
(@id_pergunta, 'Uma crise econômica causada pela queda do preço do café', 0),
(@id_pergunta, 'Uma revolta de escravos liderada por uma mulher chamada Christie', 0);

-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Conjuração Baiana (ou Revolta dos Alfaiates) se diferenciou da Inconfidência Mineira principalmente por:', 'Difícil', 'Suas propostas eram mais radicais e envolviam diferentes classes sociais.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ser um movimento monarquista', 0),
(@id_pergunta, 'Ter um caráter popular e defender o fim da escravidão', 1),
(@id_pergunta, 'Ser liderada exclusivamente por membros do clero', 0),
(@id_pergunta, 'Buscar apoio da coroa francesa', 0),
(@id_pergunta, 'Ter ocorrido no Rio de Janeiro', 0);

-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi o "New Deal", implementado nos EUA por Franklin D. Roosevelt?', 'Difícil', 'Foi uma resposta à Grande Depressão de 1929.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma política de expansão militar na Ásia', 0),
(@id_pergunta, 'Um conjunto de programas de intervenção estatal para recuperar a economia', 1),
(@id_pergunta, 'Um acordo de livre comércio com a Europa', 0),
(@id_pergunta, 'Uma lei de segregação racial nos estados do sul', 0),
(@id_pergunta, 'O programa de desenvolvimento da bomba atômica', 0);

-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Revolta dos Malês, em 1835 na Bahia, foi uma rebelião notável por ser organizada principalmente por:', 'Difícil', 'Eles possuíam uma religião e uma forma de escrita em comum.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Militares de baixa patente', 0),
(@id_pergunta, 'Escravos africanos de religião muçulmana', 1),
(@id_pergunta, 'Grandes fazendeiros de café', 0),
(@id_pergunta, 'Imigrantes italianos anarquistas', 0),
(@id_pergunta, 'Seringueiros da Amazônia', 0);

-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi o "Plano Cohen", no contexto da Era Vargas?', 'Difícil', 'O plano foi usado como justificativa para um golpe de estado.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um plano de desenvolvimento econômico para o Nordeste', 0),
(@id_pergunta, 'Um suposto plano comunista forjado para justificar a implantação do Estado Novo', 1),
(@id_pergunta, 'Um acordo secreto entre Vargas e os nazistas', 0),
(@id_pergunta, 'Um projeto de reforma agrária', 0),
(@id_pergunta, 'O plano de criação da Petrobras', 0);

-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A Comuna de Paris, em 1871, é considerada por muitos historiadores como a primeira experiência de:', 'Difícil', 'Inspirou pensadores como Karl Marx.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Governo fascista', 0),
(@id_pergunta, 'Governo operário ou socialista', 1),
(@id_pergunta, 'Teocracia', 0),
(@id_pergunta, 'Monarquia absolutista', 0),
(@id_pergunta, 'República liberal', 0);

-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi o "Macartismo" nos Estados Unidos durante a Guerra Fria?', 'Difícil', 'O senador Joseph McCarthy foi a figura central deste período.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um movimento pelos direitos civis', 0),
(@id_pergunta, 'Uma intensa perseguição a supostos comunistas e simpatizantes', 1),
(@id_pergunta, 'Um programa de exploração espacial', 0),
(@id_pergunta, 'Uma política de aproximação com a China', 0),
(@id_pergunta, 'Um movimento artístico de vanguarda', 0);

-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'As políticas da "Glasnost" (transparência) e "Perestroika" (reestruturação) foram implementadas por qual líder soviético?', 'Difícil', 'Suas reformas contribuíram para o fim da União Soviética.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Joseph Stalin', 0),
(@id_pergunta, 'Leonid Brejnev', 0),
(@id_pergunta, 'Nikita Khrushchev', 0),
(@id_pergunta, 'Mikhail Gorbachev', 1),
(@id_pergunta, 'Vladimir Putin', 0);

-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A "Paz de Vestfália" (1648), que encerrou a Guerra dos Trinta Anos, é um marco para o estabelecimento de qual princípio nas relações internacionais?', 'Difícil', 'É a ideia de que cada Estado tem autoridade exclusiva sobre seu território.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O princípio da intervenção humanitária', 0),
(@id_pergunta, 'O princípio da soberania dos Estados', 1),
(@id_pergunta, 'O princípio do livre comércio global', 0),
(@id_pergunta, 'O direito à autodeterminação dos povos', 0),
(@id_pergunta, 'O princípio da segurança coletiva', 0);

-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Revolta da Chibata" no Rio de Janeiro em 1910?', 'Difícil', 'Foi liderada por João Cândido, o "Almirante Negro".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma revolta de operários por melhores salários', 0),
(@id_pergunta, 'Um motim de marinheiros contra os castigos corporais na Marinha', 1),
(@id_pergunta, 'Uma rebelião de sertanejos contra os coronéis', 0),
(@id_pergunta, 'Um levante militar para derrubar o presidente', 0),
(@id_pergunta, 'Um protesto de estudantes contra o aumento das mensalidades', 0);

-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O conceito de "Destino Manifesto" foi usado no século XIX para justificar a expansão territorial de qual país?', 'Difícil', 'Era a crença de que a expansão "de mar a mar" era uma vontade divina.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Império Britânico', 0),
(@id_pergunta, 'Estados Unidos', 1),
(@id_pergunta, 'Império Russo', 0),
(@id_pergunta, 'Império do Brasil', 0),
(@id_pergunta, 'França Napoleônica', 0);

-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O "Ato Institucional Número 5" (AI-5) é considerado o mais duro da Ditadura Militar brasileira porque:', 'Difícil', 'Aprofundou a repressão e a censura.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Iniciou o período da Ditadura Militar', 0),
(@id_pergunta, 'Fechou o Congresso Nacional, suspendeu garantias constitucionais e instituiu a censura prévia', 1),
(@id_pergunta, 'Concedeu anistia aos presos políticos', 0),
(@id_pergunta, 'Criou o bipartidarismo (ARENA e MDB)', 0),
(@id_pergunta, 'Estabeleceu eleições diretas para governadores', 0);

-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'As "Reformas de Base" propostas pelo presidente João Goulart, e que serviram como pretexto para o Golpe de 1964, incluíam:', 'Difícil', 'Visavam mudanças estruturais no país.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Apenas a privatização de empresas estatais', 0),
(@id_pergunta, 'Reformas agrária, urbana, tributária e educacional', 1),
(@id_pergunta, 'O alinhamento militar com os Estados Unidos', 0),
(@id_pergunta, 'A proibição de greves e sindicatos', 0),
(@id_pergunta, 'A adoção do parlamentarismo', 0);

-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Guerra do Ópio" em meados do século XIX?', 'Difícil', 'Foi um conflito entre uma potência europeia e a China.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma guerra entre traficantes na Colômbia', 0),
(@id_pergunta, 'Um conflito entre o Império Britânico e a China pelo comércio de ópio', 1),
(@id_pergunta, 'Uma rebelião de camponeses no Afeganistão', 0),
(@id_pergunta, 'Uma guerra entre EUA e México', 0),
(@id_pergunta, 'Uma campanha de saúde pública na Índia', 0);

-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O Plano Schlieffen foi uma estratégia militar de qual país no início da Primeira Guerra Mundial?', 'Difícil', 'Previa uma guerra em duas frentes, contra a França e a Rússia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'França', 0),
(@id_pergunta, 'Rússia', 0),
(@id_pergunta, 'Grã-Bretanha', 0),
(@id_pergunta, 'Alemanha', 1),
(@id_pergunta, 'Áustria-Hungria', 0);

-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'A transferência da capital do Brasil Colônia de Salvador para o Rio de Janeiro em 1763 está diretamente ligada à:', 'Difícil', 'A nova capital ficava mais perto da principal atividade econômica da época.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Produção de açúcar no Nordeste', 0),
(@id_pergunta, 'Exploração de ouro e diamantes na região de Minas Gerais', 1),
(@id_pergunta, 'Criação de gado no Sul', 0),
(@id_pergunta, 'Ameaça de invasões francesas em Salvador', 0),
(@id_pergunta, 'Exploração do pau-brasil na Mata Atlântica', 0);

-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Querela das Investiduras" na Idade Média?', 'Difícil', 'Foi uma disputa de poder entre o Papa e o Imperador.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um debate teológico sobre a natureza de Cristo', 0),
(@id_pergunta, 'Um conflito entre o Papado e o Sacro Império pela nomeação de bispos', 1),
(@id_pergunta, 'Uma guerra entre reinos cristãos e muçulmanos', 0),
(@id_pergunta, 'Uma disputa pela posse de relíquias sagradas', 0),
(@id_pergunta, 'Uma controvérsia sobre a tradução da Bíblia', 0);

-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O que foi a "Doutrina Truman", enunciada no início da Guerra Fria?', 'Difícil', 'Marcou o posicionamento dos EUA contra o avanço do socialismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A política de boa vizinhança com a América Latina', 0),
(@id_pergunta, 'A política de apoiar nações livres contra a subjugação comunista (contenção)', 1),
(@id_pergunta, 'O plano de criação da CIA', 0),
(@id_pergunta, 'A doutrina de não intervenção em conflitos europeus', 0),
(@id_pergunta, 'O programa de desenvolvimento nuclear americano', 0);

-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'O movimento artístico e cultural que floresceu na Europa no século XV e XVI, caracterizado pela revalorização da cultura greco-romana, foi o:', 'Difícil', 'Significa "nascer de novo".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Gótico', 0),
(@id_pergunta, 'Barroco', 0),
(@id_pergunta, 'Renascentismo', 1),
(@id_pergunta, 'Romantismo', 0),
(@id_pergunta, 'Iluminismo', 0);
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (6, 1, 'Qual foi a principal característica da "Noite das Garrafadas", no Período Regencial brasileiro?', 'Difícil', 'Foi um confronto de rua entre apoiadores e opositores de Dom Pedro I.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma celebração pacífica pela abdicação de Dom Pedro I', 0),
(@id_pergunta, 'Um confronto entre brasileiros e portugueses no Rio de Janeiro', 1),
(@id_pergunta, 'Uma revolta de escravos em uma fazenda de café', 0),
(@id_pergunta, 'A quebra de garrafas de vinho importado em protesto', 0),
(@id_pergunta, 'Um motim no Exército pedindo a volta do Imperador', 0);
-- =================================================================
-- ||                      Geografia                              ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================
-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o maior oceano do mundo?',
        'Fácil',
        'Ele banha a costa oeste das Américas e a leste da Ásia e da Oceania.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Oceano Atlântico', 0),
    (@id_pergunta, 'Oceano Índico', 0),
    (@id_pergunta, 'Oceano Pacífico', 1),
    (@id_pergunta, 'Oceano Ártico', 0),
    (@id_pergunta, 'Oceano Antártico', 0);
-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a capital do Brasil?',
        'Fácil',
        'Foi uma cidade planejada e inaugurada em 1960.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'São Paulo', 0),
    (@id_pergunta, 'Rio de Janeiro', 0),
    (@id_pergunta, 'Salvador', 0),
    (@id_pergunta, 'Brasília', 1),
    (@id_pergunta, 'Belo Horizonte', 0);
-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o nome do movimento da Terra em torno do Sol?',
        'Fácil',
        'Este movimento dura aproximadamente 365 dias e causa as estações do ano.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Rotação', 0),
    (@id_pergunta, 'Translação', 1),
    (@id_pergunta, 'Precessão', 0),
    (@id_pergunta, 'Nutação', 0),
    (@id_pergunta, 'Revolução', 0);
-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A Floresta Amazônica está localizada principalmente em qual continente?',
        'Fácil',
        'É o mesmo continente onde fica o Brasil.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'África', 0),
    (@id_pergunta, 'Ásia', 0),
    (@id_pergunta, 'América do Sul', 1),
    (@id_pergunta, 'América do Norte', 0),
    (@id_pergunta, 'Oceania', 0);
-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a montanha mais alta do mundo?',
        'Fácil',
        'Fica na cordilheira do Himalaia.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'K2', 0),
    (@id_pergunta, 'Aconcágua', 0),
    (@id_pergunta, 'Monte Everest', 1),
    (@id_pergunta, 'Monte Fuji', 0),
    (@id_pergunta, 'Monte Kilimanjaro', 0);
-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'As linhas imaginárias horizontais que circulam a Terra são chamadas de:',
        'Fácil',
        'A Linha do Equador é a principal delas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Meridianos', 0),
    (@id_pergunta, 'Trópicos', 0),
    (@id_pergunta, 'Paralelos', 1),
    (@id_pergunta, 'Longitudes', 0),
    (@id_pergunta, 'Alitudes', 0);
-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual país é conhecido como o "País do Sol Nascente"?',
        'Fácil',
        'É um arquipélago no leste da Ásia.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'China', 0),
    (@id_pergunta, 'Coreia do Sul', 0),
    (@id_pergunta, 'Japão', 1),
    (@id_pergunta, 'Índia', 0),
    (@id_pergunta, 'Egito', 0);
-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o maior deserto quente do mundo?',
        'Fácil',
        'Localiza-se no norte da África.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Deserto do Atacama', 0),
    (@id_pergunta, 'Deserto de Gobi', 0),
    (@id_pergunta, 'Deserto do Saara', 1),
    (@id_pergunta, 'Deserto da Arábia', 0),
    (@id_pergunta, 'Deserto da Antártida', 0);
-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Em quantas regiões o Brasil é dividido pelo IBGE?',
        'Fácil',
        'São elas: Norte, Nordeste, Centro-Oeste, Sudeste e Sul.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, '3', 0),
    (@id_pergunta, '4', 0),
    (@id_pergunta, '5', 1),
    (@id_pergunta, '6', 0),
    (@id_pergunta, '7', 0);
-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual rio é o mais longo do mundo?',
        'Fácil',
        'Há uma disputa, mas geralmente ele ou o Amazonas ocupam o primeiro lugar.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Rio Mississippi', 0),
    (@id_pergunta, 'Rio Nilo', 1),
    (@id_pergunta, 'Rio Yangtze', 0),
    (@id_pergunta, 'Rio Congo', 0),
    (@id_pergunta, 'Rio Danúbio', 0);
-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A representação plana da superfície da Terra é chamada de:',
        'Fácil',
        'Usamos para nos localizar e encontrar caminhos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Globo', 0),
    (@id_pergunta, 'Maquete', 0),
    (@id_pergunta, 'Mapa', 1),
    (@id_pergunta, 'Fotografia', 0),
    (@id_pergunta, 'Desenho', 0);
-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o maior país do mundo em área territorial?',
        'Fácil',
        'Ocupa uma grande parte da Ásia e da Europa.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'China', 0),
    (@id_pergunta, 'Canadá', 0),
    (@id_pergunta, 'Estados Unidos', 0),
    (@id_pergunta, 'Rússia', 1),
    (@id_pergunta, 'Brasil', 0);
-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que é um vulcão?',
        'Fácil',
        'É uma estrutura geológica que expele lava e gases.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Uma montanha muito alta', 0),
    (
        @id_pergunta,
        'Uma abertura na crosta terrestre por onde o magma sobe à superfície',
        1
    ),
    (@id_pergunta, 'Um tipo de terremoto', 0),
    (@id_pergunta, 'Uma depressão no terreno', 0),
    (@id_pergunta, 'Uma caverna subterrânea', 0);
-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual o clima predominante na maior parte do Brasil?',
        'Fácil',
        'É caracterizado por altas temperaturas na maior parte do ano.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Temperado', 0),
    (@id_pergunta, 'Polar', 0),
    (@id_pergunta, 'Tropical', 1),
    (@id_pergunta, 'Desértico', 0),
    (@id_pergunta, 'Frio de montanha', 0);
-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual continente é conhecido como o "Velho Mundo"?',
        'Fácil',
        'É o berço da civilização ocidental.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'América', 0),
    (@id_pergunta, 'Oceania', 0),
    (@id_pergunta, 'Ásia', 0),
    (@id_pergunta, 'Europa', 1),
    (@id_pergunta, 'Antártida', 0);
-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a capital da Argentina?',
        'Fácil',
        'É famosa pelo tango.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Santiago', 0),
    (@id_pergunta, 'Montevidéu', 0),
    (@id_pergunta, 'Buenos Aires', 1),
    (@id_pergunta, 'Lima', 0),
    (@id_pergunta, 'Bogotá', 0);
-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que é a vegetação de um lugar?',
        'Fácil',
        'Relaciona-se com as plantas nativas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'O conjunto de animais', 0),
    (@id_pergunta, 'O conjunto de rios', 0),
    (@id_pergunta, 'O conjunto de plantas', 1),
    (@id_pergunta, 'O tipo de relevo', 0),
    (@id_pergunta, 'O clima da região', 0);
-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Onde está localizado o Egito?',
        'Fácil',
        'É um país transcontinental.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Na América do Sul', 0),
    (@id_pergunta, 'Na Europa', 0),
    (@id_pergunta, 'No nordeste da África', 1),
    (@id_pergunta, 'Na Oceania', 0),
    (@id_pergunta, 'No sul da Ásia', 0);
-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o nome do movimento de rotação da Terra sobre seu próprio eixo?',
        'Fácil',
        'Este movimento dura aproximadamente 24 horas e causa o dia e a noite.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Translação', 0),
    (@id_pergunta, 'Rotação', 1),
    (@id_pergunta, 'Órbita', 0),
    (@id_pergunta, 'Eclipse', 0),
    (@id_pergunta, 'Solstício', 0);
-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A Cordilheira dos Andes se estende por qual continente?',
        'Fácil',
        'Percorre a costa oeste deste continente.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'África', 0),
    (@id_pergunta, 'América do Sul', 1),
    (@id_pergunta, 'América do Norte', 0),
    (@id_pergunta, 'Europa', 0),
    (@id_pergunta, 'Ásia', 0);
-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================
-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual bioma brasileiro é caracterizado por clima semiárido e vegetação adaptada à falta de água (xerófita)?',
        'Médio',
        'É predominante no sertão nordestino.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cerrado', 0),
    (@id_pergunta, 'Caatinga', 1),
    (@id_pergunta, 'Pampa', 0),
    (@id_pergunta, 'Mata Atlântica', 0),
    (@id_pergunta, 'Pantanal', 0);
-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que são as placas tectônicas?',
        'Médio',
        'Seu movimento causa terremotos e vulcanismo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Camadas da atmosfera', 0),
    (
        @id_pergunta,
        'Grandes blocos rochosos que compõem a crosta terrestre',
        1
    ),
    (
        @id_pergunta,
        'Zonas de alta pressão no oceano',
        0
    ),
    (
        @id_pergunta,
        'Correntes de ar que influenciam o clima',
        0
    ),
    (
        @id_pergunta,
        'Regiões de planície sedimentar',
        0
    );
-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a principal característica do clima Mediterrâneo?',
        'Médio',
        'Pense no clima da Grécia, Itália e sul da Espanha.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Chuvas abundantes o ano todo', 0),
    (@id_pergunta, 'Invernos frios e secos', 0),
    (
        @id_pergunta,
        'Verões quentes e secos, e invernos amenos e chuvosos',
        1
    ),
    (
        @id_pergunta,
        'Baixas temperaturas e neve durante o inverno',
        0
    ),
    (
        @id_pergunta,
        'Altas temperaturas e alta umidade constantes',
        0
    );
-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O processo de migração de pessoas do campo para a cidade é chamado de:',
        'Médio',
        'Foi muito intenso no Brasil durante o século XX.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Migração pendular', 0),
    (@id_pergunta, 'Êxodo rural', 1),
    (@id_pergunta, 'Nomadismo', 0),
    (@id_pergunta, 'Transumância', 0),
    (@id_pergunta, 'Imigração', 0);
-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o nome do fenômeno climático que consiste no aquecimento anormal das águas do Oceano Pacífico?',
        'Médio',
        'Afeta o clima em várias partes do mundo, inclusive no Brasil.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'La Niña', 0),
    (@id_pergunta, 'El Niño', 1),
    (@id_pergunta, 'Efeito Estufa', 0),
    (@id_pergunta, 'Monção', 0),
    (@id_pergunta, 'Inversão Térmica', 0);
-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O MERCOSUL é um bloco econômico formado por países de qual continente?',
        'Médio',
        'Brasil e Argentina são membros fundadores.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Europa', 0),
    (@id_pergunta, 'Ásia', 0),
    (@id_pergunta, 'América do Sul', 1),
    (@id_pergunta, 'América do Norte', 0),
    (@id_pergunta, 'África', 0);
-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A latitude é a distância em graus de um ponto qualquer da Terra em relação à:',
        'Médio',
        'É a principal linha imaginária horizontal.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Meridiano de Greenwich', 0),
    (@id_pergunta, 'Linha do Equador', 1),
    (@id_pergunta, 'Trópico de Câncer', 0),
    (@id_pergunta, 'Círculo Polar Ártico', 0),
    (@id_pergunta, 'Trópico de Capricórnio', 0);
-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual tipo de relevo é caracterizado por superfícies elevadas e relativamente planas, com altitudes superiores a 300 metros?',
        'Médio',
        'O Planalto Central brasileiro é um exemplo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Planície', 0),
    (@id_pergunta, 'Depressão', 0),
    (@id_pergunta, 'Planalto', 1),
    (@id_pergunta, 'Montanha', 0),
    (@id_pergunta, 'Chapada', 0);
-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A densidade demográfica de um país é calculada pela divisão do número de habitantes pela:',
        'Médio',
        'Resulta em habitantes por quilômetro quadrado.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Taxa de natalidade', 0),
    (@id_pergunta, 'Área total do país', 1),
    (@id_pergunta, 'Renda per capita', 0),
    (@id_pergunta, 'População urbana', 0),
    (@id_pergunta, 'Expectativa de vida', 0);
-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a principal fonte de energia da matriz energética brasileira?',
        'Médio',
        'É uma fonte renovável ligada aos rios.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Petróleo', 0),
    (@id_pergunta, 'Carvão Mineral', 0),
    (@id_pergunta, 'Hidrelétrica', 1),
    (@id_pergunta, 'Eólica', 0),
    (@id_pergunta, 'Nuclear', 0);
-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A teoria que explica a deriva dos continentes e a formação dos oceanos é a:',
        'Médio',
        'Relaciona-se com o movimento das grandes placas da crosta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Teoria do Big Bang', 0),
    (@id_pergunta, 'Teoria da Tectônica de Placas', 1),
    (@id_pergunta, 'Teoria da Evolução', 0),
    (@id_pergunta, 'Teoria Geocêntrica', 0),
    (@id_pergunta, 'Teoria da Geração Espontânea', 0);
-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que são rios perenes?',
        'Médio',
        'O Rio São Francisco é um exemplo no semiárido.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Rios que secam durante a estação seca',
        0
    ),
    (
        @id_pergunta,
        'Rios que nunca secam, com fluxo de água o ano todo',
        1
    ),
    (
        @id_pergunta,
        'Rios que correm em direção ao mar',
        0
    ),
    (@id_pergunta, 'Afluentes de rios maiores', 0),
    (
        @id_pergunta,
        'Rios que correm em terrenos planos',
        0
    );
-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual camada da atmosfera é responsável por filtrar a maior parte da radiação ultravioleta do Sol?',
        'Médio',
        'A camada de ozônio está localizada nela.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Troposfera', 0),
    (@id_pergunta, 'Estratosfera', 1),
    (@id_pergunta, 'Mesosfera', 0),
    (@id_pergunta, 'Termosfera', 0),
    (@id_pergunta, 'Exosfera', 0);
-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O processo de desgaste, transporte e deposição de rochas e solos é chamado de:',
        'Médio',
        'A água e o vento são seus principais agentes.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Tectonismo', 0),
    (@id_pergunta, 'Vulcanismo', 0),
    (@id_pergunta, 'Erosão', 1),
    (@id_pergunta, 'Metamorfismo', 0),
    (@id_pergunta, 'Intemperismo', 0);
-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual dos seguintes países NÃO faz parte do G7 (Grupo dos Sete)?',
        'Médio',
        'O grupo é formado pelas economias mais industrializadas do mundo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Canadá', 0),
    (@id_pergunta, 'Japão', 0),
    (@id_pergunta, 'Itália', 0),
    (@id_pergunta, 'Brasil', 1),
    (@id_pergunta, 'Alemanha', 0);
-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que é a escala de um mapa?',
        'Médio',
        'Indica quantas vezes a realidade foi reduzida.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'O conjunto de símbolos usados no mapa',
        0
    ),
    (
        @id_pergunta,
        'A relação entre a distância no mapa e a distância real',
        1
    ),
    (@id_pergunta, 'A direção do norte geográfico', 0),
    (
        @id_pergunta,
        'A projeção cartográfica utilizada',
        0
    ),
    (
        @id_pergunta,
        'A altitude do terreno representado',
        0
    );
-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O Estreito de Gibraltar separa quais dois continentes?',
        'Médio',
        'Também conecta o Mar Mediterrâneo ao Oceano Atlântico.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Ásia e África', 0),
    (@id_pergunta, 'Europa e África', 1),
    (
        @id_pergunta,
        'América do Norte e América do Sul',
        0
    ),
    (@id_pergunta, 'Europa e Ásia', 0),
    (@id_pergunta, 'Austrália e Ásia', 0);
-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é o bioma de campos temperados encontrado no sul do Brasil?',
        'Médio',
        'Também é conhecido como Campos Sulinos ou Campanha Gaúcha.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Cerrado', 0),
    (@id_pergunta, 'Pantanal', 0),
    (@id_pergunta, 'Pampa', 1),
    (@id_pergunta, 'Caatinga', 0),
    (@id_pergunta, 'Mata de Araucárias', 0);
-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O IDH (Índice de Desenvolvimento Humano) é um indicador social que considera três dimensões. Qual das seguintes NÃO é uma delas?',
        'Médio',
        'O índice foi criado pela ONU.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Educação (anos de estudo)', 0),
    (@id_pergunta, 'Renda (RNB per capita)', 0),
    (@id_pergunta, 'Saúde (expectativa de vida)', 0),
    (
        @id_pergunta,
        'Segurança pública (taxa de criminalidade)',
        1
    ),
    (
        @id_pergunta,
        'Todas as outras são dimensões do IDH',
        0
    );
-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A forma de relevo que se origina do acúmulo de sedimentos trazidos por rios, geralmente em suas fozes, é chamada de:',
        'Médio',
        'A foz do Rio Nilo é um exemplo famoso.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Planalto', 0),
    (@id_pergunta, 'Chapada', 0),
    (@id_pergunta, 'Delta', 1),
    (@id_pergunta, 'Falésia', 0),
    (@id_pergunta, 'Cânion', 0);
-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================
-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A Projeção de Mercator é um tipo de projeção cartográfica que:',
        'Difícil',
        'É muito usada na navegação, mas distorce as áreas dos polos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Mantém as áreas dos continentes em proporção correta, mas distorce as formas.',
        0
    ),
    (
        @id_pergunta,
        'Preserva as formas dos continentes (é conforme), mas distorce as áreas, especialmente perto dos polos.',
        1
    ),
    (
        @id_pergunta,
        'É uma projeção equidistante, mantendo as distâncias a partir de um ponto central.',
        0
    ),
    (
        @id_pergunta,
        'Mostra a Terra como um círculo, com o polo no centro.',
        0
    ),
    (@id_pergunta, 'Não possui nenhuma distorção.', 0);
-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que são "hotspots" de biodiversidade?',
        'Difícil',
        'O Cerrado e a Mata Atlântica são exemplos brasileiros.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Áreas com alta atividade vulcânica',
        0
    ),
    (
        @id_pergunta,
        'Regiões com grande número de espécies endêmicas e alto grau de ameaça',
        1
    ),
    (
        @id_pergunta,
        'Pontos de intensa especulação imobiliária em áreas naturais',
        0
    ),
    (
        @id_pergunta,
        'Zonas de confluência de correntes marítimas quentes',
        0
    ),
    (
        @id_pergunta,
        'Cidades com os maiores índices de poluição do ar',
        0
    );
-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A transição demográfica é um modelo que descreve a mudança nas taxas de:',
        'Difícil',
        'Passa de altas taxas para baixas taxas, com um período de grande crescimento populacional no meio.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Urbanização e industrialização',
        0
    ),
    (@id_pergunta, 'Natalidade e mortalidade', 1),
    (@id_pergunta, 'Emigração e imigração', 0),
    (@id_pergunta, 'Alfabetização e escolaridade', 0),
    (@id_pergunta, 'Crescimento do PIB e inflação', 0);
-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a principal diferença entre intemperismo químico e intemperismo físico?',
        'Difícil',
        'Um altera a composição das rochas, o outro apenas as fragmenta.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'O físico ocorre em climas quentes e o químico em climas frios',
        0
    ),
    (
        @id_pergunta,
        'O químico altera a composição mineralógica da rocha, enquanto o físico apenas a desagrega',
        1
    ),
    (
        @id_pergunta,
        'O físico é causado pela água, e o químico pelo vento',
        0
    ),
    (
        @id_pergunta,
        'O químico forma cavernas e o físico forma dunas',
        0
    ),
    (@id_pergunta, 'Não há diferença entre eles', 0);
-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O "Círculo de Fogo do Pacífico" é uma área conhecida por sua intensa atividade sísmica e vulcânica devido ao:',
        'Difícil',
        'É uma zona onde várias placas se encontram.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Clima equatorial', 0),
    (
        @id_pergunta,
        'Encontro de placas tectônicas (convergência e subducção)',
        1
    ),
    (@id_pergunta, 'Grande profundidade do oceano', 0),
    (
        @id_pergunta,
        'Influência de correntes marítimas frias',
        0
    ),
    (
        @id_pergunta,
        'Elevado número de testes nucleares na região',
        0
    );
-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que foi a "Revolução Verde"?',
        'Difícil',
        'Ocorreu em meados do século XX e visava aumentar a produção agrícola.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Um movimento ambientalista global contra o desmatamento',
        0
    ),
    (
        @id_pergunta,
        'A modernização da agricultura com uso de sementes melhoradas, fertilizantes e agrotóxicos',
        1
    ),
    (
        @id_pergunta,
        'A transição para fontes de energia renováveis',
        0
    ),
    (
        @id_pergunta,
        'A criação de partidos políticos com pauta ecológica',
        0
    ),
    (
        @id_pergunta,
        'Uma revolução popular por reforma agrária no México',
        0
    );
-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que são "rios de voo" na Amazônia?',
        'Difícil',
        'É um processo que transporta umidade para outras regiões do Brasil.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Rotas de aviões que seguem o curso dos rios',
        0
    ),
    (
        @id_pergunta,
        'Massas de ar carregadas de umidade, geradas pela evapotranspiração da floresta',
        1
    ),
    (
        @id_pergunta,
        'Projetos de transposição de bacias hidrográficas',
        0
    ),
    (
        @id_pergunta,
        'Um tipo de chuva de granizo que ocorre na região',
        0
    ),
    (@id_pergunta, 'Nuvens com formato de rios', 0);
-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Em cartografia, curvas de nível são linhas que unem pontos de mesma:',
        'Difícil',
        'Em um mapa topográfico, quanto mais próximas as linhas, mais íngreme é o terreno.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Latitude', 0),
    (@id_pergunta, 'Longitude', 0),
    (@id_pergunta, 'Temperatura', 0),
    (@id_pergunta, 'Altitude ou cota', 1),
    (@id_pergunta, 'Pressão atmosférica', 0);
-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A Doutrina do "Mar Territorial" e da "Zona Econômica Exclusiva" são convenções internacionais que tratam de:',
        'Difícil',
        'Define os direitos de um país sobre as águas e os recursos adjacentes à sua costa.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Proteção da vida marinha', 0),
    (
        @id_pergunta,
        'Soberania e direitos de exploração dos Estados costeiros sobre o mar',
        1
    ),
    (
        @id_pergunta,
        'Regulamentação da pesca em alto-mar',
        0
    ),
    (@id_pergunta, 'Prevenção da poluição marinha', 0),
    (
        @id_pergunta,
        'Rotas de navegação internacionais',
        0
    );
-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O processo de gentrificação em áreas urbanas refere-se a:',
        'Difícil',
        'Muitas vezes ocorre em bairros históricos ou centrais.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Criação de grandes parques e áreas verdes',
        0
    ),
    (
        @id_pergunta,
        'A "enobrecimento" de uma área, com a chegada de moradores de maior renda e a expulsão da população original',
        1
    ),
    (
        @id_pergunta,
        'A verticalização e construção de arranha-céus',
        0
    ),
    (
        @id_pergunta,
        'A expansão da periferia e a formação de favelas',
        0
    ),
    (
        @id_pergunta,
        'O processo de industrialização da cidade',
        0
    );
-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual é a principal característica das rochas metamórficas?',
        'Difícil',
        'O mármore, originado do calcário, é um exemplo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'São formadas pelo resfriamento do magma',
        0
    ),
    (
        @id_pergunta,
        'São formadas pela deposição e compactação de sedimentos',
        0
    ),
    (
        @id_pergunta,
        'São formadas pela transformação de outras rochas sob alta pressão e temperatura',
        1
    ),
    (
        @id_pergunta,
        'São sempre encontradas no fundo dos oceanos',
        0
    ),
    (
        @id_pergunta,
        'Contêm grande quantidade de fósseis',
        0
    );
-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que são as correntes de convecção do manto terrestre?',
        'Difícil',
        'São consideradas o "motor" que move as placas tectônicas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Correntes de água subterrânea aquecida',
        0
    ),
    (
        @id_pergunta,
        'Movimentos circulares de material magmático, que sobe quando quente e desce quando frio',
        1
    ),
    (
        @id_pergunta,
        'Ondas de choque geradas por terremotos',
        0
    ),
    (
        @id_pergunta,
        'Linhas de força do campo magnético terrestre',
        0
    ),
    (@id_pergunta, 'Fluxos de lava na superfície', 0);
-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O Aquífero Guarani, um dos maiores reservatórios de água subterrânea do mundo, está localizado no subsolo de quais países?',
        'Difícil',
        'O Brasil abriga a maior parte dele.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Apenas no Brasil', 0),
    (
        @id_pergunta,
        'Brasil, Paraguai, Uruguai e Argentina',
        1
    ),
    (@id_pergunta, 'Brasil, Bolívia e Peru', 0),
    (@id_pergunta, 'Chile, Argentina e Bolívia', 0),
    (@id_pergunta, 'Venezuela, Colômbia e Brasil', 0);
-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que é a "Diáspora Africana"?',
        'Difícil',
        'Foi um processo forçado que durou séculos.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'A migração de animais da savana',
        0
    ),
    (
        @id_pergunta,
        'A dispersão de povos africanos pelo mundo, principalmente devido ao tráfico de escravos',
        1
    ),
    (
        @id_pergunta,
        'A expansão de desertos no continente africano',
        0
    ),
    (
        @id_pergunta,
        'A divisão do continente africano pelas potências europeias',
        0
    ),
    (
        @id_pergunta,
        'O movimento de independência das nações africanas',
        0
    );
-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'Qual das seguintes cidades é considerada uma "cidade global alfa++", o mais alto nível na hierarquia urbana mundial?',
        'Difícil',
        'São os centros mais importantes da economia global.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'São Paulo', 0),
    (@id_pergunta, 'Tóquio', 0),
    (@id_pergunta, 'Londres', 1),
    (@id_pergunta, 'Paris', 0),
    (@id_pergunta, 'Xangai', 0);
-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'A Teoria dos Lugares Centrais, de Walter Christaller, explica a organização e a hierarquia de qual fenômeno geográfico?',
        'Difícil',
        'Relaciona o tamanho, o número e a distribuição das cidades.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'Zonas climáticas', 0),
    (@id_pergunta, 'Redes urbanas', 1),
    (@id_pergunta, 'Bacias hidrográficas', 0),
    (@id_pergunta, 'Placas tectônicas', 0),
    (@id_pergunta, 'Biomas terrestres', 0);
-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O que é o "albedo" de uma superfície?',
        'Difícil',
        'Superfícies claras, como a neve, têm um albedo alto.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (@id_pergunta, 'A capacidade de reter calor', 0),
    (
        @id_pergunta,
        'O percentual de radiação solar que é refletido pela superfície',
        1
    ),
    (@id_pergunta, 'A taxa de evaporação da água', 0),
    (@id_pergunta, 'A rugosidade do terreno', 0),
    (@id_pergunta, 'A acidez do solo', 0);
-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O Protocolo de Kyoto foi um tratado internacional que visava:',
        'Difícil',
        'Foi um dos primeiros grandes acordos sobre mudanças climáticas.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Proteger espécies ameaçadas de extinção',
        0
    ),
    (
        @id_pergunta,
        'Reduzir as emissões de gases de efeito estufa',
        1
    ),
    (
        @id_pergunta,
        'Banir o uso de minas terrestres',
        0
    ),
    (@id_pergunta, 'Combater a desertificação', 0),
    (@id_pergunta, 'Proteger a camada de ozônio', 0);
-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'O conceito de "fronteira agrícola" no Brasil refere-se:',
        'Difícil',
        'Atualmente, a região conhecida como MATOPIBA é um exemplo.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Às fronteiras internacionais do país',
        0
    ),
    (
        @id_pergunta,
        'Às áreas de avanço da produção agropecuária sobre ecossistemas nativos',
        1
    ),
    (
        @id_pergunta,
        'Aos limites de terras indígenas demarcadas',
        0
    ),
    (
        @id_pergunta,
        'Às áreas de agricultura irrigada no semiárido',
        0
    ),
    (
        @id_pergunta,
        'À produção de alimentos orgânicos',
        0
    );
-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        7,
        1,
        'As monções asiáticas são um fenômeno climático caracterizado por:',
        'Difícil',
        'São cruciais para a agricultura em países como a Índia.'
    );
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta)
VALUES (
        @id_pergunta,
        'Secas prolongadas durante o verão',
        0
    ),
    (
        @id_pergunta,
        'A inversão sazonal dos ventos, que provoca um verão muito chuvoso e um inverno seco',
        1
    ),
    (
        @id_pergunta,
        'Ondas de frio extremo vindas da Sibéria',
        0
    ),
    (
        @id_pergunta,
        'A ocorrência de tufões e ciclones tropicais',
        0
    ),
    (
        @id_pergunta,
        'Temperaturas amenas durante todo o ano',
        0
    );
-- =================================================================
-- ||                      Filosofia                              ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================

-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual filósofo grego é famoso pela frase "Só sei que nada sei"?', 'Fácil', 'Ele foi o mestre de Platão e não deixou obras escritas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Aristóteles', 0),
(@id_pergunta, 'Platão', 0),
(@id_pergunta, 'Sócrates', 1),
(@id_pergunta, 'Pitágoras', 0),
(@id_pergunta, 'Heráclito', 0);

-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A passagem do pensamento mítico para o racional, na Grécia Antiga, é conhecida como a passagem do:', 'Fácil', 'Logos é a palavra grega para razão ou discurso racional.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Caos para a Ordem', 0),
(@id_pergunta, 'Mito para o Logos', 1),
(@id_pergunta, 'Belo para o Bom', 0),
(@id_pergunta, 'Um para o Múltiplo', 0),
(@id_pergunta, 'Divino para o Humano', 0);

-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual filósofo afirmou "Penso, logo existo" (Cogito, ergo sum)?', 'Fácil', 'É considerado o pai da filosofia moderna e do racionalismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'John Locke', 0),
(@id_pergunta, 'Immanuel Kant', 0),
(@id_pergunta, 'René Descartes', 1),
(@id_pergunta, 'Voltaire', 0),
(@id_pergunta, 'Baruch Spinoza', 0);

-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A palavra "Filosofia" tem origem grega e significa:', 'Fácil', '"Philo" significa amor e "Sophia" significa sabedoria.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Amor à sabedoria', 1),
(@id_pergunta, 'Dono da verdade', 0),
(@id_pergunta, 'Estudo da natureza', 0),
(@id_pergunta, 'Busca pela felicidade', 0),
(@id_pergunta, 'Ciência da alma', 0);

-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A Ética é o ramo da filosofia que estuda:', 'Fácil', 'Está relacionada ao que é certo e errado.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A natureza do conhecimento', 0),
(@id_pergunta, 'A estrutura da realidade', 0),
(@id_pergunta, 'Os princípios da moral e da conduta humana', 1),
(@id_pergunta, 'A organização política da sociedade', 0),
(@id_pergunta, 'A beleza e a arte', 0);

-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Platão utilizou uma famosa alegoria para explicar sua teoria do conhecimento. Qual é ela?', 'Fácil', 'Envolve prisioneiros acorrentados que só conseguem ver sombras.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Alegoria da Carruagem', 0),
(@id_pergunta, 'Mito de Sísifo', 0),
(@id_pergunta, 'Alegoria da Caverna', 1),
(@id_pergunta, 'Mito de Prometeu', 0),
(@id_pergunta, 'O Navio dos Insensatos', 0);

-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual destes filósofos foi um importante pensador do Iluminismo?', 'Fácil', 'Defendia a liberdade de expressão e criticava a Igreja e a monarquia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Santo Agostinho', 0),
(@id_pergunta, 'Voltaire', 1),
(@id_pergunta, 'Sêneca', 0),
(@id_pergunta, 'Heráclito', 0),
(@id_pergunta, 'Nietzsche', 0);

-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O conceito de "política", como o estudo da organização da cidade-estado (pólis), surgiu em qual civilização?', 'Fácil', 'Esta civilização também nos deu a filosofia e a democracia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Egípcia', 0),
(@id_pergunta, 'Romana', 0),
(@id_pergunta, 'Grega', 1),
(@id_pergunta, 'Persa', 0),
(@id_pergunta, 'Babilônica', 0);

-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é um argumento "ad hominem"?', 'Fácil', 'É considerado uma falácia lógica, um erro de argumentação.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um argumento baseado em autoridade', 0),
(@id_pergunta, 'Atacar a pessoa que apresenta o argumento, em vez do argumento em si', 1),
(@id_pergunta, 'Um argumento que apela à emoção', 0),
(@id_pergunta, 'Generalizar a partir de poucos casos', 0),
(@id_pergunta, 'Um argumento circular', 0);

-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Aristóteles, discípulo de Platão, foi o fundador de qual escola filosófica?', 'Fácil', 'O nome da escola vem do local onde ele costumava dar suas aulas em Atenas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Academia', 0),
(@id_pergunta, 'Jardim', 0),
(@id_pergunta, 'Pórtico', 0),
(@id_pergunta, 'Liceu', 1),
(@id_pergunta, 'Escola de Mileto', 0);

-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o "bem" para um filósofo utilitarista?', 'Fácil', 'O lema é "a maior felicidade para o maior número de pessoas".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Aquilo que gera mais prazer e felicidade para a maioria', 1),
(@id_pergunta, 'Seguir a vontade de Deus', 0),
(@id_pergunta, 'Agir por dever', 0),
(@id_pergunta, 'Desenvolver as virtudes', 0),
(@id_pergunta, 'Acumular poder', 0);

-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A corrente filosófica que defende que o conhecimento vem principalmente da experiência sensorial é chamada de:', 'Fácil', 'John Locke é um de seus principais representantes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Racionalismo', 0),
(@id_pergunta, 'Ceticismo', 0),
(@id_pergunta, 'Idealismo', 0),
(@id_pergunta, 'Empirismo', 1),
(@id_pergunta, 'Existencialismo', 0);

-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é a Estética na filosofia?', 'Fácil', 'Está relacionada à percepção da beleza.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O estudo da lógica', 0),
(@id_pergunta, 'O estudo do belo e da arte', 1),
(@id_pergunta, 'O estudo da moral', 0),
(@id_pergunta, 'O estudo da política', 0),
(@id_pergunta, 'O estudo do ser', 0);

-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O filósofo Nicolau Maquiavel escreveu qual famosa obra sobre política?', 'Fácil', 'O título da obra é o nome de um governante ideal.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A República', 0),
(@id_pergunta, 'O Príncipe', 1),
(@id_pergunta, 'Leviatã', 0),
(@id_pergunta, 'Do Contrato Social', 0),
(@id_pergunta, 'Utopia', 0);

-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o oposto do determinismo?', 'Fácil', 'Relaciona-se com a capacidade de fazer escolhas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Fatalismo', 0),
(@id_pergunta, 'Livre-arbítrio', 1),
(@id_pergunta, 'Ceticismo', 0),
(@id_pergunta, 'Nihilismo', 0),
(@id_pergunta, 'Racionalismo', 0);

-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A filosofia medieval foi fortemente influenciada por qual religião?', 'Fácil', 'Santo Agostinho e São Tomás de Aquino são seus maiores expoentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Islamismo', 0),
(@id_pergunta, 'Cristianismo', 1),
(@id_pergunta, 'Budismo', 0),
(@id_pergunta, 'Judaísmo', 0),
(@id_pergunta, 'Hinduísmo', 0);

-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual ramo da filosofia se pergunta "O que é o ser?" ou "O que é a realidade"?', 'Fácil', 'Também é chamada de "filosofia primeira".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ética', 0),
(@id_pergunta, 'Epistemologia', 0),
(@id_pergunta, 'Lógica', 0),
(@id_pergunta, 'Metafísica', 1),
(@id_pergunta, 'Política', 0);

-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Os sofistas, na Grécia Antiga, eram conhecidos principalmente por serem mestres em:', 'Fácil', 'Eles ensinavam em troca de pagamento.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Matemática', 0),
(@id_pergunta, 'Retórica e oratória', 1),
(@id_pergunta, 'Medicina', 0),
(@id_pergunta, 'Astronomia', 0),
(@id_pergunta, 'Ética', 0);

-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o "Contrato Social" para filósofos como Hobbes, Locke e Rousseau?', 'Fácil', 'É um acordo para formar uma sociedade organizada.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um documento que se assina ao nascer', 0),
(@id_pergunta, 'Um pacto hipotético entre indivíduos para criar o Estado', 1),
(@id_pergunta, 'Um tipo de contrato de trabalho', 0),
(@id_pergunta, 'Uma lei que regula o comércio', 0),
(@id_pergunta, 'A constituição de um país', 0);

-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A filosofia conhecida como Estoicismo, de Sêneca e Marco Aurélio, defendia:', 'Fácil', 'A busca pela paz de espírito.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A busca desenfreada pelo prazer', 0),
(@id_pergunta, 'A aceitação serena do destino e o controle das paixões', 1),
(@id_pergunta, 'A dúvida radical sobre todas as coisas', 0),
(@id_pergunta, 'A superioridade dos sentimentos sobre a razão', 0),
(@id_pergunta, 'A tomada do poder político', 0);

-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================

-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Aristóteles, o objetivo final da vida humana, a felicidade plena, é chamada de:', 'Médio', 'Não é apenas um sentimento, mas uma vida virtuosa e bem vivida.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ataraxia', 0),
(@id_pergunta, 'Eudaimonia', 1),
(@id_pergunta, 'Hedonismo', 0),
(@id_pergunta, 'Apatia', 0),
(@id_pergunta, 'Sofrosina', 0);

-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual filósofo defendia que a mente humana, ao nascer, é uma "tábula rasa" (folha em branco)?', 'Médio', 'Ele é um dos principais expoentes do empirismo britânico.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'René Descartes', 0),
(@id_pergunta, 'Platão', 0),
(@id_pergunta, 'John Locke', 1),
(@id_pergunta, 'Gottfried Leibniz', 0),
(@id_pergunta, 'Immanuel Kant', 0);

-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O "Imperativo Categórico" é o conceito central da ética de qual filósofo?', 'Médio', 'Ele afirma: "Age de tal modo que a máxima da tua vontade possa valer sempre como princípio de uma legislação universal."');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Jeremy Bentham', 0),
(@id_pergunta, 'Friedrich Nietzsche', 0),
(@id_pergunta, 'Immanuel Kant', 1),
(@id_pergunta, 'Aristóteles', 0),
(@id_pergunta, 'Jean-Paul Sartre', 0);

-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A dialética, como um método de tese, antítese e síntese, é fundamental no sistema filosófico de:', 'Médio', 'Este filósofo idealista alemão foi uma grande inspiração para pensadores posteriores.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Schopenhauer', 0),
(@id_pergunta, 'Hegel', 1),
(@id_pergunta, 'Kierkegaard', 0),
(@id_pergunta, 'Spinoza', 0),
(@id_pergunta, 'Fichte', 0);

-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Thomas Hobbes, o "estado de natureza" do homem é caracterizado por:', 'Médio', 'A vida seria "solitária, pobre, sórdida, brutal e curta".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Paz e cooperação', 0),
(@id_pergunta, 'A "guerra de todos contra todos"', 1),
(@id_pergunta, 'A busca pela igualdade social', 0),
(@id_pergunta, 'O desenvolvimento da razão', 0),
(@id_pergunta, 'A existência de direitos naturais', 0);

-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Friedrich Nietzsche, o conceito que representa o homem que supera a moralidade tradicional e cria seus próprios valores é o:', 'Médio', 'Em alemão, "Übermensch".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Bom selvagem', 0),
(@id_pergunta, 'Cidadão virtuoso', 0),
(@id_pergunta, 'Super-homem (Além-do-homem)', 1),
(@id_pergunta, 'Homem cordial', 0),
(@id_pergunta, 'Animal político', 0);

-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O existencialismo, de filósofos como Jean-Paul Sartre, tem como lema principal:', 'Médio', 'Primeiro existimos, depois nos definimos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A essência precede a existência', 0),
(@id_pergunta, 'A existência precede a essência', 1),
(@id_pergunta, 'Tudo é permitido', 0),
(@id_pergunta, 'Deus está morto', 0),
(@id_pergunta, 'Conhece-te a ti mesmo', 0);

-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Na filosofia de Platão, o mundo que percebemos com os nossos sentidos é chamado de:', 'Médio', 'É o mundo das aparências, das cópias imperfeitas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Mundo das Ideias', 0),
(@id_pergunta, 'Mundo Sensível', 1),
(@id_pergunta, 'Mundo Inteligível', 0),
(@id_pergunta, 'Hiperurânio', 0),
(@id_pergunta, 'Cosmos', 0);

-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Rousseau, o homem nasce bom, mas é corrompido pela:', 'Médio', 'Ele critica as instituições e a propriedade privada.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Natureza', 0),
(@id_pergunta, 'Religião', 0),
(@id_pergunta, 'Sociedade', 1),
(@id_pergunta, 'Razão', 0),
(@id_pergunta, 'Educação', 0);

-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A Escola de Frankfurt, de filósofos como Adorno e Horkheimer, criou o conceito de:', 'Médio', 'É a transformação da cultura em mercadoria.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Vontade de Poder', 0),
(@id_pergunta, 'Indústria Cultural', 1),
(@id_pergunta, 'Banalidade do Mal', 0),
(@id_pergunta, 'Sociedade do Espetáculo', 0),
(@id_pergunta, 'Arqueologia do Saber', 0);

-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o Ceticismo na filosofia?', 'Médio', 'Pirro de Élis foi um de seus primeiros expoentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A crença de que tudo é relativo', 0),
(@id_pergunta, 'A doutrina que afirma a impossibilidade de se chegar a uma certeza absoluta', 1),
(@id_pergunta, 'A busca pela verdade através da fé', 0),
(@id_pergunta, 'A negação da existência de Deus', 0),
(@id_pergunta, 'A afirmação de que a razão é a única fonte de conhecimento', 0);

-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Aristóteles descreveu o ser humano como um "zoon politikon", o que significa:', 'Médio', 'O homem se realiza plenamente na vida em comunidade, na pólis.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Animal Racional', 0),
(@id_pergunta, 'Animal Político', 1),
(@id_pergunta, 'Animal Falante', 0),
(@id_pergunta, 'Animal Social', 0),
(@id_pergunta, 'Animal que ri', 0);

-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A filosofia de Epicuro defendia a busca da felicidade através:', 'Médio', 'A felicidade seria a ausência de dor e perturbação.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Da riqueza material', 0),
(@id_pergunta, 'Dos prazeres moderados e da tranquilidade da alma (ataraxia)', 1),
(@id_pergunta, 'Do poder político', 0),
(@id_pergunta, 'Do cumprimento estrito do dever', 0),
(@id_pergunta, 'Da negação de todos os prazeres', 0);

-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é a "banalidade do mal", segundo Hannah Arendt?', 'Médio', 'Ela desenvolveu este conceito ao analisar o julgamento de um oficial nazista.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A ideia de que o mal é inerente a todos os seres humanos', 0),
(@id_pergunta, 'A prática do mal por pessoas comuns que abdicam de pensar criticamente', 1),
(@id_pergunta, 'O mal que é praticado por prazer sádico', 0),
(@id_pergunta, 'A ideia de que o mal não existe, é apenas ausência do bem', 0),
(@id_pergunta, 'O mal como uma força sobrenatural', 0);

-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Na visão de Maquiavel, um príncipe, para manter o poder, deve:', 'Médio', 'Para ele, a política tem uma lógica própria, separada da moral comum.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ser sempre bom e justo', 0),
(@id_pergunta, 'Agir de acordo com a necessidade, podendo usar da crueldade se for preciso', 1),
(@id_pergunta, 'Obedecer cegamente às leis da Igreja', 0),
(@id_pergunta, 'Distribuir toda a sua riqueza com o povo', 0),
(@id_pergunta, 'Consultar o povo para todas as decisões', 0);

-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O filósofo que dividiu as funções do Estado em Poder Executivo, Legislativo e Judiciário foi:', 'Médio', 'Sua teoria da separação dos poderes influenciou muitas constituições modernas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Hobbes', 0),
(@id_pergunta, 'Rousseau', 0),
(@id_pergunta, 'Montesquieu', 1),
(@id_pergunta, 'Voltaire', 0),
(@id_pergunta, 'Locke', 0);

-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é a Maiêutica Socrática?', 'Médio', 'Sócrates dizia que sua mãe era parteira, e ele também, mas de ideias.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um método de ensino baseado na memorização', 0),
(@id_pergunta, 'A arte de "dar à luz" as ideias através do diálogo e de perguntas', 1),
(@id_pergunta, 'Um tipo de discurso para convencer multidões', 0),
(@id_pergunta, 'Uma técnica de meditação para alcançar a paz interior', 0),
(@id_pergunta, 'Um sistema de classificação de plantas e animais', 0);

-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual é a principal crítica que a filosofia faz ao senso comum?', 'Médio', 'A filosofia busca um conhecimento mais rigoroso.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ser muito complicado e abstrato', 0),
(@id_pergunta, 'Ser fragmentário, assistemático e muitas vezes baseado em preconceitos', 1),
(@id_pergunta, 'Ser acessível a todas as pessoas', 0),
(@id_pergunta, 'Ser baseado na experiência prática', 0),
(@id_pergunta, 'Ser inútil para a vida cotidiana', 0);

-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A ideia do "bom selvagem", de que o homem é bom por natureza, é associada a qual filósofo?', 'Médio', 'Ele também escreveu "Do Contrato Social".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Hobbes', 0),
(@id_pergunta, 'Locke', 0),
(@id_pergunta, 'Kant', 0),
(@id_pergunta, 'Rousseau', 1),
(@id_pergunta, 'Montesquieu', 0);

-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A "Navalha de Ockham" é um princípio filosófico que afirma que:', 'Médio', 'Também é conhecido como princípio da parcimônia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A realidade é mais complexa do que parece', 0),
(@id_pergunta, 'Entre duas teorias que explicam o mesmo, a mais simples é provavelmente a correta', 1),
(@id_pergunta, 'Deve-se duvidar de tudo que não pode ser provado', 0),
(@id_pergunta, 'A verdade absoluta não pode ser alcançada', 0),
(@id_pergunta, 'Tudo que existe tem uma razão de ser', 0);

-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================

-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Na Crítica da Razão Pura, Kant busca resolver a disputa entre racionalismo e empirismo através dos conceitos de:', 'Difícil', 'Ele distingue entre o que pode ser conhecido a priori e a posteriori.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ideias inatas e tábula rasa', 0),
(@id_pergunta, 'Juízos analíticos, sintéticos e sintéticos a priori', 1),
(@id_pergunta, 'Mundo das Ideias e Mundo Sensível', 0),
(@id_pergunta, 'Dialética e materialismo', 0),
(@id_pergunta, 'Impressões e ideias', 0);

-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Baruch Spinoza, Deus é:', 'Difícil', 'Sua visão é panteísta.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um criador pessoal e transcendente', 0),
(@id_pergunta, 'Idêntico à Natureza, a substância única de tudo que existe', 1),
(@id_pergunta, 'Uma ilusão criada pela mente humana', 0),
(@id_pergunta, 'O motor imóvel do universo', 0),
(@id_pergunta, 'O legislador moral do universo', 0);

-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O conceito de "rizoma" na filosofia de Deleuze e Guattari se opõe a qual modelo de pensamento tradicional?', 'Difícil', 'Pense em um sistema sem centro e com múltiplas conexões, em oposição a um com raiz e tronco.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ao pensamento dialético', 0),
(@id_pergunta, 'Ao pensamento arbóreo, hierárquico e linear', 1),
(@id_pergunta, 'Ao pensamento empírico', 0),
(@id_pergunta, 'Ao pensamento cético', 0),
(@id_pergunta, 'Ao pensamento analítico', 0);

-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'No existencialismo de Albert Camus, o "Absurdo" nasce do confronto entre:', 'Difícil', 'É a condição fundamental da existência humana para ele.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O bem e o mal', 0),
(@id_pergunta, 'A razão humana em busca de sentido e o silêncio irracional do mundo', 1),
(@id_pergunta, 'A liberdade individual e as regras sociais', 0),
(@id_pergunta, 'A vida e a morte', 0),
(@id_pergunta, 'O indivíduo e a sociedade', 0);

-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é a "epoché" na fenomenologia de Edmund Husserl?', 'Difícil', 'É o primeiro passo do método fenomenológico.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A análise da linguagem', 0),
(@id_pergunta, 'A suspensão do juízo sobre a existência do mundo exterior para focar na consciência', 1),
(@id_pergunta, 'A interpretação de textos históricos', 0),
(@id_pergunta, 'A busca pelas causas primeiras da realidade', 0),
(@id_pergunta, 'A dedução lógica a partir de axiomas', 0);

-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A teoria das "quatro causas" de Aristóteles inclui quais causas?', 'Difícil', 'Ele as usava para explicar a existência de qualquer coisa.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Lógica, Ética, Política e Estética', 0),
(@id_pergunta, 'Material, Formal, Eficiente e Final', 1),
(@id_pergunta, 'Primeira, Segunda, Terceira e Quarta', 0),
(@id_pergunta, 'Divina, Humana, Natural e Artificial', 0),
(@id_pergunta, 'Passado, Presente, Futuro e Eternidade', 0);

-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para Michel Foucault, o poder não é apenas repressivo, mas também:', 'Difícil', 'Ele argumenta que o poder cria e molda os indivíduos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ineficaz', 0),
(@id_pergunta, 'Produtivo, pois produz saberes, discursos e sujeitos', 1),
(@id_pergunta, 'Exclusivo do Estado', 0),
(@id_pergunta, 'Sempre violento', 0),
(@id_pergunta, 'Um sinônimo de conhecimento', 0);

-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o "problema de Gettier" na epistemologia?', 'Difícil', 'Desafia a definição tradicional de conhecimento como "crença verdadeira justificada".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A questão de se podemos provar a existência de outras mentes', 0),
(@id_pergunta, 'Um contraexemplo que mostra que uma crença pode ser verdadeira e justificada, mas não ser conhecimento', 1),
(@id_pergunta, 'O problema da indução, de justificar a crença em leis universais', 0),
(@id_pergunta, 'A dificuldade de definir o que é "verdade"', 0),
(@id_pergunta, 'O debate sobre se o conhecimento é inato ou adquirido', 0);

-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'No pensamento de Arthur Schopenhauer, o mundo fenomênico é uma representação de uma realidade essencial, que ele chama de:', 'Difícil', 'É uma força cega, irracional e insaciável que move tudo o que existe.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O Espírito Absoluto', 0),
(@id_pergunta, 'A Vontade', 1),
(@id_pergunta, 'O Eterno Retorno', 0),
(@id_pergunta, 'O Inconsciente Coletivo', 0),
(@id_pergunta, 'A Mônada', 0);

-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual filósofo, em "O Leviatã", argumenta que a soberania do Estado deve ser absoluta para evitar o caos do estado de natureza?', 'Difícil', 'Para ele, o pacto social implica em ceder a liberdade a um poder central.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'John Locke', 0),
(@id_pergunta, 'Thomas Hobbes', 1),
(@id_pergunta, 'Jean-Jacques Rousseau', 0),
(@id_pergunta, 'Montesquieu', 0),
(@id_pergunta, 'Platão', 0);

-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O conceito de "Dasein" (ser-aí) é central na obra "Ser e Tempo" de qual filósofo?', 'Difícil', 'Ele se dedicou a investigar a questão do "sentido do Ser".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Edmund Husserl', 0),
(@id_pergunta, 'Martin Heidegger', 1),
(@id_pergunta, 'Jean-Paul Sartre', 0),
(@id_pergunta, 'G. W. F. Hegel', 0),
(@id_pergunta, 'Ludwig Wittgenstein', 0);

-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o "paradoxo do navio de Teseu"?', 'Difícil', 'É um problema filosófico sobre identidade e persistência ao longo do tempo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um paradoxo lógico sobre o movimento', 0),
(@id_pergunta, 'Se todas as partes de um objeto são substituídas, ele continua sendo o mesmo objeto?', 1),
(@id_pergunta, 'Um dilema ético sobre sacrifício', 0),
(@id_pergunta, 'Um problema sobre a existência do livre-arbítrio', 0),
(@id_pergunta, 'Um quebra-cabeça sobre a natureza da verdade', 0);

-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Para David Hume, o princípio da causalidade (a ideia de que um evento causa outro) é:', 'Difícil', 'Ele era um empirista radical.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma lei lógica da razão', 0),
(@id_pergunta, 'Um hábito mental formado pela observação repetida de eventos conjugados', 1),
(@id_pergunta, 'Uma verdade revelada por Deus', 0),
(@id_pergunta, 'Uma propriedade intrínseca dos objetos', 0),
(@id_pergunta, 'Uma categoria a priori do entendimento', 0);

-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O conceito de "sociedade do espetáculo", onde as relações sociais são mediadas por imagens, foi desenvolvido por:', 'Difícil', 'Ele foi um pensador ligado à Internacional Situacionista.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Jean Baudrillard', 0),
(@id_pergunta, 'Guy Debord', 1),
(@id_pergunta, 'Gilles Deleuze', 0),
(@id_pergunta, 'Jürgen Habermas', 0),
(@id_pergunta, 'Michel Foucault', 0);

-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A distinção de Simone de Beauvoir, "não se nasce mulher, torna-se mulher", significa que:', 'Difícil', 'É uma das frases mais famosas do feminismo existencialista.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O gênero é uma construção social e cultural, não um destino biológico', 1),
(@id_pergunta, 'A biologia feminina é irrelevante', 0),
(@id_pergunta, 'Apenas mulheres adultas são verdadeiramente mulheres', 0),
(@id_pergunta, 'As mulheres devem se esforçar para se tornarem masculinas', 0),
(@id_pergunta, 'A identidade de gênero pode ser escolhida livremente a qualquer momento', 0);

-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'Qual destes é um exemplo de um "dilema moral" clássico discutido em ética?', 'Difícil', 'Envolve um trem desgovernado e uma escolha difícil.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O Paradoxo do Mentiroso', 0),
(@id_pergunta, 'O Dilema do Bonde (Trolley Problem)', 1),
(@id_pergunta, 'O Problema da Indução', 0),
(@id_pergunta, 'O Paradoxo de Zenão', 0),
(@id_pergunta, 'O Gato de Schrödinger', 0);

-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A filosofia de Ludwig Wittgenstein em sua segunda fase, nas "Investigações Filosóficas", argumenta que o significado de uma palavra é:', 'Difícil', 'Ele se afasta da ideia de que as palavras apenas representam objetos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Definido por sua correspondência com um objeto no mundo', 0),
(@id_pergunta, 'Seu uso em um determinado "jogo de linguagem"', 1),
(@id_pergunta, 'Uma imagem mental privada', 0),
(@id_pergunta, 'Fixado por uma definição de dicionário', 0),
(@id_pergunta, 'Inato à mente humana', 0);

-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O que é o "véu da ignorância" no pensamento político de John Rawls?', 'Difícil', 'É uma experiência de pensamento para definir princípios de justiça.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A incapacidade das pessoas de entenderem política', 0),
(@id_pergunta, 'Uma situação hipotética onde ninguém conhece sua própria posição social para escolher princípios justos', 1),
(@id_pergunta, 'A censura imposta por governos autoritários', 0),
(@id_pergunta, 'O preconceito que impede o diálogo racional', 0),
(@id_pergunta, 'A ideia de que a ignorância é uma bênção', 0);

-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'O conceito de "eterno retorno" em Nietzsche sugere que devemos:', 'Difícil', 'É uma forma de afirmar a vida em sua totalidade.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Tentar escapar do ciclo de reencarnações', 0),
(@id_pergunta, 'Viver cada momento como se fôssemos repeti-lo infinitamente', 1),
(@id_pergunta, 'Acreditar que a história se repete', 0),
(@id_pergunta, 'Buscar uma vida após a morte', 0),
(@id_pergunta, 'Arrepender-se dos erros do passado', 0);

-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (8, 1, 'A ideia de que o universo é composto por substâncias indivisíveis chamadas "mônadas" foi proposta por qual filósofo racionalista?', 'Difícil', 'Ele também é conhecido por seu otimismo metafísico de que este é "o melhor dos mundos possíveis".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Descartes', 0),
(@id_pergunta, 'Spinoza', 0),
(@id_pergunta, 'Leibniz', 1),
(@id_pergunta, 'Kant', 0),
(@id_pergunta, 'Hegel', 0);


-- =================================================================
-- ||                      Sociologia                             ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================

-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual é o principal objeto de estudo da Sociologia?', 'Fácil', 'Ela estuda as relações entre as pessoas e os grupos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O corpo humano', 0),
(@id_pergunta, 'A mente individual', 0),
(@id_pergunta, 'A sociedade e as relações sociais', 1),
(@id_pergunta, 'O passado da humanidade', 0),
(@id_pergunta, 'A política e o Estado', 0);

-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conjunto de costumes, crenças, artes e leis de um grupo social é chamado de:', 'Fácil', 'É tudo aquilo que o ser humano produz ao viver em sociedade.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Genética', 0),
(@id_pergunta, 'Cultura', 1),
(@id_pergunta, 'Instinto', 0),
(@id_pergunta, 'Geografia', 0),
(@id_pergunta, 'Governo', 0);

-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Para Émile Durkheim, as regras e normas que "coagem" o indivíduo a agir de certa forma são chamadas de:', 'Fácil', 'É um fato social.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ações Sociais', 0),
(@id_pergunta, 'Fatos Sociais', 1),
(@id_pergunta, 'Leis Naturais', 0),
(@id_pergunta, 'Vontades Individuais', 0),
(@id_pergunta, 'Instintos', 0);

-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O processo pelo qual aprendemos as regras e os valores da sociedade em que vivemos é a:', 'Fácil', 'Começa na família e continua na escola e em outros grupos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Educação formal', 0),
(@id_pergunta, 'Socialização', 1),
(@id_pergunta, 'Adaptação biológica', 0),
(@id_pergunta, 'Revolução', 0),
(@id_pergunta, 'Globalização', 0);

-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual sociólogo é considerado o "pai da Sociologia" por ter criado o termo e defendido uma ciência da sociedade?', 'Fácil', 'Ele é o fundador do Positivismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Émile Durkheim', 0),
(@id_pergunta, 'Max Weber', 0),
(@id_pergunta, 'Auguste Comte', 1),
(@id_pergunta, 'Herbert Spencer', 0),
(@id_pergunta, 'Zygmunt Bauman', 0);

-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A divisão da sociedade em camadas ou estratos, com diferentes níveis de riqueza, prestígio e poder, é chamada de:', 'Fácil', 'Pode ser por castas, estamentos ou classes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Democracia', 0),
(@id_pergunta, 'Estratificação Social', 1),
(@id_pergunta, 'Cultura de Massa', 0),
(@id_pergunta, 'Solidariedade Social', 0),
(@id_pergunta, 'Anomia Social', 0);

-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Julgar outras culturas a partir dos valores e padrões da sua própria cultura é um exemplo de:', 'Fácil', 'É o oposto do relativismo cultural.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Globalização', 0),
(@id_pergunta, 'Alteridade', 0),
(@id_pergunta, 'Etnocentrismo', 1),
(@id_pergunta, 'Exotismo', 0),
(@id_pergunta, 'Antropologia', 0);

-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual destas é considerada uma instituição social fundamental?', 'Fácil', 'É o primeiro grupo social do qual a maioria das pessoas faz parte.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um time de futebol', 0),
(@id_pergunta, 'Um grupo de amigos', 0),
(@id_pergunta, 'A Família', 1),
(@id_pergunta, 'Um fã-clube', 0),
(@id_pergunta, 'Uma empresa privada', 0);

-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual sociólogo clássico se dedicou a entender a "ação social" e seus diferentes tipos?', 'Fácil', 'Ele é um dos "três porquinhos" da sociologia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Auguste Comte', 0),
(@id_pergunta, 'Max Weber', 1),
(@id_pergunta, 'Talcott Parsons', 0),
(@id_pergunta, 'Émile Durkheim', 0),
(@id_pergunta, 'Norbert Elias', 0);

-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de cidadania está relacionado principalmente a:', 'Fácil', 'Envolve participar da vida em sociedade e ter acesso a garantias.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ter um emprego fixo', 0),
(@id_pergunta, 'Ser membro de uma religião', 0),
(@id_pergunta, 'Direitos e deveres de um indivíduo em um Estado', 1),
(@id_pergunta, 'Morar em uma cidade grande', 0),
(@id_pergunta, 'Falar o idioma oficial do país', 0);

-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é um movimento social?', 'Fácil', 'O movimento feminista e o movimento ambientalista são exemplos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O deslocamento de pessoas entre cidades', 0),
(@id_pergunta, 'Uma ação coletiva organizada para promover ou resistir a uma mudança social', 1),
(@id_pergunta, 'Uma festa popular ou carnaval', 0),
(@id_pergunta, 'O crescimento da população de um país', 0),
(@id_pergunta, 'Uma eleição para presidente', 0);

-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A capacidade de impor a própria vontade sobre os outros, mesmo contra a resistência destes, é a definição sociológica de:', 'Fácil', 'Pode ser exercida de várias formas, não apenas pela força.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Cultura', 0),
(@id_pergunta, 'Carisma', 0),
(@id_pergunta, 'Poder', 1),
(@id_pergunta, 'Trabalho', 0),
(@id_pergunta, 'Amizade', 0);

-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual o nome do processo de intensificação das trocas e da interdependência entre os países em escala mundial?', 'Fácil', 'A internet é um de seus maiores símbolos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Industrialização', 0),
(@id_pergunta, 'Urbanização', 0),
(@id_pergunta, 'Nacionalismo', 0),
(@id_pergunta, 'Globalização', 1),
(@id_pergunta, 'Isolacionismo', 0);

-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A sociologia que busca entender a sociedade a partir da interpretação dos sentidos e significados que os indivíduos dão às suas ações é chamada de:', 'Fácil', 'Max Weber é o principal representante dessa abordagem.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Positivista', 0),
(@id_pergunta, 'Compreensiva', 1),
(@id_pergunta, 'Funcionalista', 0),
(@id_pergunta, 'Estruturalista', 0),
(@id_pergunta, 'Crítica', 0);

-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual sociólogo clássico comparou a sociedade a um "organismo vivo", onde cada parte tem uma função?', 'Fácil', 'Essa visão é chamada de funcionalismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Max Weber', 0),
(@id_pergunta, 'Émile Durkheim', 1),
(@id_pergunta, 'Auguste Comte', 0),
(@id_pergunta, 'Georg Simmel', 0),
(@id_pergunta, 'Ferdinand Tönnies', 0);

-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "indústria cultural", segundo Adorno e Horkheimer?', 'Fácil', 'Relaciona-se com a produção em massa de filmes, músicas e programas de TV.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O conjunto de museus e teatros de uma cidade', 0),
(@id_pergunta, 'A transformação da cultura em mercadoria para consumo em massa', 1),
(@id_pergunta, 'A cultura popular e o folclore de um povo', 0),
(@id_pergunta, 'A produção de equipamentos para artistas', 0),
(@id_pergunta, 'O setor industrial de um país', 0);

-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A migração de pessoas do campo para as cidades é um fenômeno sociológico conhecido como:', 'Fácil', 'Foi um processo muito intenso durante a Revolução Industrial.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Globalização', 0),
(@id_pergunta, 'Gentrificação', 0),
(@id_pergunta, 'Êxodo Rural', 1),
(@id_pergunta, 'Turismo', 0),
(@id_pergunta, 'Migração pendular', 0);

-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é "status social"?', 'Fácil', 'Pode ser atribuído (nascimento) ou adquirido (profissão).');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A quantidade de dinheiro que uma pessoa tem', 0),
(@id_pergunta, 'A posição que um indivíduo ocupa na estrutura social, associada a um grau de prestígio', 1),
(@id_pergunta, 'A opinião política de uma pessoa', 0),
(@id_pergunta, 'O estado civil de um indivíduo', 0),
(@id_pergunta, 'O número de amigos nas redes sociais', 0);

-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O estudo das populações humanas, seu tamanho, distribuição e composição, é chamado de:', 'Fácil', 'Usa dados como taxas de natalidade e mortalidade.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Geopolítica', 0),
(@id_pergunta, 'Psicologia Social', 0),
(@id_pergunta, 'Demografia', 1),
(@id_pergunta, 'Antropologia', 0),
(@id_pergunta, 'Economia', 0);

-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "tipo ideal" como uma ferramenta para a análise sociológica foi desenvolvido por:', 'Fácil', 'Ele usou essa ferramenta para estudar a burocracia e a dominação.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Émile Durkheim', 0),
(@id_pergunta, 'Max Weber', 1),
(@id_pergunta, 'Auguste Comte', 0),
(@id_pergunta, 'Talcott Parsons', 0),
(@id_pergunta, 'Pierre Bourdieu', 0);


-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================

-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Para Durkheim, a "solidariedade mecânica" é típica de qual tipo de sociedade?', 'Médio', 'É baseada na semelhança entre os indivíduos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Sociedades complexas e industriais', 0),
(@id_pergunta, 'Sociedades tradicionais e com pouca divisão do trabalho', 1),
(@id_pergunta, 'Sociedades globais e conectadas', 0),
(@id_pergunta, 'Sociedades pós-modernas', 0),
(@id_pergunta, 'Sociedades anárquicas', 0);

-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A dominação baseada na crença na santidade das tradições e na legitimidade daqueles que foram chamados a governar por elas é, para Weber, a dominação:', 'Médio', 'Reis e patriarcas são exemplos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Racional-legal', 0),
(@id_pergunta, 'Carismática', 0),
(@id_pergunta, 'Tradicional', 1),
(@id_pergunta, 'Democrática', 0),
(@id_pergunta, 'Burocrática', 0);

-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é "anomia social" no pensamento de Émile Durkheim?', 'Médio', 'Ocorre em momentos de grande mudança social.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um estado de perfeita harmonia social', 0),
(@id_pergunta, 'Um sentimento de pertencimento a um grupo', 0),
(@id_pergunta, 'Uma situação de ausência ou enfraquecimento das normas sociais', 1),
(@id_pergunta, 'A divisão do trabalho em uma sociedade', 0),
(@id_pergunta, 'A consciência coletiva de um povo', 0);

-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "mobilidade social"?', 'Médio', 'Pode ser ascendente ou descendente.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A capacidade de se mudar de uma cidade para outra', 0),
(@id_pergunta, 'A mudança de posição de um indivíduo ou grupo na estrutura social', 1),
(@id_pergunta, 'A participação em diversos grupos sociais ao mesmo tempo', 0),
(@id_pergunta, 'A velocidade com que as notícias se espalham', 0),
(@id_pergunta, 'A troca de governo em uma eleição', 0);

-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "habitus", como um sistema de disposições duráveis que molda nossas práticas e percepções, foi desenvolvido por:', 'Médio', 'Este sociólogo francês também falou sobre capital cultural e simbólico.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Michel Foucault', 0),
(@id_pergunta, 'Pierre Bourdieu', 1),
(@id_pergunta, 'Anthony Giddens', 0),
(@id_pergunta, 'Zygmunt Bauman', 0),
(@id_pergunta, 'Jürgen Habermas', 0);

-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual é a principal característica da burocracia, segundo a análise de Max Weber?', 'Médio', 'É uma forma de organização baseada em regras claras e hierarquia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A lentidão e a ineficiência', 0),
(@id_pergunta, 'A impessoalidade e a racionalidade na aplicação das regras', 1),
(@id_pergunta, 'A corrupção e o nepotismo', 0),
(@id_pergunta, 'A liderança carismática', 0),
(@id_pergunta, 'A ausência de regras formais', 0);

-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A ideia de "modernidade líquida", onde as relações sociais e as identidades são fluidas e instáveis, é de autoria de:', 'Médio', 'Foi um sociólogo polonês-britânico.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Pierre Bourdieu', 0),
(@id_pergunta, 'Zygmunt Bauman', 1),
(@id_pergunta, 'Ulrich Beck', 0),
(@id_pergunta, 'Anthony Giddens', 0),
(@id_pergunta, 'Manuel Castells', 0);

-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual a diferença fundamental entre senso comum e conhecimento sociológico?', 'Médio', 'A sociologia utiliza métodos e teorias específicas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O senso comum é sempre falso e a sociologia é sempre verdadeira', 0),
(@id_pergunta, 'A sociologia busca ser sistemática, rigorosa e crítica, enquanto o senso comum é fragmentário e acrítico', 1),
(@id_pergunta, 'Não há diferença, a sociologia apenas complica o senso comum', 0),
(@id_pergunta, 'O senso comum é prático e a sociologia é puramente teórica', 0),
(@id_pergunta, 'Apenas sociólogos podem entender a sociedade', 0);

-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A ideia de que a religião funciona como um "cimento social", reforçando a coesão do grupo, é central no pensamento de qual sociólogo?', 'Médio', 'Ele estudou as religiões totêmicas dos aborígenes australianos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Max Weber', 0),
(@id_pergunta, 'Émile Durkheim', 1),
(@id_pergunta, 'Auguste Comte', 0),
(@id_pergunta, 'Georg Simmel', 0),
(@id_pergunta, 'Herbert Spencer', 0);

-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é "relativismo cultural"?', 'Médio', 'É uma postura metodológica importante para antropólogos e sociólogos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Acreditar que todas as culturas são iguais e devem se tornar uma só', 0),
(@id_pergunta, 'A ideia de que as práticas e valores de uma cultura devem ser entendidos em seus próprios termos', 1),
(@id_pergunta, 'A crença de que a própria cultura é superior às outras', 0),
(@id_pergunta, 'A mistura de diferentes elementos culturais', 0),
(@id_pergunta, 'A negação da existência da cultura', 0);

-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A "Ação Social Afetiva", para Max Weber, é aquela guiada por:', 'Médio', 'Pense em uma ação motivada por um forte sentimento.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Cálculo racional de custos e benefícios', 0),
(@id_pergunta, 'Sentimentos, paixões ou estados emocionais', 1),
(@id_pergunta, 'Costumes e hábitos arraigados', 0),
(@id_pergunta, 'Crença em valores éticos ou religiosos', 0),
(@id_pergunta, 'Leis e regulamentos', 0);

-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'No livro "Casa-Grande & Senzala", qual sociólogo brasileiro analisou a formação da sociedade patriarcal e miscigenada do Brasil?', 'Médio', 'Ele valorizou a contribuição das três raças (indígena, africana e europeia).');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Sérgio Buarque de Holanda', 0),
(@id_pergunta, 'Florestan Fernandes', 0),
(@id_pergunta, 'Gilberto Freyre', 1),
(@id_pergunta, 'Darcy Ribeiro', 0),
(@id_pergunta, 'Caio Prado Júnior', 0);

-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que distingue o conceito sociológico de "gênero" do conceito de "sexo"?', 'Médio', 'Um é biológico, o outro é uma construção social.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Não há diferença, são sinônimos', 0),
(@id_pergunta, 'Gênero refere-se às construções sociais e culturais do masculino e feminino, enquanto sexo se refere às características biológicas', 1),
(@id_pergunta, 'Sexo é um conceito ultrapassado e gênero é o termo moderno', 0),
(@id_pergunta, 'Gênero se aplica apenas a humanos e sexo a animais', 0),
(@id_pergunta, 'Gênero é uma escolha e sexo é uma imposição', 0);

-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "sociedade em rede", que enfatiza o papel das tecnologias de informação e comunicação, foi popularizado por:', 'Médio', 'É um sociólogo espanhol contemporâneo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Anthony Giddens', 0),
(@id_pergunta, 'Jürgen Habermas', 0),
(@id_pergunta, 'Manuel Castells', 1),
(@id_pergunta, 'Zygmunt Bauman', 0),
(@id_pergunta, 'Pierre Bourdieu', 0);

-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Em uma pirâmide etária de um país desenvolvido, qual formato é mais comum?', 'Médio', 'Países desenvolvidos costumam ter baixas taxas de natalidade e alta expectativa de vida.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Base larga e topo estreito', 0),
(@id_pergunta, 'Base e topo com larguras semelhantes, ou topo mais largo', 1),
(@id_pergunta, 'Formato de losango', 0),
(@id_pergunta, 'Base estreita e topo largo', 0),
(@id_pergunta, 'Formato triangular perfeito', 0);

-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Para Max Weber, a "ética protestante" (especialmente a calvinista) teve um papel importante no desenvolvimento de qual sistema econômico?', 'Médio', 'A valorização do trabalho e da poupança teria contribuído para o "espírito" desse sistema.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Feudalismo', 0),
(@id_pergunta, 'Socialismo', 0),
(@id_pergunta, 'Capitalismo', 1),
(@id_pergunta, 'Mercantilismo', 0),
(@id_pergunta, 'Comunismo primitivo', 0);

-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual das seguintes é uma característica de uma "comunidade", segundo Ferdinand Tönnies?', 'Médio', 'É baseada em laços afetivos e de parentesco.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Relações impessoais e contratuais', 0),
(@id_pergunta, 'Laços fortes, íntimos e baseados na vontade essencial (Wesenwille)', 1),
(@id_pergunta, 'Grande divisão do trabalho', 0),
(@id_pergunta, 'Foco no interesse individual', 0),
(@id_pergunta, 'Existência de um Estado burocrático', 0);

-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "ideologia" pode ser entendido em sociologia como:', 'Médio', 'Pode ser usado para justificar e manter as relações de poder existentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A opinião pessoal de cada indivíduo', 0),
(@id_pergunta, 'Um conjunto de ideias, crenças e valores que orienta o comportamento e mascara a realidade social', 1),
(@id_pergunta, 'O plano de governo de um partido político', 0),
(@id_pergunta, 'A capacidade de ter ideias criativas', 0),
(@id_pergunta, 'Uma mentira intencional', 0);

-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A ideia do "homem cordial", que descreve uma suposta característica do brasileiro de ser guiado pela afetividade e por relações pessoais, foi proposta por:', 'Médio', 'Ele é o autor de "Raízes do Brasil".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Gilberto Freyre', 0),
(@id_pergunta, 'Darcy Ribeiro', 0),
(@id_pergunta, 'Sérgio Buarque de Holanda', 1),
(@id_pergunta, 'Florestan Fernandes', 0),
(@id_pergunta, 'Celso Furtado', 0);

-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A dominação "carismática" de Weber se baseia:', 'Médio', 'Líderes revolucionários e profetas religiosos são exemplos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Na obediência a leis e estatutos', 0),
(@id_pergunta, 'Na devoção a qualidades extraordinárias, santas ou heroicas de uma pessoa', 1),
(@id_pergunta, 'No poder econômico', 0),
(@id_pergunta, 'No respeito aos costumes e tradições', 0),
(@id_pergunta, 'No uso da força militar', 0);

-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================

-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Em seu estudo sobre "O Suicídio", Durkheim identifica um tipo de suicídio que ocorre devido a uma integração social excessiva, onde o indivíduo se sacrifica pelo grupo. Qual é?', 'Difícil', 'Ocorre, por exemplo, em contextos militares ou seitas religiosas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Suicídio Egoísta', 0),
(@id_pergunta, 'Suicídio Anômico', 0),
(@id_pergunta, 'Suicídio Altruísta', 1),
(@id_pergunta, 'Suicídio Fatalista', 0),
(@id_pergunta, 'Suicídio Patológico', 0);

-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A "jaula de aço" da racionalização, para Max Weber, refere-se a:', 'Difícil', 'É uma consequência do avanço da burocracia e do capitalismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Um sistema prisional de alta segurança', 0),
(@id_pergunta, 'Ao aprisionamento do indivíduo em um mundo desencantado, governado pela lógica instrumental e pela burocracia', 1),
(@id_pergunta, 'A estrutura de uma fábrica na Revolução Industrial', 0),
(@id_pergunta, 'A liberdade proporcionada pela tecnologia', 0),
(@id_pergunta, 'A rigidez das tradições religiosas', 0);

-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "violência simbólica" de Pierre Bourdieu descreve:', 'Difícil', 'É uma forma de violência suave, invisível, que impõe significados como legítimos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A violência física entre grupos rivais', 0),
(@id_pergunta, 'A imposição de uma cultura dominante sobre grupos dominados, fazendo com que estes a vejam como natural', 1),
(@id_pergunta, 'A violência representada na mídia e nas artes', 0),
(@id_pergunta, 'A ameaça de uso da força pelo Estado', 0),
(@id_pergunta, 'O uso de símbolos para incitar a violência', 0);

-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Para Michel Foucault, o "biopoder" é:', 'Difícil', 'É um poder que se exerce sobre a vida, tanto do indivíduo (disciplina) quanto da população (biopolítica).');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O poder das indústrias farmacêuticas', 0),
(@id_pergunta, 'Um conjunto de técnicas de poder voltadas para administrar e regular a vida das populações', 1),
(@id_pergunta, 'O poder dos seres vivos sobre o meio ambiente', 0),
(@id_pergunta, 'A força biológica de um indivíduo', 0),
(@id_pergunta, 'Um tipo de energia renovável', 0);

-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "imaginação sociológica" para C. Wright Mills?', 'Difícil', 'É a capacidade de conectar problemas pessoais a questões sociais mais amplas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A capacidade de criar teorias sociológicas complexas', 0),
(@id_pergunta, 'A qualidade mental que permite ver a relação entre biografias individuais e a história social', 1),
(@id_pergunta, 'O uso da ficção para entender a sociedade', 0),
(@id_pergunta, 'A imaginação dos fundadores da sociologia', 0),
(@id_pergunta, 'A habilidade de prever o futuro da sociedade', 0);

-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'No livro "O Processo Civilizador", Norbert Elias analisa:', 'Difícil', 'Ele estuda a transformação dos costumes e das emoções na Europa ao longo dos séculos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O desenvolvimento do capitalismo', 0),
(@id_pergunta, 'A história da formação do Estado moderno e a modelagem do autocontrole dos indivíduos', 1),
(@id_pergunta, 'A evolução das espécies', 0),
(@id_pergunta, 'O processo de urbanização no Brasil', 0),
(@id_pergunta, 'A história dos processos judiciais', 0);

-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A teoria da "construção social da realidade" de Berger e Luckmann afirma que:', 'Difícil', 'A realidade não é algo dado, mas sim produzido e mantido pelas interações humanas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A realidade objetiva não existe, tudo é subjetivo', 0),
(@id_pergunta, 'A sociedade é um produto humano e o homem é um produto social', 1),
(@id_pergunta, 'A realidade é determinada pela estrutura econômica', 0),
(@id_pergunta, 'A realidade é uma construção puramente linguística', 0),
(@id_pergunta, 'Apenas arquitetos e engenheiros constroem a realidade', 0);

-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "capital cultural" de Bourdieu refere-se a:', 'Difícil', 'Pode ser incorporado (modos de falar), objetivado (livros, quadros) ou institucionalizado (diplomas).');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O dinheiro investido em atividades culturais', 0),
(@id_pergunta, 'O conhecimento, as habilidades e as competências valorizadas socialmente que um indivíduo possui', 1),
(@id_pergunta, 'A capital de um país com muitos museus', 0),
(@id_pergunta, 'A capacidade de criar obras de arte', 0),
(@id_pergunta, 'O conjunto de todos os bens culturais de uma nação', 0);

-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "sociedade de risco", segundo o sociólogo Ulrich Beck?', 'Difícil', 'Nela, os principais problemas são os riscos criados pelo próprio desenvolvimento tecnológico.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma sociedade com altas taxas de criminalidade', 0),
(@id_pergunta, 'Uma fase da modernidade em que a sociedade lida com os riscos e as incertezas que ela mesma produz', 1),
(@id_pergunta, 'Uma sociedade que pratica esportes radicais', 0),
(@id_pergunta, 'O mercado financeiro de alto risco', 0),
(@id_pergunta, 'Uma sociedade à beira de uma guerra', 0);

-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A teoria do "agir comunicativo" de Jürgen Habermas propõe que:', 'Difícil', 'Ele busca um fundamento para a razão e a democracia na linguagem.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Toda ação social é estratégica e visa ao sucesso individual', 0),
(@id_pergunta, 'A comunicação é a base da dominação social', 0),
(@id_pergunta, 'É possível alcançar o entendimento mútuo através do diálogo livre e racional', 1),
(@id_pergunta, 'A comunicação de massa sempre manipula o público', 0),
(@id_pergunta, 'A linguagem é uma estrutura que determina o pensamento', 0);

-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Em "O Segundo Sexo", Simone de Beauvoir afirma que "não se nasce mulher, torna-se mulher" para argumentar que:', 'Difícil', 'Sua análise distingue o sexo biológico do gênero social.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A biologia feminina é irrelevante para a vida social', 0),
(@id_pergunta, 'A feminilidade é uma construção social e cultural imposta às mulheres', 1),
(@id_pergunta, 'As mulheres são superiores aos homens', 0),
(@id_pergunta, 'A identidade de gênero é uma escolha puramente individual', 0),
(@id_pergunta, 'Apenas mulheres adultas podem ser consideradas mulheres', 0);

-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A distinção entre "solidariedade orgânica" e "mecânica" foi proposta por qual sociólogo?', 'Difícil', 'A orgânica é baseada na interdependência e na divisão do trabalho.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Max Weber', 0),
(@id_pergunta, 'Ferdinand Tönnies', 0),
(@id_pergunta, 'Émile Durkheim', 1),
(@id_pergunta, 'Georg Simmel', 0),
(@id_pergunta, 'Talcott Parsons', 0);

-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O conceito de "racismo estrutural" afirma que:', 'Difícil', 'O racismo não é apenas um ato individual, mas está presente nas instituições.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Apenas algumas pessoas são racistas', 0),
(@id_pergunta, 'O racismo é uma parte normalizada e constituinte das instituições, práticas e cultura de uma sociedade', 1),
(@id_pergunta, 'O racismo é um problema que só existe em estruturas governamentais', 0),
(@id_pergunta, 'O racismo pode ser combatido apenas com leis mais duras', 0),
(@id_pergunta, 'A estrutura de um prédio pode ser racista', 0);

-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Para Florestan Fernandes, a modernização no Brasil ocorreu de forma:', 'Difícil', 'Ele analisou a dificuldade do negro em se integrar na sociedade de classes após a abolição.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Completa e inclusiva, beneficiando todos os grupos sociais', 0),
(@id_pergunta, 'Conservadora e desigual, mantendo privilégios e estruturas arcaicas', 1),
(@id_pergunta, 'Lenta, mas gradual e justa', 0),
(@id_pergunta, 'Rápida e revolucionária, destruindo toda a ordem anterior', 0),
(@id_pergunta, 'Impulsionada exclusivamente por capital estrangeiro', 0);

-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "teoria da dependência" na sociologia latino-americana?', 'Difícil', 'Analisa a relação entre países centrais e periféricos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A teoria de que os indivíduos dependem da sociedade para sobreviver', 0),
(@id_pergunta, 'A análise de que o subdesenvolvimento dos países periféricos é uma consequência do desenvolvimento dos países centrais', 1),
(@id_pergunta, 'O estudo da dependência química como um problema social', 0),
(@id_pergunta, 'A teoria de que a cultura depende da economia', 0),
(@id_pergunta, 'O estudo da dependência emocional nas relações familiares', 0);

-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual sociólogo usou a metáfora do "desfile" para explicar a relação entre o indivíduo e a sociedade, onde só vemos o que está perto de nós?', 'Difícil', 'Ele foi um dos expoentes da Escola de Chicago.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Erving Goffman', 0),
(@id_pergunta, 'C. Wright Mills', 0),
(@id_pergunta, 'Robert Park', 0),
(@id_pergunta, 'Howard S. Becker', 0),
(@id_pergunta, 'Norbert Elias', 1);

-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A abordagem sociológica de Erving Goffman, que usa metáforas do teatro para analisar as interações sociais, é chamada de:', 'Difícil', 'Ele fala em "palco", "bastidores" e "representação do eu".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Análise funcionalista', 0),
(@id_pergunta, 'Abordagem dramatúrgica', 1),
(@id_pergunta, 'Teoria do conflito', 0),
(@id_pergunta, 'Etnometodologia', 0),
(@id_pergunta, 'Estruturalismo', 0);

-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'O que é a "dupla consciência", conceito desenvolvido por W. E. B. Du Bois?', 'Difícil', 'Descreve a sensação de se ver através dos olhos dos outros, especialmente em um contexto de opressão racial.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A capacidade de falar duas línguas', 0),
(@id_pergunta, 'O sentimento de ter duas almas ou identidades conflitantes, uma americana e outra negra, para os afro-americanos', 1),
(@id_pergunta, 'A consciência de classe e a consciência de gênero', 0),
(@id_pergunta, 'A capacidade de ser consciente de si e do outro ao mesmo tempo', 0),
(@id_pergunta, 'Um distúrbio psicológico', 0);

-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'A ideia de "pós-modernidade" como um período de incredulidade em relação às "grandes narrativas" (ou metanarrativas) foi proposta por:', 'Difícil', 'Ele questionou as grandes teorias que prometiam a emancipação humana, como o Iluminismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Michel Foucault', 0),
(@id_pergunta, 'Jean-François Lyotard', 1),
(@id_pergunta, 'Jacques Derrida', 0),
(@id_pergunta, 'Gilles Deleuze', 0),
(@id_pergunta, 'Jean Baudrillard', 0);

-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (9, 1, 'Qual a principal crítica que a teoria do sistema-mundo de Immanuel Wallerstein faz às teorias de modernização?', 'Difícil', 'Sua teoria divide o mundo em centro, semiperiferia e periferia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Que elas ignoram os fatores culturais', 0),
(@id_pergunta, 'Que elas analisam os países de forma isolada, ignorando que eles fazem parte de um único sistema capitalista mundial', 1),
(@id_pergunta, 'Que elas são muito otimistas sobre o progresso', 0),
(@id_pergunta, 'Que elas se focam demais na Europa', 0),
(@id_pergunta, 'Que elas não usam dados estatísticos suficientes', 0);
-- =================================================================
-- ||                        Inglês                               ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================

-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the color of the sky on a clear day?', 'Fácil', 'It starts with the letter B.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Green', 0),
(@id_pergunta, 'Red', 0),
(@id_pergunta, 'Blue', 1),
(@id_pergunta, 'Yellow', 0),
(@id_pergunta, 'Black', 0);

-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which word is the opposite of "hot"?', 'Fácil', 'Pense no clima do inverno.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Warm', 0),
(@id_pergunta, 'Cold', 1),
(@id_pergunta, 'Sunny', 0),
(@id_pergunta, 'Dry', 0),
(@id_pergunta, 'Fast', 0);

-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'How do you say "gato" in English?', 'Fácil', 'It rhymes with "hat".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Dog', 0),
(@id_pergunta, 'Mouse', 0),
(@id_pergunta, 'Bird', 0),
(@id_pergunta, 'Cat', 1),
(@id_pergunta, 'Fish', 0);

-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the plural of "book"?', 'Fácil', 'Apenas adicione a letra "s".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Booken', 0),
(@id_pergunta, 'Books', 1),
(@id_pergunta, 'Bookes', 0),
(@id_pergunta, 'Bice', 0),
(@id_pergunta, 'Bookies', 0);

-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Complete the sentence: "I ___ a student."', 'Fácil', 'É a forma do verbo "to be" para a primeira pessoa do singular.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'is', 0),
(@id_pergunta, 'are', 0),
(@id_pergunta, 'am', 1),
(@id_pergunta, 'be', 0),
(@id_pergunta, 'was', 0);

-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What do you use to write on a blackboard?', 'Fácil', 'É um objeto branco ou colorido, feito de giz.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Pen', 0),
(@id_pergunta, 'Pencil', 0),
(@id_pergunta, 'Chalk', 1),
(@id_pergunta, 'Marker', 0),
(@id_pergunta, 'Crayon', 0);

-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which of these is a fruit?', 'Fácil', 'It can be red or green and keeps the doctor away.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Carrot', 0),
(@id_pergunta, 'Potato', 0),
(@id_pergunta, 'Apple', 1),
(@id_pergunta, 'Broccoli', 0),
(@id_pergunta, 'Onion', 0);

-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the number that comes after nine?', 'Fácil', 'Começa com a letra "T".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Eight', 0),
(@id_pergunta, 'Seven', 0),
(@id_pergunta, 'Eleven', 0),
(@id_pergunta, 'Ten', 1),
(@id_pergunta, 'Twelve', 0);

-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What do people drink in the morning to wake up?', 'Fácil', 'É uma bebida escura e quente.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Juice', 0),
(@id_pergunta, 'Water', 0),
(@id_pergunta, 'Coffee', 1),
(@id_pergunta, 'Soda', 0),
(@id_pergunta, 'Milk', 0);

-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'In the sentence "She runs fast", what is "she"?', 'Fácil', 'É uma palavra usada para se referir a uma pessoa do sexo feminino.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A verb', 0),
(@id_pergunta, 'An adjective', 0),
(@id_pergunta, 'A pronoun', 1),
(@id_pergunta, 'A noun', 0),
(@id_pergunta, 'An adverb', 0);

-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which month comes before April?', 'Fácil', 'O nome do mês lembra uma ação de caminhar.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'May', 0),
(@id_pergunta, 'February', 0),
(@id_pergunta, 'June', 0),
(@id_pergunta, 'March', 1),
(@id_pergunta, 'January', 0);

-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'How do you say "obrigado" in English?', 'Fácil', 'É uma das palavras mais comuns para agradecer.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Please', 0),
(@id_pergunta, 'Sorry', 0),
(@id_pergunta, 'Thank you', 1),
(@id_pergunta, 'Hello', 0),
(@id_pergunta, 'Goodbye', 0);

-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the simple past of the verb "go"?', 'Fácil', 'É um verbo irregular.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Goed', 0),
(@id_pergunta, 'Gone', 0),
(@id_pergunta, 'Went', 1),
(@id_pergunta, 'Going', 0),
(@id_pergunta, 'Goes', 0);

-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which animal says "moo"?', 'Fácil', 'Este animal nos dá leite.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A sheep', 0),
(@id_pergunta, 'A pig', 0),
(@id_pergunta, 'A cow', 1),
(@id_pergunta, 'A chicken', 0),
(@id_pergunta, 'A horse', 0);

-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Complete: "An ___ a day keeps the doctor away."', 'Fácil', 'É uma fruta.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'orange', 0),
(@id_pergunta, 'banana', 0),
(@id_pergunta, 'apple', 1),
(@id_pergunta, 'egg', 0),
(@id_pergunta, 'avocado', 0);

-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the capital of the USA?', 'Fácil', 'Não é Nova Iorque.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Los Angeles', 0),
(@id_pergunta, 'Chicago', 0),
(@id_pergunta, 'Washington, D.C.', 1),
(@id_pergunta, 'Miami', 0),
(@id_pergunta, 'New York City', 0);

-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which word is a synonym for "big"?', 'Fácil', 'Começa com a letra "L".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Small', 0),
(@id_pergunta, 'Short', 0),
(@id_pergunta, 'Large', 1),
(@id_pergunta, 'Thin', 0),
(@id_pergunta, 'Little', 0);

-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Where do you sleep in a house?', 'Fácil', 'O nome do cômodo tem a palavra "bed".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Kitchen', 0),
(@id_pergunta, 'Bathroom', 0),
(@id_pergunta, 'Living room', 0),
(@id_pergunta, 'Bedroom', 1),
(@id_pergunta, 'Garage', 0);

-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What do you wear on your feet?', 'Fácil', 'Pode ser tênis, sapatos, sandálias...');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Hats', 0),
(@id_pergunta, 'Gloves', 0),
(@id_pergunta, 'Shoes', 1),
(@id_pergunta, 'Pants', 0),
(@id_pergunta, 'Shirts', 0);

-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which preposition completes the sentence: "The cat is ___ the table."', 'Fácil', 'Indica que algo está em cima de uma superfície.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'in', 0),
(@id_pergunta, 'under', 0),
(@id_pergunta, 'on', 1),
(@id_pergunta, 'at', 0),
(@id_pergunta, 'of', 0);


-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================

-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which sentence is in the Present Perfect Tense?', 'Médio', 'Fala de uma ação passada com relevância no presente.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'I went to the store yesterday.', 0),
(@id_pergunta, 'I have seen that movie before.', 1),
(@id_pergunta, 'I am watching a movie now.', 0),
(@id_pergunta, 'I will see a movie tomorrow.', 0),
(@id_pergunta, 'I usually see movies on weekends.', 0);

-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The phrasal verb "give up" means:', 'Médio', 'É o que você não deve fazer quando estuda inglês.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'To distribute', 0),
(@id_pergunta, 'To stop trying; to quit', 1),
(@id_pergunta, 'To offer something', 0),
(@id_pergunta, 'To return something', 0),
(@id_pergunta, 'To continue', 0);

-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'If you do something "once in a blue moon", you do it:', 'Médio', 'A "lua azul" é um evento astronômico raro.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Every day', 0),
(@id_pergunta, 'Very rarely', 1),
(@id_pergunta, 'Every month', 0),
(@id_pergunta, 'At night', 0),
(@id_pergunta, 'Only when you are sad', 0);

-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Choose the correct modal verb: "You ___ study for the test if you want to pass."', 'Médio', 'Indica uma forte recomendação ou necessidade.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'can', 0),
(@id_pergunta, 'should', 1),
(@id_pergunta, 'may', 0),
(@id_pergunta, 'might', 0),
(@id_pergunta, 'could', 0);

-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the comparative form of the adjective "good"?', 'Médio', 'É uma forma irregular, não se usa "-er" ou "more".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Gooder', 0),
(@id_pergunta, 'More good', 0),
(@id_pergunta, 'Better', 1),
(@id_pergunta, 'Best', 0),
(@id_pergunta, 'Goodest', 0);

-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which of these is used to cook food, like soup?', 'Médio', 'É um recipiente fundo, geralmente de metal.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A plate', 0),
(@id_pergunta, 'A fork', 0),
(@id_pergunta, 'A pot', 1),
(@id_pergunta, 'A glass', 0),
(@id_pergunta, 'A napkin', 0);

-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The expression "It''s raining cats and dogs" means:', 'Médio', 'É uma forma figurada de descrever o tempo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Animals are falling from the sky', 0),
(@id_pergunta, 'It is raining very heavily', 1),
(@id_pergunta, 'It is just a light shower', 0),
(@id_pergunta, 'It is a sunny day', 0),
(@id_pergunta, 'There is a lot of noise outside', 0);

-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'A person who designs buildings is called a(n):', 'Médio', 'Pense em "arquitetura".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Engineer', 0),
(@id_pergunta, 'Architect', 1),
(@id_pergunta, 'Plumber', 0),
(@id_pergunta, 'Carpenter', 0),
(@id_pergunta, 'Artist', 0);

-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Complete: "I look forward ___ hearing from you."', 'Médio', 'É uma preposição comum em finais de e-mails formais.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'for', 0),
(@id_pergunta, 'to', 1),
(@id_pergunta, 'at', 0),
(@id_pergunta, 'in', 0),
(@id_pergunta, 'with', 0);

-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which word is a synonym for "beautiful"?', 'Médio', 'É frequentemente usado para descrever paisagens ou pessoas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Ugly', 0),
(@id_pergunta, 'Pretty', 1),
(@id_pergunta, 'Old', 0),
(@id_pergunta, 'Sad', 0),
(@id_pergunta, 'Angry', 0);

-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the gerund of the verb "swim"?', 'Médio', 'Lembre-se de dobrar a última consoante.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Swam', 0),
(@id_pergunta, 'Swiming', 0),
(@id_pergunta, 'Swimming', 1),
(@id_pergunta, 'To swim', 0),
(@id_pergunta, 'Swum', 0);

-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'If something is "expensive", it:', 'Médio', 'É o oposto de "cheap" (barato).');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Is easy to find', 0),
(@id_pergunta, 'Costs a lot of money', 1),
(@id_pergunta, 'Is very small', 0),
(@id_pergunta, 'Is very old', 0),
(@id_pergunta, 'Is a different color', 0);

-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What does the abbreviation "e.g." stand for?', 'Médio', 'Vem do latim "exempli gratia".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'And so on', 0),
(@id_pergunta, 'For example', 1),
(@id_pergunta, 'In other words', 0),
(@id_pergunta, 'Approximately', 0),
(@id_pergunta, 'Etcetera', 0);

-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Choose the correct question word: "___ do you live? - I live in Brazil."', 'Médio', 'A pergunta é sobre um lugar.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Who', 0),
(@id_pergunta, 'What', 0),
(@id_pergunta, 'When', 0),
(@id_pergunta, 'Where', 1),
(@id_pergunta, 'Why', 0);

-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The superlative form of "difficult" is:', 'Médio', 'Use "the most" para adjetivos longos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Difficultest', 0),
(@id_pergunta, 'More difficult', 0),
(@id_pergunta, 'The most difficult', 1),
(@id_pergunta, 'The difficultest', 0),
(@id_pergunta, 'Most difficult', 0);

-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'A person from Japan is called:', 'Médio', 'O sufixo é "-ese".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Japonian', 0),
(@id_pergunta, 'Japish', 0),
(@id_pergunta, 'Japanese', 1),
(@id_pergunta, 'Japon', 0),
(@id_pergunta, 'Japonese', 0);

-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which sentence uses "will" to express a future intention?', 'Médio', 'É uma decisão tomada no momento da fala.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'I am going to travel next month.', 0),
(@id_pergunta, 'The phone is ringing. I will get it!', 1),
(@id_pergunta, 'Look at the clouds! It is going to rain.', 0),
(@id_pergunta, 'I might go to the party.', 0),
(@id_pergunta, 'I am traveling to London now.', 0);

-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'If you "break a leg", someone is wishing you:', 'Médio', 'É uma expressão idiomática usada no teatro.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Bad luck', 0),
(@id_pergunta, 'Good luck', 1),
(@id_pergunta, 'To be careful', 0),
(@id_pergunta, 'To have an accident', 0),
(@id_pergunta, 'To go to the hospital', 0);

-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'An "uncountable noun" is a noun that:', 'Médio', 'Pense em "water" ou "information".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Does not exist', 0),
(@id_pergunta, 'Cannot be counted and does not have a plural form', 1),
(@id_pergunta, 'Is always singular', 0),
(@id_pergunta, 'Is always plural', 0),
(@id_pergunta, 'Is a proper noun', 0);

-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which word is an adverb? "She sings beautifully."', 'Médio', 'Adverbs often end in "-ly" and modify verbs.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'She', 0),
(@id_pergunta, 'sings', 0),
(@id_pergunta, 'beautifully', 1),
(@id_pergunta, 'beautiful', 0),
(@id_pergunta, 'song', 0);

-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================

-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Complete the Third Conditional sentence: "If I had studied harder, I ___ the exam."', 'Difícil', 'A estrutura é "If + past perfect, would have + past participle".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'would pass', 0),
(@id_pergunta, 'would have passed', 1),
(@id_pergunta, 'will pass', 0),
(@id_pergunta, 'passed', 0),
(@id_pergunta, 'pass', 0);

-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The sentence "The book was written by a famous author" is in the:', 'Difícil', 'O foco está no objeto que sofre a ação.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Active Voice', 0),
(@id_pergunta, 'Passive Voice', 1),
(@id_pergunta, 'Present Perfect', 0),
(@id_pergunta, 'Future Tense', 0),
(@id_pergunta, 'Imperative Mood', 0);

-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What does the idiom "to bite the bullet" mean?', 'Difícil', 'Imagine um soldado antigo tendo que suportar a dor de uma cirurgia sem anestesia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'To eat something very hard', 0),
(@id_pergunta, 'To face a difficult situation with courage', 1),
(@id_pergunta, 'To go to the dentist', 0),
(@id_pergunta, 'To stop talking', 0),
(@id_pergunta, 'To get angry', 0);

-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which phrasal verb means "to invent a story or excuse"?', 'Difícil', 'É frequentemente usado com "an excuse" ou "a story".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Look up to', 0),
(@id_pergunta, 'Make up', 1),
(@id_pergunta, 'Run into', 0),
(@id_pergunta, 'Take off', 0),
(@id_pergunta, 'Get along', 0);

-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The word "although" is a conjunction that introduces a clause of:', 'Difícil', 'É sinônimo de "even though" ou "in spite of the fact that".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Reason', 0),
(@id_pergunta, 'Contrast or concession', 1),
(@id_pergunta, 'Time', 0),
(@id_pergunta, 'Condition', 0),
(@id_pergunta, 'Purpose', 0);

-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'In Reported Speech, "I am happy" becomes:', 'Difícil', 'O tempo verbal geralmente "volta um passo" no passado.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'He said he is happy.', 0),
(@id_pergunta, 'He said he was happy.', 1),
(@id_pergunta, 'He said he will be happy.', 0),
(@id_pergunta, 'He said I am happy.', 0),
(@id_pergunta, 'He said he has been happy.', 0);

-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The word "ubiquitous" means:', 'Difícil', 'Pense em smartphones no mundo de hoje.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Very rare', 0),
(@id_pergunta, 'Present, appearing, or found everywhere', 1),
(@id_pergunta, 'Extremely beautiful', 0),
(@id_pergunta, 'Difficult to understand', 0),
(@id_pergunta, 'Completely useless', 0);

-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Choose the correct relative pronoun: "The woman ___ car was stolen went to the police."', 'Difícil', 'Indica posse.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'who', 0),
(@id_pergunta, 'whose', 1),
(@id_pergunta, 'which', 0),
(@id_pergunta, 'that', 0),
(@id_pergunta, 'whom', 0);

-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'If a plan "goes south", it:', 'Difícil', 'A direção "sul" aqui tem uma conotação negativa.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Becomes successful', 0),
(@id_pergunta, 'Fails or goes wrong', 1),
(@id_pergunta, 'Is postponed', 0),
(@id_pergunta, 'Moves to a warmer place', 0),
(@id_pergunta, 'Is kept secret', 0);

-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'A "plethora" of options means:', 'Difícil', 'É um sinônimo de "excess" ou "abundance".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A lack of options', 0),
(@id_pergunta, 'A large or excessive amount of options', 1),
(@id_pergunta, 'A few good options', 0),
(@id_pergunta, 'Confusing options', 0),
(@id_pergunta, 'Only two options', 0);

-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which sentence uses a subjunctive mood?', 'Difícil', 'É usado para expressar desejos, sugestões ou situações hipotéticas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'He is a good student.', 0),
(@id_pergunta, 'I suggest that he be more careful.', 1),
(@id_pergunta, 'He was here yesterday.', 0),
(@id_pergunta, 'He will arrive soon.', 0),
(@id_pergunta, 'Be careful!', 0);

-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The expression "the elephant in the room" refers to:', 'Difícil', 'É um problema que todos veem, mas ninguém quer discutir.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'The biggest person in a group', 0),
(@id_pergunta, 'An obvious major problem or controversial issue that is being ignored', 1),
(@id_pergunta, 'A very quiet person', 0),
(@id_pergunta, 'An unexpected surprise', 0),
(@id_pergunta, 'A popular topic of conversation', 0);

-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Complete the sentence: "Not only ___ late, but he also forgot the documents."', 'Difícil', 'Quando uma frase começa com "not only", ocorre uma inversão entre sujeito e verbo auxiliar.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'he was', 0),
(@id_pergunta, 'was he', 1),
(@id_pergunta, 'he is', 0),
(@id_pergunta, 'is he', 0),
(@id_pergunta, 'he did be', 0);

-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'A "meritocracy" is a system in which advancement is based on:', 'Difícil', 'A palavra combina "mérito" e "poder".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Wealth and social class', 0),
(@id_pergunta, 'Individual ability or achievement', 1),
(@id_pergunta, 'Age and experience', 0),
(@id_pergunta, 'Popularity', 0),
(@id_pergunta, 'Family connections', 0);

-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'To "juxtapose" two things is to:', 'Difícil', 'Artistas fazem isso para criar um efeito de contraste.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Combine them into one', 0),
(@id_pergunta, 'Place them close together for contrasting effect', 1),
(@id_pergunta, 'Separate them as much as possible', 0),
(@id_pergunta, 'Analyze them individually', 0),
(@id_pergunta, 'Destroy them both', 0);

-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'What is the meaning of "ephemeral"?', 'Difícil', 'Pense na vida de uma borboleta.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Lasting forever', 0),
(@id_pergunta, 'Lasting for a very short time', 1),
(@id_pergunta, 'Extremely important', 0),
(@id_pergunta, 'Weak and fragile', 0),
(@id_pergunta, 'Bright and colorful', 0);

-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The sentence "I wish I were taller" expresses a:', 'Difícil', 'Usa o passado do subjuntivo para falar sobre o presente.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A plan for the future', 0),
(@id_pergunta, 'A wish or regret about a present situation', 1),
(@id_pergunta, 'A command', 0),
(@id_pergunta, 'A past habit', 0),
(@id_pergunta, 'A scientific fact', 0);

-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Someone who is "gregarious" is:', 'Difícil', 'Vem do latim "grex", que significa rebanho.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Shy and introverted', 0),
(@id_pergunta, 'Fond of company; sociable', 1),
(@id_pergunta, 'Angry and irritable', 0),
(@id_pergunta, 'Lazy and unmotivated', 0),
(@id_pergunta, 'Highly intelligent', 0);

-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'Which tag question is correct? "She speaks French, ___?"', 'Difícil', 'A "tag" geralmente usa o verbo auxiliar oposto da frase principal.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'is she', 0),
(@id_pergunta, 'doesn''t she', 1),
(@id_pergunta, 'does she', 0),
(@id_pergunta, 'isn''t she', 0),
(@id_pergunta, 'speaks she not', 0);

-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (10, 1, 'The idiom "to let the cat out of the bag" means:', 'Difícil', 'É o oposto de "to keep a secret".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'To buy a pet', 0),
(@id_pergunta, 'To reveal a secret carelessly or by mistake', 1),
(@id_pergunta, 'To start a fight', 0),
(@id_pergunta, 'To set an animal free', 0),
(@id_pergunta, 'To make a situation more complicated', 0);
-- =================================================================
-- ||                       Espanhol                              ||
-- =================================================================
-- =================================================================
-- ||                        Artes                                ||
-- =================================================================
-- =================================================================
-- ||                     PERGUNTAS FÁCEIS                        ||
-- =================================================================

-- Pergunta 1
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Quem pintou a "Mona Lisa"?', 'Fácil', 'Foi um gênio do Renascimento italiano, também inventor e cientista.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Vincent van Gogh', 0),
(@id_pergunta, 'Pablo Picasso', 0),
(@id_pergunta, 'Leonardo da Vinci', 1),
(@id_pergunta, 'Michelangelo', 0),
(@id_pergunta, 'Claude Monet', 0);

-- Pergunta 2
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual movimento artístico é conhecido pelo uso de formas geométricas, como cubos e cilindros?', 'Fácil', 'Pablo Picasso foi um de seus pioneiros.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Surrealismo', 0),
(@id_pergunta, 'Impressionismo', 0),
(@id_pergunta, 'Cubismo', 1),
(@id_pergunta, 'Barroco', 0),
(@id_pergunta, 'Romantismo', 0);

-- Pergunta 3
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual artista brasileiro(a) pintou o quadro "Abaporu"?', 'Fácil', 'Foi uma figura central do movimento modernista no Brasil.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Di Cavalcanti', 0),
(@id_pergunta, 'Tarsila do Amaral', 1),
(@id_pergunta, 'Candido Portinari', 0),
(@id_pergunta, 'Anita Malfatti', 0),
(@id_pergunta, 'Romero Britto', 0);

-- Pergunta 4
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Como se chama uma pintura do próprio artista?', 'Fácil', 'É um retrato de si mesmo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Paisagem', 0),
(@id_pergunta, 'Natureza-morta', 0),
(@id_pergunta, 'Retrato', 0),
(@id_pergunta, 'Autorretrato', 1),
(@id_pergunta, 'Marinha', 0);

-- Pergunta 5
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é o nome da famosa pintura de Vincent van Gogh que retrata um céu noturno e um vilarejo?', 'Fácil', 'O título em português significa "A Noite Estrelada".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Os Girassóis', 0),
(@id_pergunta, 'A Noite Estrelada', 1),
(@id_pergunta, 'O Quarto em Arles', 0),
(@id_pergunta, 'Comedores de Batata', 0),
(@id_pergunta, 'Auto-Retrato com a Orelha Cortada', 0);

-- Pergunta 6
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Quais são as três cores primárias?', 'Fácil', 'A mistura delas pode gerar todas as outras cores.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Verde, Roxo e Laranja', 0),
(@id_pergunta, 'Vermelho, Amarelo e Azul', 1),
(@id_pergunta, 'Branco, Preto e Cinza', 0),
(@id_pergunta, 'Rosa, Marrom e Ciano', 0),
(@id_pergunta, 'Vermelho, Verde e Azul (RGB)', 0);

-- Pergunta 7
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A arte de criar imagens com pequenos pedaços de pedra ou vidro colorido é chamada de:', 'Fácil', 'Era muito comum na Roma e Bizâncio antigos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Afresco', 0),
(@id_pergunta, 'Gravura', 0),
(@id_pergunta, 'Mosaico', 1),
(@id_pergunta, 'Escultura', 0),
(@id_pergunta, 'Aquarela', 0);

-- Pergunta 8
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual artista renascentista pintou o teto da Capela Sistina?', 'Fácil', 'Ele também esculpiu a estátua de Davi.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Rafael', 0),
(@id_pergunta, 'Donatello', 0),
(@id_pergunta, 'Leonardo da Vinci', 0),
(@id_pergunta, 'Michelangelo', 1),
(@id_pergunta, 'Ticiano', 0);

-- Pergunta 9
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O movimento artístico que busca representar o mundo dos sonhos e do subconsciente é o:', 'Fácil', 'Salvador Dalí é um de seus artistas mais famosos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Realismo', 0),
(@id_pergunta, 'Surrealismo', 1),
(@id_pergunta, 'Cubismo', 0),
(@id_pergunta, 'Expressionismo', 0),
(@id_pergunta, 'Fauvismo', 0);

-- Pergunta 10
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual foi o arquiteto brasileiro responsável pelo planejamento de Brasília?', 'Fácil', 'Ele também projetou a Pampulha em Belo Horizonte.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Lúcio Costa', 0),
(@id_pergunta, 'Oscar Niemeyer', 1),
(@id_pergunta, 'Vilanova Artigas', 0),
(@id_pergunta, 'Lina Bo Bardi', 0),
(@id_pergunta, 'Affonso Eduardo Reidy', 0);

-- Pergunta 11
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a arte de representar imagens ou objetos em superfícies tridimensionais?', 'Fácil', 'Pode ser feita em mármore, bronze, argila, etc.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Pintura', 0),
(@id_pergunta, 'Desenho', 0),
(@id_pergunta, 'Fotografia', 0),
(@id_pergunta, 'Escultura', 1),
(@id_pergunta, 'Música', 0);

-- Pergunta 12
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A famosa pintura "O Grito", que expressa angústia e desespero, foi criada por qual artista?', 'Fácil', 'Ele foi um pintor norueguês, precursor do Expressionismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Gustav Klimt', 0),
(@id_pergunta, 'Edvard Munch', 1),
(@id_pergunta, 'Egon Schiele', 0),
(@id_pergunta, 'Wassily Kandinsky', 0),
(@id_pergunta, 'Paul Klee', 0);

-- Pergunta 13
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a principal manifestação artística e cultural do Carnaval brasileiro?', 'Fácil', 'Envolve música, dança, carros alegóricos e fantasias.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O Bumba meu boi', 0),
(@id_pergunta, 'O desfile das escolas de samba', 1),
(@id_pergunta, 'A Folia de Reis', 0),
(@id_pergunta, 'A quadrilha junina', 0),
(@id_pergunta, 'O Maracatu', 0);

-- Pergunta 14
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O principal material utilizado para fazer cerâmica e vasos é a:', 'Fácil', 'É um tipo de terra ou barro.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Madeira', 0),
(@id_pergunta, 'Pedra', 0),
(@id_pergunta, 'Argila', 1),
(@id_pergunta, 'Metal', 0),
(@id_pergunta, 'Areia', 0);

-- Pergunta 15
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A arte de se expressar através de movimentos corporais ritmados é a:', 'Fácil', 'Pode ser clássica, como o balé, ou popular, como o samba.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Música', 0),
(@id_pergunta, 'Dança', 1),
(@id_pergunta, 'Pintura', 0),
(@id_pergunta, 'Teatro', 0),
(@id_pergunta, 'Escultura', 0);

-- Pergunta 16
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual escultor francês é o autor da famosa obra "O Pensador"?', 'Fácil', 'Ele é considerado um dos precursores da escultura moderna.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Donatello', 0),
(@id_pergunta, 'Bernini', 0),
(@id_pergunta, 'Auguste Rodin', 1),
(@id_pergunta, 'Brancusi', 0),
(@id_pergunta, 'Giacometti', 0);

-- Pergunta 17
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a arte de criar imagens através da captura de luz com uma câmera?', 'Fácil', 'O nome significa "escrever com a luz".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Cinema', 0),
(@id_pergunta, 'Pintura', 0),
(@id_pergunta, 'Desenho', 0),
(@id_pergunta, 'Fotografia', 1),
(@id_pergunta, 'Gravura', 0);

-- Pergunta 18
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A arte de organizar sons no tempo é chamada de:', 'Fácil', 'É composta por melodia, harmonia e ritmo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Poesia', 0),
(@id_pergunta, 'Música', 1),
(@id_pergunta, 'Dança', 0),
(@id_pergunta, 'Teatro', 0),
(@id_pergunta, 'Arquitetura', 0);

-- Pergunta 19
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é o nome da ferramenta com pelos na ponta, usada para aplicar tinta na tela?', 'Fácil', 'Pode ser de vários tamanhos e formatos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Espátula', 0),
(@id_pergunta, 'Lápis', 0),
(@id_pergunta, 'Cinzel', 0),
(@id_pergunta, 'Pincel', 1),
(@id_pergunta, 'Rolo', 0);

-- Pergunta 20
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O Renascimento foi um movimento artístico e cultural que se originou em qual país?', 'Fácil', 'É o país de Leonardo da Vinci e Michelangelo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'França', 0),
(@id_pergunta, 'Espanha', 0),
(@id_pergunta, 'Inglaterra', 0),
(@id_pergunta, 'Alemanha', 0),
(@id_pergunta, 'Itália', 1);

-- =================================================================
-- ||                     PERGUNTAS MÉDIAS                        ||
-- =================================================================

-- Pergunta 21
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual era o principal objetivo dos pintores impressionistas?', 'Médio', 'Eles pintavam ao ar livre para observar as mudanças na iluminação.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Representar temas religiosos e mitológicos', 0),
(@id_pergunta, 'Capturar as impressões momentâneas da luz e da cor', 1),
(@id_pergunta, 'Criticar a sociedade e a política', 0),
(@id_pergunta, 'Criar formas geométricas perfeitas', 0),
(@id_pergunta, 'Expressar emoções e sonhos do subconsciente', 0);

-- Pergunta 22
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A Semana de Arte Moderna, marco do Modernismo no Brasil, ocorreu em que ano?', 'Médio', 'Comemorou o centenário da Independência do Brasil.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, '1912', 0),
(@id_pergunta, '1922', 1),
(@id_pergunta, '1930', 0),
(@id_pergunta, '1945', 0),
(@id_pergunta, '1964', 0);

-- Pergunta 23
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O Barroco é um estilo artístico caracterizado principalmente por:', 'Médio', 'Pense nas igrejas de Ouro Preto, de Aleijadinho.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Simplicidade e linhas retas', 0),
(@id_pergunta, 'Drama, emoção intensa e riqueza de detalhes', 1),
(@id_pergunta, 'Cores suaves e temas do cotidiano', 0),
(@id_pergunta, 'Uso de formas geométricas puras', 0),
(@id_pergunta, 'Fidelidade à natureza e à luz', 0);

-- Pergunta 24
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual era o principal tema da Pop Art, de artistas como Andy Warhol?', 'Médio', 'Latas de sopa, garrafas de refrigerante e celebridades eram temas comuns.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A natureza e as paisagens', 0),
(@id_pergunta, 'A cultura de massa, o consumo e a publicidade', 1),
(@id_pergunta, 'A mitologia grega e romana', 0),
(@id_pergunta, 'A espiritualidade e a religião', 0),
(@id_pergunta, 'A vida da aristocracia', 0);

-- Pergunta 25
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é uma gravura?', 'Médio', 'A xilogravura, feita em madeira, é um tipo famoso.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma pintura feita diretamente na parede', 0),
(@id_pergunta, 'Uma imagem criada a partir da impressão de uma matriz (madeira, metal, pedra)', 1),
(@id_pergunta, 'Uma escultura feita de argila', 0),
(@id_pergunta, 'Um tipo de fotografia em preto e branco', 0),
(@id_pergunta, 'Um desenho feito com carvão', 0);

-- Pergunta 26
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A monumental pintura "Guernica", que retrata os horrores da guerra, é uma obra de qual artista?', 'Médio', 'É uma obra cubista em preto, branco e cinza.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Salvador Dalí', 0),
(@id_pergunta, 'Joan Miró', 0),
(@id_pergunta, 'Pablo Picasso', 1),
(@id_pergunta, 'Henri Matisse', 0),
(@id_pergunta, 'Frida Kahlo', 0);

-- Pergunta 27
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a principal diferença entre arte figurativa e arte abstrata?', 'Médio', 'Uma busca representar o mundo como o vemos, a outra não.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A figurativa usa cores e a abstrata não', 0),
(@id_pergunta, 'A figurativa representa figuras reconhecíveis, enquanto a abstrata foca em formas, cores e linhas', 1),
(@id_pergunta, 'A figurativa é antiga e a abstrata é moderna', 0),
(@id_pergunta, 'A figurativa é feita em tela e a abstrata em outros suportes', 0),
(@id_pergunta, 'Não há diferença significativa', 0);

-- Pergunta 28
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O estilo arquitetônico das grandes catedrais europeias, com arcos ogivais, vitrais e abóbadas nervuradas, é o:', 'Médio', 'A Catedral de Notre-Dame em Paris é um exemplo famoso.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Românico', 0),
(@id_pergunta, 'Gótico', 1),
(@id_pergunta, 'Barroco', 0),
(@id_pergunta, 'Clássico', 0),
(@id_pergunta, 'Moderno', 0);

-- Pergunta 29
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a performance como modalidade artística?', 'Médio', 'A obra é a ação do artista, muitas vezes com a participação do público.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma peça de teatro tradicional', 0),
(@id_pergunta, 'Uma forma de arte em que a obra é a própria ação executada pelo artista em um determinado tempo e lugar', 1),
(@id_pergunta, 'Uma escultura que se move', 0),
(@id_pergunta, 'Uma pintura feita muito rapidamente', 0),
(@id_pergunta, 'Um concerto musical', 0);

-- Pergunta 30
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual artista é famoso por seus móbiles, esculturas suspensas que se movem com o vento?', 'Médio', 'Foi um artista americano do século XX.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Henry Moore', 0),
(@id_pergunta, 'Alexander Calder', 1),
(@id_pergunta, 'Alberto Giacometti', 0),
(@id_pergunta, 'Jean Arp', 0),
(@id_pergunta, 'Constantin Brancusi', 0);

-- Pergunta 31
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O Dadaísmo, movimento de vanguarda do início do século XX, tinha como principal atitude:', 'Médio', 'Eles questionavam a própria definição de arte.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A busca pela beleza clássica', 0),
(@id_pergunta, 'A exaltação da tecnologia e da velocidade', 0),
(@id_pergunta, 'A crítica à lógica, a valorização do absurdo e o anti-arte', 1),
(@id_pergunta, 'A representação fiel da realidade', 0),
(@id_pergunta, 'A celebração da cultura de massa', 0);

-- Pergunta 32
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a função da perspectiva em uma pintura renascentista?', 'Médio', 'É uma técnica matemática para representar o espaço.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Criar uma sensação de movimento', 0),
(@id_pergunta, 'Representar a ilusão de profundidade e espaço tridimensional em uma superfície plana', 1),
(@id_pergunta, 'Deformar as figuras para expressar emoção', 0),
(@id_pergunta, 'Usar cores que não existem na realidade', 0),
(@id_pergunta, 'Achatá-la para focar nos detalhes', 0);

-- Pergunta 33
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A artista brasileira Lygia Clark é famosa por suas obras participativas, como os:', 'Médio', 'São esculturas articuladas que o espectador pode manipular.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Parangolés', 0),
(@id_pergunta, 'Bichos', 1),
(@id_pergunta, 'Tropicália', 0),
(@id_pergunta, 'Relevos espaciais', 0),
(@id_pergunta, 'Metaesquemas', 0);

-- Pergunta 34
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual é a principal característica do Romantismo na pintura?', 'Médio', 'Artistas como Goya e Delacroix são expoentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A razão, a ordem e o equilíbrio', 0),
(@id_pergunta, 'A emoção, o individualismo e a exaltação da natureza', 1),
(@id_pergunta, 'A crítica social e a representação do trabalhador', 0),
(@id_pergunta, 'O uso de cores puras e pinceladas rápidas', 0),
(@id_pergunta, 'A decomposição da figura em formas geométricas', 0);

-- Pergunta 35
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Salvador Dalí é o principal nome de qual vanguarda artística?', 'Médio', 'Suas obras exploram o mundo dos sonhos e do irracional.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Cubismo', 0),
(@id_pergunta, 'Futurismo', 0),
(@id_pergunta, 'Surrealismo', 1),
(@id_pergunta, 'Expressionismo', 0),
(@id_pergunta, 'Dadaísmo', 0);

-- Pergunta 36
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A ordem arquitetônica grega caracterizada por capitéis com volutas (ornamentos em espiral) é a:', 'Médio', 'É considerada mais elegante que a Dórica e menos ornamentada que a Coríntia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Dórica', 0),
(@id_pergunta, 'Jônica', 1),
(@id_pergunta, 'Coríntia', 0),
(@id_pergunta, 'Toscana', 0),
(@id_pergunta, 'Compósita', 0);

-- Pergunta 37
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a "Land Art"?', 'Médio', 'A obra de arte é feita na própria paisagem.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A pintura de paisagens', 0),
(@id_pergunta, 'Uma forma de arte que utiliza a própria natureza como suporte ou matéria-prima', 1),
(@id_pergunta, 'A criação de jardins e parques', 0),
(@id_pergunta, 'Fotografias da natureza', 0),
(@id_pergunta, 'Esculturas feitas de materiais reciclados', 0);

-- Pergunta 38
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é um tríptico na pintura?', 'Médio', 'A obra "O Jardim das Delícias", de Bosch, é um famoso exemplo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma pintura com três cores primárias', 0),
(@id_pergunta, 'Uma obra de arte dividida em três painéis, unidos por dobradiças', 1),
(@id_pergunta, 'Uma técnica de pintura em três camadas', 0),
(@id_pergunta, 'Um retrato de três pessoas', 0),
(@id_pergunta, 'Uma pintura com formato triangular', 0);

-- Pergunta 39
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual artista ficou conhecido por suas pinturas de "gordinhos", retratando figuras com volumes exagerados?', 'Médio', 'É um artista colombiano.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Diego Rivera', 0),
(@id_pergunta, 'Frida Kahlo', 0),
(@id_pergunta, 'Fernando Botero', 1),
(@id_pergunta, 'Wifredo Lam', 0),
(@id_pergunta, 'Joaquín Torres García', 0);

-- Pergunta 40
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O concretismo no Brasil, tanto na poesia quanto nas artes visuais, valorizava principalmente:', 'Médio', 'O foco era na forma e na estrutura.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A expressão dos sentimentos do artista', 0),
(@id_pergunta, 'A representação de temas nacionais', 0),
(@id_pergunta, 'O aspecto racional, a forma geométrica e a estrutura visual da obra', 1),
(@id_pergunta, 'A crítica social e política', 0),
(@id_pergunta, 'A inspiração na natureza', 0);

-- =================================================================
-- ||                     PERGUNTAS DIFÍCEIS                      ||
-- =================================================================

-- Pergunta 41
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que define o conceito de "ready-made" proposto por Marcel Duchamp?', 'Difícil', 'Sua obra "A Fonte" (um urinol) é o exemplo mais famoso.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma obra de arte feita com materiais reciclados', 0),
(@id_pergunta, 'A escolha de um objeto industrializado, que é retirado de seu contexto e apresentado como arte', 1),
(@id_pergunta, 'Uma pintura que imita a realidade com perfeição', 0),
(@id_pergunta, 'Uma escultura feita sob medida para um cliente', 0),
(@id_pergunta, 'Uma performance artística improvisada', 0);

-- Pergunta 42
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual era o principal objetivo da escola de design e arquitetura Bauhaus?', 'Difícil', 'Foi fundada por Walter Gropius na Alemanha.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Reviver os estilos artísticos do passado', 0),
(@id_pergunta, 'Unificar as artes, o artesanato e a tecnologia, criando uma arte funcional para a sociedade industrial', 1),
(@id_pergunta, 'Desenvolver uma arte puramente decorativa e de luxo', 0),
(@id_pergunta, 'Criticar a tecnologia e a indústria', 0),
(@id_pergunta, 'Focar apenas no ensino da pintura clássica', 0);

-- Pergunta 43
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O conceito de "aura" de uma obra de arte, segundo Walter Benjamin, é perdido com:', 'Difícil', 'Sua análise está no ensaio "A Obra de Arte na Era de sua Reprodutibilidade Técnica".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A crítica dos especialistas', 0),
(@id_pergunta, 'A reprodução técnica em massa (como a fotografia e o cinema)', 1),
(@id_pergunta, 'A passagem do tempo', 0),
(@id_pergunta, 'A restauração da obra', 0),
(@id_pergunta, 'A exposição em museus', 0);

-- Pergunta 44
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A principal ruptura do Neoconcretismo brasileiro em relação ao Concretismo foi:', 'Difícil', 'Artistas como Lygia Clark e Hélio Oiticica foram seus expoentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A rejeição total da geometria', 0),
(@id_pergunta, 'A reintrodução da subjetividade, da intuição e da participação do espectador', 1),
(@id_pergunta, 'O uso exclusivo de preto e branco', 0),
(@id_pergunta, 'A volta à pintura de paisagens', 0),
(@id_pergunta, 'Adoção de temas políticos explícitos', 0);

-- Pergunta 45
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a "Action Painting" (pintura gestual)?', 'Difícil', 'Jackson Pollock é o artista mais associado a esta técnica.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma pintura que retrata cenas de ação e movimento', 0),
(@id_pergunta, 'Um estilo em que o processo físico de pintar é o aspecto mais importante, com gestos como gotejar e arremessar tinta', 1),
(@id_pergunta, 'O uso de robôs e máquinas para pintar', 0),
(@id_pergunta, 'Uma pintura que muda de cor com a luz', 0),
(@id_pergunta, 'Uma performance em que o público pinta a obra', 0);

-- Pergunta 46
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O artista brasileiro Hélio Oiticica criou os "Parangolés", que eram:', 'Difícil', 'As obras só se completavam quando vestidas e movimentadas por pessoas.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Esculturas de metal para praças públicas', 0),
(@id_pergunta, 'Capas, tendas e estandartes coloridos para serem vestidos ou penetrados, rompendo a barreira entre arte e vida', 1),
(@id_pergunta, 'Pequenas caixas com objetos para serem manipulados', 0),
(@id_pergunta, 'Pinturas geométricas em preto e branco', 0),
(@id_pergunta, 'Instalações com luzes de neon', 0);

-- Pergunta 47
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual a principal diferença entre um afresco e uma pintura a óleo?', 'Difícil', 'A "Última Ceia" de Da Vinci é um famoso exemplo da primeira técnica.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O afresco é sempre abstrato e a pintura a óleo é figurativa', 0),
(@id_pergunta, 'O afresco é uma técnica de pintura em argamassa ou gesso úmido, enquanto a pintura a óleo usa pigmentos diluídos em óleo sobre tela ou madeira', 1),
(@id_pergunta, 'O afresco usa apenas cores primárias e a pintura a óleo todas as cores', 0),
(@id_pergunta, 'O afresco é uma técnica oriental e a pintura a óleo é ocidental', 0),
(@id_pergunta, 'Não há diferença, são sinônimos', 0);

-- Pergunta 48
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O movimento artístico "Minimalismo" buscava:', 'Difícil', 'Artistas como Donald Judd e Dan Flavin são expoentes.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Criar obras complexas e cheias de detalhes', 0),
(@id_pergunta, 'Reduzir a arte aos seus elementos essenciais, como a forma geométrica pura, sem expressão pessoal', 1),
(@id_pergunta, 'Fazer críticas políticas através da arte', 0),
(@id_pergunta, 'Contar histórias através de pinturas narrativas', 0),
(@id_pergunta, 'Usar materiais naturais e orgânicos', 0);

-- Pergunta 49
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A exposição de qual artista em 1917 gerou um grande escândalo e é considerada um estopim para o debate modernista no Brasil?', 'Difícil', 'Monteiro Lobato escreveu uma crítica feroz à sua obra.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Tarsila do Amaral', 0),
(@id_pergunta, 'Di Cavalcanti', 0),
(@id_pergunta, 'Anita Malfatti', 1),
(@id_pergunta, 'Victor Brecheret', 0),
(@id_pergunta, 'Lasar Segall', 0);

-- Pergunta 50
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é uma arte "site-specific"?', 'Difícil', 'A obra não pode ser movida para outro lugar sem perder seu significado.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Uma obra de arte feita para ser vendida em um site', 0),
(@id_pergunta, 'Uma obra criada para existir em um local específico, com o qual dialoga', 1),
(@id_pergunta, 'Uma obra que pode ser instalada em qualquer lugar', 0),
(@id_pergunta, 'Uma pintura de um lugar específico', 0),
(@id_pergunta, 'Uma obra feita com materiais encontrados no local', 0);

-- Pergunta 51
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'Qual a principal diferença entre uma colagem e uma assemblage?', 'Difícil', 'Ambas utilizam materiais diversos.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A colagem usa papel e a assemblage usa metal', 0),
(@id_pergunta, 'A colagem é bidimensional, enquanto a assemblage é tridimensional, incorporando objetos', 1),
(@id_pergunta, 'A colagem é abstrata e a assemblage é figurativa', 0),
(@id_pergunta, 'A colagem é uma técnica antiga e a assemblage é contemporânea', 0),
(@id_pergunta, 'Não há diferença', 0);

-- Pergunta 52
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O movimento artístico russo que pregava a supremacia do sentimento puro e usava formas geométricas básicas, como o quadrado negro sobre fundo branco, foi o:', 'Difícil', 'Kazimir Malevich foi seu criador.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Construtivismo', 0),
(@id_pergunta, 'Futurismo', 0),
(@id_pergunta, 'Suprematismo', 1),
(@id_pergunta, 'Raionismo', 0),
(@id_pergunta, 'Realismo Socialista', 0);

-- Pergunta 53
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a técnica do "sfumato", muito utilizada por Leonardo da Vinci?', 'Difícil', 'É especialmente visível no sorriso da Mona Lisa.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'O uso de contrastes fortes de luz e sombra', 0),
(@id_pergunta, 'Uma transição suave e esfumaçada entre as cores e os tons, sem linhas de contorno nítidas', 1),
(@id_pergunta, 'A aplicação de tinta em pequenas pinceladas pontilhadas', 0),
(@id_pergunta, 'A deformação da perspectiva para criar efeitos dramáticos', 0),
(@id_pergunta, 'A pintura em painéis de madeira', 0);

-- Pergunta 54
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A principal característica da arte do período Rococó é:', 'Difícil', 'Surgiu na França do século XVIII, associado à aristocracia.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A dramaticidade e a religiosidade do Barroco', 0),
(@id_pergunta, 'A leveza, a elegância, o uso de cores pastel e temas relacionados ao amor e ao lazer da nobreza', 1),
(@id_pergunta, 'A rigidez e a geometria do Neoclassicismo', 0),
(@id_pergunta, 'A crítica social e a representação do povo', 0),
(@id_pergunta, 'A abstração geométrica', 0);

-- Pergunta 55
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O movimento artístico internacional Fluxus, nos anos 60 e 70, tinha como uma de suas ideias centrais:', 'Difícil', 'Artistas como Yoko Ono e Nam June Paik estiveram associados a ele.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A criação de obras de arte valiosas para o mercado', 0),
(@id_pergunta, 'A dissolução das fronteiras entre a arte e a vida, valorizando o processo e o evento', 1),
(@id_pergunta, 'A perfeição técnica na pintura e na escultura', 0),
(@id_pergunta, 'O retorno aos ideais clássicos da Grécia e Roma', 0),
(@id_pergunta, 'A produção de arte exclusivamente para museus', 0);

-- Pergunta 56
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A "escola de Barbizon" foi um grupo de pintores na França que se destacou por:', 'Difícil', 'Foram precursores do Impressionismo.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Pintar cenas históricas e mitológicas', 0),
(@id_pergunta, 'Abandonar o estúdio para pintar paisagens realistas ao ar livre', 1),
(@id_pergunta, 'Desenvolver a técnica da colagem', 0),
(@id_pergunta, 'Criar as primeiras obras de arte abstrata', 0),
(@id_pergunta, 'Focar em retratos da burguesia', 0);

-- Pergunta 57
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a técnica da litografia?', 'Difícil', 'É um processo de gravura baseado na repulsão entre água e gordura.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Gravação em uma placa de madeira (xilogravura)', 0),
(@id_pergunta, 'Desenho sobre uma pedra calcária com um lápis gorduroso para impressão', 1),
(@id_pergunta, 'Gravação em uma chapa de metal com ácido (água-forte)', 0),
(@id_pergunta, 'Impressão através de uma tela de seda (serigrafia)', 0),
(@id_pergunta, 'Impressão digital de alta resolução', 0);

-- Pergunta 58
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O conceito de "flâneur", o observador errante da cidade moderna, é crucial para entender a obra de qual poeta e crítico de arte?', 'Difícil', 'Ele foi fundamental para a teoria da modernidade na arte.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Stéphane Mallarmé', 0),
(@id_pergunta, 'Guillaume Apollinaire', 0),
(@id_pergunta, 'Charles Baudelaire', 1),
(@id_pergunta, 'Paul Verlaine', 0),
(@id_pergunta, 'Arthur Rimbaud', 0);

-- Pergunta 59
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'A "Secessão de Viena", liderada por Gustav Klimt, foi um movimento que buscava:', 'Difícil', 'O nome do movimento significa "separação".');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'Reviver a arte gótica', 0),
(@id_pergunta, 'Romper com o conservadorismo da arte acadêmica oficial', 1),
(@id_pergunta, 'Criar uma arte exclusivamente para a igreja', 0),
(@id_pergunta, 'Imitar a arte da Grécia Antiga', 0),
(@id_pergunta, 'Promover o realismo socialista', 0);

-- Pergunta 60
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica) VALUES (12, 1, 'O que é a apropriação na arte contemporânea?', 'Difícil', 'Sherrie Levine, que fotografou fotografias de outros artistas, é um exemplo radical.');
SET @id_pergunta = LAST_INSERT_ID();
INSERT INTO alternativa (id_pergunta, titulo, correta) VALUES
(@id_pergunta, 'A criação de uma cópia exata de uma obra famosa', 0),
(@id_pergunta, 'O ato de tomar emprestado, copiar ou alterar imagens e objetos pré-existentes para criar uma nova obra', 1),
(@id_pergunta, 'A inspiração em estilos artísticos do passado', 0),
(@id_pergunta, 'A venda de uma obra de arte para um museu', 0),
(@id_pergunta, 'A restauração de obras de arte antigas', 0);
