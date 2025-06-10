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
-- ||                       História                              ||
-- =================================================================
-- =================================================================
-- ||                      Geografia                              ||
-- =================================================================
-- =================================================================
-- ||                      Filosofia                              ||
-- =================================================================
-- =================================================================
-- ||                      Sociologia                             ||
-- =================================================================
-- =================================================================
-- ||                        Inglês                               ||
-- =================================================================
-- =================================================================
-- ||                       Espanhol                              ||
-- =================================================================
-- =================================================================
-- ||                        Artes                                ||
-- =================================================================