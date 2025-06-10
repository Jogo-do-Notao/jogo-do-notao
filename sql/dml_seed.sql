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
-- ||                       Biologia                              ||
-- =================================================================
-- =================================================================
-- ||                        Física                               ||
-- =================================================================
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