package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.usuario.Aluno;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.geometry.Insets;
import javafx.geometry.Pos;

import java.io.IOException;
import java.util.function.Predicate;

public class ControleGerenciarAluno {
    @FXML
    private TextField campoPesquisarAluno;

    @FXML
    private TableColumn<Aluno, String> colunaAlunos;

    @FXML
    private TableColumn<Aluno, String> colunaTurmas;

    @FXML
    private TableView<Aluno> tabelaAlunos;

    private ObservableList<Aluno> listaCompletaAlunos;
    private FilteredList<Aluno> dadosFiltrados;

    @FXML
    public void initialize() {
        // Configura a coluna de alunos
        colunaAlunos.setCellValueFactory(new PropertyValueFactory<>("nome"));
        
        // Configura a coluna de turmas para mostrar o nome da turma
        colunaTurmas.setCellValueFactory(cellData -> {
            Turma turma = cellData.getValue().getTurma();
            String nomeTurma = turma != null ? turma.getNome() : "Sem turma";
            return javafx.beans.binding.Bindings.createStringBinding(() -> nomeTurma);
        });

        // Carrega os alunos
        carregarAlunos();
        
        // Configura a pesquisa
        configurarPesquisa();
    }


    private void carregarAlunos() {
        try {
            listaCompletaAlunos = FXCollections.observableArrayList(AlunoDAO.obterAlunos());
            
            // Inicializa a lista filtrada com todos os alunos
            dadosFiltrados = new FilteredList<>(listaCompletaAlunos, p -> true);
            
            // Adiciona a lista filtrada à tabela
            SortedList<Aluno> dadosOrdenados = new SortedList<>(dadosFiltrados);
            dadosOrdenados.comparatorProperty().bind(tabelaAlunos.comparatorProperty());
            
            tabelaAlunos.setItems(dadosOrdenados);
        } catch (Exception e) {
            System.err.println("Erro ao carregar alunos: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    private void configurarPesquisa() {
        // Adiciona um listener ao campo de pesquisa
        campoPesquisarAluno.textProperty().addListener((observable, valorAntigo, novoValor) -> {
            // Se o texto da pesquisa estiver vazio, mostra todos os alunos
            if (novoValor == null || novoValor.isEmpty()) {
                dadosFiltrados.setPredicate(aluno -> true);
            } else {
                // Converte o texto de pesquisa para minúsculas para busca case-insensitive
                String termoPesquisa = novoValor.toLowerCase();
                
                // Define o predicado para filtrar os alunos
                dadosFiltrados.setPredicate(aluno -> {
                    // Se o termo de pesquisa estiver vazio, mostra todos os alunos
                    if (termoPesquisa == null || termoPesquisa.isEmpty()) {
                        return true;
                    }
                    
                    // Verifica se o nome do aluno contém o termo de pesquisa
                    if (aluno.getNome() != null && aluno.getNome().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o RA do aluno contém o termo de pesquisa
                    if (aluno.getRa() != null && aluno.getRa().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o email do aluno contém o termo de pesquisa
                    if (aluno.getEmail() != null && aluno.getEmail().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o nome da turma contém o termo de pesquisa
                    if (aluno.getTurma() != null && aluno.getTurma().getNome() != null && 
                        aluno.getTurma().getNome().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Se não encontrou correspondência em nenhum campo
                    return false;
                });
            }
        });
        
        // Adiciona um botão de limpar a pesquisa
        campoPesquisarAluno.setPromptText("Pesquisar por nome, RA, email ou turma...");

    }

    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-alunos/tela-cadastrar-aluno", "Tela Adicionar Aluno");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}
