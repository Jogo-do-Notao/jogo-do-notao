-- Dados para semear o banco de dados com valores pré-definidos, como matérias e conta root
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
        'Exemplo de conta de administrador/coordenador',
        TRUE
    );
-- Perguntas
INSERT INTO pergunta (id_materia, criador, titulo, dificuldade, dica)
VALUES (
        1,
        1,
        'Qual figura de linguagem está presente na frase: "O amor é fogo que arde sem se ver"?',
        'Médio',
        'Pense em comparações incomuns.'
    ),
    (
        1,
        1,
        'Qual o plural correto de "cidadão"?',
        'Fácil',
        'Termina com "-ão".'
    ),
    (
        1,
        1,
        'Quem escreveu o livro "Dom Casmurro"?',
        'Médio',
        'Um famoso escritor brasileiro do século XIX.'
    ),
    (
        1,
        1,
        'Qual a função sintática da palavra "feliz" em "O menino estava feliz"?',
        'Fácil',
        'Relaciona-se ao estado do sujeito.'
    ),
    (
        1,
        1,
        'Qual a diferença entre "mas", "mais" e "mau"?',
        'Difícil',
        'Atenção à grafia e ao sentido.'
    ),
    (
        2,
        1,
        'Qual o resultado de $5^2 + 3 \times 4$?',
        'Fácil',
        'Lembre-se da ordem das operações.'
    ),
    (
        2,
        1,
        'Qual o valor de $\pi$ com duas casas decimais?',
        'Fácil',
        'Um número irracional famoso.'
    ),
    (
        2,
        1,
        'Qual a fórmula da área de um círculo?',
        'Médio',
        'Envolve o raio ao quadrado.'
    ),
    (
        2,
        1,
        'Resolva a equação: $2x + 5 = 11$.',
        'Fácil',
        'Isole o $x$.'
    ),
    (
        2,
        1,
        'Qual o Teorema de Pitágoras?',
        'Médio',
        'Relaciona os lados de um triângulo retângulo.'
    ),
    (
        3,
        1,
        'Qual a organela responsável pela produção de energia na célula?',
        'Fácil',
        'A "usina" da célula.'
    ),
    (
        3,
        1,
        'O que é fotossíntese?',
        'Médio',
        'Processo de produção de alimento das plantas.'
    ),
    (
        3,
        1,
        'Quais são os grupos de vertebrados?',
        'Médio',
        'Pense nos animais com coluna vertebral.'
    ),
    (
        3,
        1,
        'O que é DNA?',
        'Fácil',
        'Material genético.'
    ),
    (
        3,
        1,
        'Qual a diferença entre mitose e meiose?',
        'Difícil',
        'Tipos de divisão celular.'
    ),
    (
        4,
        1,
        'Qual a unidade de medida da força no Sistema Internacional?',
        'Fácil',
        'Homenageia um grande cientista.'
    ),
    (
        4,
        1,
        'O que é aceleração?',
        'Médio',
        'Variação da velocidade.'
    ),
    (
        4,
        1,
        'Qual a fórmula da Lei de Ohm?',
        'Médio',
        'Relaciona tensão, corrente e resistência.'
    ),
    (
        4,
        1,
        'O que é inércia?',
        'Fácil',
        'Tendência de um corpo permanecer em seu estado atual.'
    ),
    (
        4,
        1,
        'Qual a diferença entre calor e temperatura?',
        'Difícil',
        'Conceitos termodinâmicos.'
    ),
    (
        5,
        1,
        'Qual o símbolo químico da água?',
        'Fácil',
        'Dois hidrogênios e um oxigênio.'
    ),
    (
        5,
        1,
        'O que é uma reação exotérmica?',
        'Médio',
        'Libera calor.'
    ),
    (
        5,
        1,
        'Quais são os estados físicos da matéria?',
        'Fácil',
        'Os mais comuns no dia a dia.'
    ),
    (
        5,
        1,
        'O que é pH?',
        'Médio',
        'Medida de acidez ou basicidade.'
    ),
    (
        5,
        1,
        'Qual a diferença entre uma mistura homogênea e heterogênea?',
        'Difícil',
        'Observação visual é chave.'
    ),
    (
        6,
        1,
        'Em que ano o Brasil declarou sua independência?',
        'Fácil',
        'Um marco na nossa história.'
    ),
    (
        6,
        1,
        'Quem foi Tiradentes?',
        'Médio',
        'Um dos líderes da Inconfidência Mineira.'
    ),
    (
        6,
        1,
        'O que foi a Revolução Francesa?',
        'Médio',
        'Um importante movimento social e político na Europa.'
    ),
    (
        6,
        1,
        'Qual o período da história conhecido como "A República Velha"?',
        'Difícil',
        'Após a proclamação da República.'
    ),
    (
        6,
        1,
        'O que foi a Segunda Guerra Mundial?',
        'Médio',
        'Um conflito global com graves consequências.'
    ),
    (
        7,
        1,
        'Quais são os paralelos e meridianos?',
        'Fácil',
        'Linhas imaginárias da Terra.'
    ),
    (
        7,
        1,
        'O que são as placas tectônicas?',
        'Médio',
        'Grandes blocos da crosta terrestre.'
    ),
    (
        7,
        1,
        'Quais são os climas do Brasil?',
        'Médio',
        'Influenciados pela localização e relevo.'
    ),
    (
        7,
        1,
        'O que é globalização?',
        'Médio',
        'Integração mundial.'
    ),
    (
        7,
        1,
        'Quais são as regiões do Brasil?',
        'Fácil',
        'Divisão administrativa.'
    ),
    (
        8,
        1,
        'O que é ética?',
        'Médio',
        'Reflexão sobre a moral.'
    ),
    (
        8,
        1,
        'Quem foi Sócrates?',
        'Médio',
        'Um importante filósofo da Grécia Antiga.'
    ),
    (
        8,
        1,
        'O que é conhecimento?',
        'Difícil',
        'Um conceito fundamental da filosofia.'
    ),
    (
        8,
        1,
        'Qual a diferença entre verdade e validade?',
        'Difícil',
        'Termos importantes na lógica e filosofia.'
    ),
    (
        8,
        1,
        'O que é liberdade para os existencialistas?',
        'Difícil',
        'Um conceito central nessa corrente filosófica.'
    ),
    (
        9,
        1,
        'O que estuda a sociologia?',
        'Médio',
        'A vida social humana.'
    ),
    (
        9,
        1,
        'Quem foi Émile Durkheim?',
        'Médio',
        'Um dos pais da sociologia.'
    ),
    (
        9,
        1,
        'O que são instituições sociais?',
        'Médio',
        'Padrões organizados de comportamento social.'
    ),
    (
        9,
        1,
        'O que é cultura?',
        'Fácil',
        'Conjunto de costumes, crenças e valores.'
    ),
    (
        9,
        1,
        'O que é estratificação social?',
        'Difícil',
        'Divisão da sociedade em camadas.'
    ),
    (
        10,
        1,
        'What is the past simple of "go"?',
        'Fácil',
        'An irregular verb.'
    ),
    (
        10,
        1,
        'What does "hello" mean?',
        'Fácil',
        'A common greeting.'
    ),
    (
        10,
        1,
        'Translate "Eu gosto de você" to English.',
        'Médio',
        'Expressing affection.'
    ),
    (
        10,
        1,
        'What is a noun?',
        'Fácil',
        'A part of speech.'
    ),
    (
        10,
        1,
        'What is the difference between "there", "their" and "they\'re"?',
        'Difícil',
        'Homophones.'
    ),
    (
        11,
        1,
        'Como se diz "olá" em espanhol?',
        'Fácil',
        'Uma saudação básica.'
    ),
    (
        11,
        1,
        'O que significa "gracias"?',
        'Fácil',
        'Expressão de agradecimento.'
    ),
    (
        11,
        1,
        'Traduza "Como você está?" para o espanhol.',
        'Médio',
        'Uma pergunta comum.'
    ),
    (
        11,
        1,
        'O que é um "artículo" em espanhol?',
        'Fácil',
        'Similar ao português.'
    ),
    (
        11,
        1,
        'Qual a diferença entre "ser" e "estar" em espanhol?',
        'Difícil',
        'Dois verbos para "ser".'
    ),
    (
        12,
        1,
        'Quem pintou a "Mona Lisa"?',
        'Fácil',
        'Um famoso artista renascentista.'
    ),
    (
        12,
        1,
        'O que é aquarela?',
        'Médio',
        'Um tipo de pintura.'
    ),
    (
        12,
        1,
        'Quais são as cores primárias?',
        'Fácil',
        'As que não se formam pela mistura de outras.'
    ),
    (
        12,
        1,
        'O que é perspectiva na arte?',
        'Médio',
        'Criação de profundidade.'
    ),
    (
        12,
        1,
        'O que foi o movimento impressionista?',
        'Médio',
        'Um estilo artístico do século XIX.'
    ),
    (
        13,
        1,
        'Qual a principal função do sistema respiratório?',
        'Fácil',
        'Troca de gases.'
    ),
    (
        13,
        1,
        'O que são os ecossistemas?',
        'Médio',
        'Comunidades de seres vivos e seu ambiente.'
    ),
    (
        13,
        1,
        'Quais são os estados da água?',
        'Fácil',
        'Os mais comuns na natureza.'
    ),
    (
        13,
        1,
        'O que é a cadeia alimentar?',
        'Médio',
        'Transferência de energia entre os seres vivos.'
    ),
    (
        13,
        1,
        'Qual a importância da camada de ozônio?',
        'Médio',
        'Proteção contra radiação.'
    );