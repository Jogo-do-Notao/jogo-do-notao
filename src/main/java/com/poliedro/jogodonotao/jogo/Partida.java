package com.poliedro.jogodonotao.jogo;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.PartidaDAO;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;
import javafx.scene.control.Alert;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;

/**
 * Classe que representa uma partida do jogo.
 */
public class Partida {
    // Atributos estáticos
    /**
     * Partida que está sendo jogada no momento.
     */
    private static Partida partidaEmAndamento;
    // Atributos
    /**
     * ID da partida no banco de dados.
     */
    private int id;
    /**
     * Aluno que criou a partida.
     */
    private Aluno aluno;
    /**
     * Matéria da partida (se for {@code null}, partida é de todas as matérias).
     */
    private Materia materia;
    /**
     * Status da partida (em andamento, ganha, perdida ou abandonada).
     */
    private PartidaStatus status;
    /**
     * Rodada atual (entre 1 e 15).
     */
    private int rodada;
    /**
     * Perguntas feitas durante a partida.
     */
    private Pergunta[] perguntas;
    /**
     * Pontuação acumulada na partida.
     */
    private int pontuacaoAcumulada = 0;
    /**
     * Pontuação do último checkpoint.
     */
    private int pontuacaoCheckpoint = 0;
    /**
     * Usos da ajuda de eliminar alternativas.
     */
    private int ajudaEliminar = 0;
    /**
     * Usos da ajuda de exibir dica do professor.
     */
    private int ajudaDica = 0;
    /**
     * Usos da ajuda de pular pergunta.
     */
    private int ajudaPular = 0;

    // Construtor

    /**
     * Construtor da classe {@code Partida} com todos os atributos.
     */
    public Partida(
            int id, Aluno aluno, Materia materia, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
    ) {
        this.id = id;
        this.aluno = aluno;
        this.materia = materia;
        this.status = status;
        this.rodada = rodada;
        this.perguntas = perguntas;
        this.pontuacaoAcumulada = pontuacaoAcumulada;
        this.pontuacaoCheckpoint = pontuacaoCheckpoint;
        this.ajudaEliminar = ajudaEliminar;
        this.ajudaDica = ajudaDica;
        this.ajudaPular = ajudaPular;
    }

    /**
     * Construtor da classe {@code Partida} para o aluno atual.
     */
    public Partida(
            int id, Materia materia, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
    ) {
        this(
                id, Aluno.getSessaoAtiva(), materia, status, rodada, perguntas,
                pontuacaoAcumulada, pontuacaoCheckpoint, ajudaEliminar, ajudaDica, ajudaPular
        );
    }

    /**
     * Construtor da classe {@code Partida} para partida que acabou de ser criada.
     */
    public Partida(int id, Materia materia) {
        this(
                id, materia, PartidaStatus.ANDAMENTO, 1, new Pergunta[15], 0, 0, 0, 0, 0
        );
    }

    // Getters
    public static Partida getPartidaEmAndamento() {
        return partidaEmAndamento;
    }

