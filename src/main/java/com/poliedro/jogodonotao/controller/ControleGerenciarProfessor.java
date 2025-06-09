package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.util.function.Predicate;

public class ControleGerenciarProfessor {

    @FXML
    private TableColumn<Professor, String> colunaEmail;

    @FXML
    private TableColumn<Professor, String> colunaNomeProfessor;

    @FXML
    private TableColumn<Professor, String> colunaRegistro;

    @FXML
    private TextField campoPesquisarProfessor;

    @FXML
    private TableView<Professor> tabelaProfessores;

    private ObservableList<Professor> listaCompletaProfessores;
    private FilteredList<Professor> dadosFiltrados;

    @FXML
    public void initialize() {
        // Configura as colunas
        colunaEmail.setCellValueFactory(new PropertyValueFactory<>("email"));
        colunaNomeProfessor.setCellValueFactory(new PropertyValueFactory<>("nome"));
        colunaRegistro.setCellValueFactory(new PropertyValueFactory<>("descricao"));

        // Carrega os professores
        carregarProfessores();
        
        // Configura a pesquisa
        configurarPesquisa();
    }


    private void carregarProfessores() {
        try {
            listaCompletaProfessores = FXCollections.observableArrayList(ProfessorDAO.obterProfessores());
            
            // Inicializa a lista filtrada com todos os professores
            dadosFiltrados = new FilteredList<>(listaCompletaProfessores, p -> true);
            
            // Adiciona a lista filtrada à tabela
            SortedList<Professor> dadosOrdenados = new SortedList<>(dadosFiltrados);
            dadosOrdenados.comparatorProperty().bind(tabelaProfessores.comparatorProperty());
            
            tabelaProfessores.setItems(dadosOrdenados);
        } catch (Exception e) {
            System.err.println("Erro ao carregar professores: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    private void configurarPesquisa() {
        // Adiciona um listener ao campo de pesquisa
        campoPesquisarProfessor.textProperty().addListener((observable, valorAntigo, novoValor) -> {
            // Se o texto da pesquisa estiver vazio, mostra todos os professores
            if (novoValor == null || novoValor.isEmpty()) {
                dadosFiltrados.setPredicate(professor -> true);
            } else {
                // Converte o texto de pesquisa para minúsculas para busca case-insensitive
                String termoPesquisa = novoValor.toLowerCase();
                
                // Define o predicado para filtrar os professores
                dadosFiltrados.setPredicate(professor -> {
                    // Se o termo de pesquisa estiver vazio, mostra todos os professores
                    if (termoPesquisa == null || termoPesquisa.isEmpty()) {
                        return true;
                    }
                    
                    // Verifica se o nome do professor contém o termo de pesquisa
                    if (professor.getNome() != null && professor.getNome().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o email do professor contém o termo de pesquisa
                    if (professor.getEmail() != null && professor.getEmail().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se a descrição contém o termo de pesquisa
                    if (professor.getDescricao() != null && professor.getDescricao().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Se não encontrou correspondência em nenhum campo
                    return false;
                });
            }
        });
        
        // Adiciona um placeholder ao campo de pesquisa
        campoPesquisarProfessor.setPromptText("Pesquisar por nome, email ou descrição...");
    }

    @FXML
    void adicionarProfessor(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-professores/tela-cadastrar-professor", "Tela Cadastrar Professor");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}
