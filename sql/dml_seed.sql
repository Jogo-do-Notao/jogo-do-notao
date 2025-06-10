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