    public int getId() {
        return id;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public Materia getMateria() {
        return materia;
    }

    public PartidaStatus getStatus() {
        return status;
    }

    public String getStatusText() {
        return status.get();
    }

    public int getRodada() {
        return rodada;
    }

    public Pergunta[] getPerguntas() {
        return perguntas;
    }

    public int getPontuacaoAcumulada() {
        return pontuacaoAcumulada;
    }

    public String getPontuacaoAcumuladaFormatada() {
        NumberFormat formatoMoeda = NumberFormat
                .getCurrencyInstance(new Locale("pt", "BR"));
        return formatoMoeda.format(this.pontuacaoAcumulada);
    }

    public int getPontuacaoCheckpoint() {
        return pontuacaoCheckpoint;
    }

    public String getPontuacaoCheckpointFormatada() {
        NumberFormat formatoMoeda = NumberFormat
                .getCurrencyInstance(new Locale("pt", "BR"));
        return formatoMoeda.format(this.pontuacaoCheckpoint);
    }


    public int getAjudaEliminar() {
        return ajudaEliminar;
    }

    public int getAjudaDica() {
        return ajudaDica;
    }

    public int getAjudaPular() {
        return ajudaPular;
    }

    /**
     * Retorna a dificuldade da partida, dependendo da rodada atual.
     * Dificuldade é definida como:
     * - Fácil: Rodadas 1 a 5
     * - Médio: Rodadas 6 a 10
     * - Difícil: Rodadas 11 a 15
     *
     * @return Enumeration {@code DificuldadePergunta} correspondente à rodada atual.
     */
    public DificuldadePergunta getDificuldade() {
        if (rodada <= 5) {
            return DificuldadePergunta.FACIL;
        } else if (rodada <= 10) {
            return DificuldadePergunta.MEDIO;
        } else {
            return DificuldadePergunta.DIFICIL;
        }
    }

    /**
     * Cria uma nova partida no banco de dados e depois abre a Tela de Partida com a nova partida criada.
     *
     * @param materia Matéria selecionada pelo aluno ou opção "Todas as Matérias".
     */
    public static void criarPartida(Materia materia) throws IOException {
        // Criar partida no banco de dados
        Partida novaPartida = PartidaDAO.criarPartida(materia);

        // Atribui nova partida a partida em andamento
        partidaEmAndamento = novaPartida;

        // redirecionar para Tela de Partida
        App.changeScene("area-aluno/partida/tela-partida", "Partida em Andamento");

        // Exibir mensagem com regras da partida
        // DEBUG: exibir informações da partida criada
        Partida p = Partida.getPartidaEmAndamento();
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("DEBUG: Nova Partida Criada");
        alert.setHeaderText("Nova Partida: " + materia.getNome());
        alert.setContentText(
                "Informações da partida: \n" +
                        "ID: " + p.getId() + "\n" +
                        "Aluno: " + p.getAluno().getNome() + "\n" +
                        "Materia: " + (
                        (p.getMateria() != null) ? p.getMateria().getNome() : "Todas as Matérias") + "\n" +
                        "Status: " + p.getStatusText() + "\n" +
                        "Rodada: " + p.getRodada() + "\n" +
                        "Pontuação Acumulada: " + p.getPontuacaoAcumulada() + "\n" +
                        "Pontuação Checkpoint: " + p.getPontuacaoCheckpoint() + "\n" +
                        "Ajuda Eliminar: " + p.getAjudaEliminar() + "\n" +
                        "Ajuda Dica: " + p.getAjudaDica() + "\n" +
                        "Ajuda Pular: " + p.getAjudaPular()
        );
        alert.show();
    }

    /**
     * Sorteia uma pergunta aleatória que o aluno não respondeu anteriormente.
     */
    public Pergunta sortearPergunta() {
        // Obter array com ids perguntas disponíveis
        ArrayList<Integer> listaPerguntas = PerguntaDAO.obterListaDeSorteio(this);
        System.out.println(listaPerguntas); // DEBUG

        // Sortear pergunta aleatória
        Random rd = new Random();
        return PerguntaDAO.buscarPorId(
                listaPerguntas.get(rd.nextInt(listaPerguntas.size()))
        );
    }

    public static void main(String[] args) {
        // Criar aluno de exemplo
        Aluno aluno = new Aluno(2, "Aluno Teste", "aluno@teste.com", "43.535-3", "", new Turma(1, "Turma A", (byte) 2, "2023/2"), 453);

        // Criar matéria de exemplo
        Materia materia = new Materia(-1, "Todas");

        // Criar partida de exemplo
        Partida partida = new Partida(
                1, aluno, materia, PartidaStatus.ANDAMENTO, 2, new Pergunta[15], 0, 0, 0, 0, 0
        );

        // Testar sorteio de pergunta
        Pergunta pergunta = partida.sortearPergunta();
        if (pergunta != null) {
            System.out.println("Pergunta sorteada:");
            System.out.println("ID: " + pergunta.getId());
            System.out.println("Enunciado: " + pergunta.getEnunciado());
            System.out.println("Dica:" + pergunta.getDica());

            System.out.println("Alternativas:");
            for (int i = 0; i < pergunta.getAlternativas().length; i++) {
                System.out.println((i + 1) + ") " + pergunta.getAlternativas()[i].getTexto());
            }
        } else {
            System.out.println("Nenhuma pergunta disponível para sorteio.");
        }
    }
}
