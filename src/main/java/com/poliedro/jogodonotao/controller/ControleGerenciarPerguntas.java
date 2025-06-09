package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;

import java.io.IOException;
import java.sql.SQLException;

import static com.poliedro.jogodonotao.database.dao.PerguntaDAO.obterPerguntas;

public class ControleGerenciarPerguntas {

    @FXML
    private TextField campoPesquisarPergunta;

    @FXML
    private TableColumn<Pergunta, Professor> criadoPorColuna;

    @FXML
    private TableColumn<Pergunta, DificuldadePergunta> dificuldadeColuna;

    @FXML
    private TableColumn<Pergunta, String> editadoPorColuna;

    @FXML
    private TableColumn<Pergunta, Integer> idColuna;

    @FXML
    private TableColumn<Pergunta, String> materiaColuna;

    @FXML
    private TableColumn<Pergunta, String> perguntaColuna;

    @FXML
    private TableView<Pergunta> tabelaPerguntas;

    private ObservableList<Pergunta> listaCompletaPerguntas;
    private FilteredList<Pergunta> dadosFiltrados;

    public void initialize() {
        // Mensagem de tela carregando
        Alert msgCarregando = new Alert(Alert.AlertType.INFORMATION);
        msgCarregando.setTitle("Carregando Perguntas");
        msgCarregando.setHeaderText("Aguarde enquanto as perguntas estão sendo carregadas.");
        msgCarregando.setContentText("Isso pode levar alguns segundos.");
        msgCarregando.show();

        try {
            // Configura a coluna de pergunta
            perguntaColuna.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getEnunciado())
            );

            // Configura a coluna de matéria
            materiaColuna.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getMateria() != null ?
                    cellData.getValue().getMateria().getNome() :
                    "Não especificada")
            );

            // Configura a coluna de dificuldade
            dificuldadeColuna.setCellFactory(column -> new TableCell<Pergunta, DificuldadePergunta>() {
                @Override
                protected void updateItem(DificuldadePergunta item, boolean empty) {
                    super.updateItem(item, empty);
                    if (empty || item == null) {
                        setText(null);
                    } else {
                        setText(item.toString());
                    }
                }
            });
            dificuldadeColuna.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getDificuldade())
            );

            // Configura a coluna de criador
            criadoPorColuna.setCellFactory(column -> new TableCell<Pergunta, Professor>() {
                @Override
                protected void updateItem(Professor item, boolean empty) {
                    super.updateItem(item, empty);
                    if (empty || item == null) {
                        setText("Não especificado");
                    } else {
                        setText(item.getNome());
                    }
                }
            });
            criadoPorColuna.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getCriador())
            );

            // Configura a coluna de ID
            idColuna.setCellValueFactory(cellData ->
                new SimpleIntegerProperty(cellData.getValue().getId()).asObject()
            );

            // Carrega as perguntas
            carregarPerguntas();

            // Configura a pesquisa
            configurarPesquisa();
        } catch (Exception e) {
            System.err.println("Erro ao inicializar a tela de gerenciamento de perguntas: " + e.getMessage());
            e.printStackTrace();
            mostrarErro("Erro ao carregar a tela", "Não foi possível carregar a tela de gerenciamento de perguntas.");
        } finally {
            // Fecha a mensagem de carregamento
            msgCarregando.close();
        }
    }

    private void carregarPerguntas() {
        try {
            listaCompletaPerguntas = FXCollections.observableArrayList(obterPerguntas());
            
            // Inicializa a lista filtrada com todas as perguntas
            dadosFiltrados = new FilteredList<>(listaCompletaPerguntas, p -> true);
            
            // Ordena os dados
            SortedList<Pergunta> dadosOrdenados = new SortedList<>(dadosFiltrados);
            dadosOrdenados.comparatorProperty().bind(tabelaPerguntas.comparatorProperty());
            
            // Define os itens da tabela
            tabelaPerguntas.setItems(dadosOrdenados);
        } catch (SQLException e) {
            System.err.println("Erro ao carregar perguntas: " + e.getMessage());
            e.printStackTrace();
            mostrarErro("Erro ao carregar perguntas", "Não foi possível carregar as perguntas do banco de dados.");
        }
    }

    private void configurarPesquisa() {
        // Adiciona um listener ao campo de pesquisa
        campoPesquisarPergunta.textProperty().addListener((observable, valorAntigo, novoValor) -> {
            // Se o texto da pesquisa estiver vazio, mostra todas as perguntas
            if (novoValor == null || novoValor.isEmpty()) {
                dadosFiltrados.setPredicate(pergunta -> true);
            } else {
                // Converte o texto de pesquisa para minúsculas para busca case-insensitive
                String termoPesquisa = novoValor.toLowerCase();
                
                // Define o predicado para filtrar as perguntas
                dadosFiltrados.setPredicate(pergunta -> {
                    // Se o termo de pesquisa estiver vazio, mostra todas as perguntas
                    if (termoPesquisa == null || termoPesquisa.isEmpty()) {
                        return true;
                    }
                    
                    // Verifica se o enunciado da pergunta contém o termo de pesquisa
                    if (pergunta.getEnunciado() != null && 
                        pergunta.getEnunciado().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o ID da pergunta contém o termo de pesquisa
                    if (String.valueOf(pergunta.getId()).contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o nome da matéria contém o termo de pesquisa
                    if (pergunta.getMateria() != null && 
                        pergunta.getMateria().getNome() != null && 
                        pergunta.getMateria().getNome().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se a dificuldade contém o termo de pesquisa
                    if (pergunta.getDificuldade() != null && 
                        pergunta.getDificuldade().toString().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Se não encontrou correspondência em nenhum campo
                    return false;
                });
            }
        });
        
        // Configura o placeholder do campo de pesquisa
        campoPesquisarPergunta.setPromptText("Pesquisar por pergunta, ID, matéria ou dificuldade...");
    }

    private void mostrarErro(String titulo, String mensagem) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle(titulo);
        alert.setHeaderText(null);
        alert.setContentText(mensagem);
        alert.showAndWait();
    }

    @FXML
    void criarPergunta(ActionEvent event) throws IOException {
        App.abrirTelaCriarPergunta(Professor.getSessaoAtiva().getEmail());
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}