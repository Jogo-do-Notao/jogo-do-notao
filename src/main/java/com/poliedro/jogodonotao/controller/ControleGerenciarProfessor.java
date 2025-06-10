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
import javafx.scene.control.*;
import javafx.scene.control.Alert.AlertType;
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
    @FXML
    void excluirProfessor(ActionEvent event) {
        // Obtém o professor selecionado na tabela
        Professor professorSelecionado = tabelaProfessores.getSelectionModel().getSelectedItem();
        
        // Verifica se um professor foi selecionado
        if (professorSelecionado == null) {
            Alert alerta = new Alert(AlertType.WARNING);
            alerta.setTitle("Aviso");
            alerta.setHeaderText("Nenhum professor selecionado");
            alerta.setContentText("Por favor, selecione um professor para excluir.");
            alerta.showAndWait();
            return;
        }
        
        // Verifica se está tentando excluir a si mesmo (se houver um usuário logado)
        // Isso é um exemplo - você precisará implementar a lógica de verificação do usuário logado
        /*
        if (professorSelecionado.getId() == UsuarioLogado.getInstancia().getId()) {
            Alert alerta = new Alert(AlertType.ERROR);
            alerta.setTitle("Erro");
            alerta.setHeaderText("Ação não permitida");
            alerta.setContentText("Você não pode excluir seu próprio usuário.");
            alerta.showAndWait();
            return;
        }
        */
        
        // Mostra confirmação antes de excluir
        Alert confirmacao = new Alert(AlertType.CONFIRMATION);
        confirmacao.setTitle("Confirmar Exclusão");
        confirmacao.setHeaderText("Excluir Professor");
        confirmacao.setContentText("Tem certeza que deseja excluir o professor " + 
                               professorSelecionado.getNome() + " (" + professorSelecionado.getEmail() + 
                               ")?\n\nEsta ação não poderá ser desfeita.");
        
        // Mostra o diálogo e espera pela resposta do usuário
        confirmacao.showAndWait().ifPresent(resposta -> {
            if (resposta == ButtonType.OK) {
                try {
                    // Tenta excluir o professor
                    boolean sucesso = ProfessorDAO.excluirProfessor(professorSelecionado.getId());
                    
                    if (sucesso) {
                        // Remove da lista e atualiza a tabela
                        listaCompletaProfessores.remove(professorSelecionado);
                        
                        // Mostra mensagem de sucesso
                        Alert sucessoAlert = new Alert(AlertType.INFORMATION);
                        sucessoAlert.setTitle("Sucesso");
                        sucessoAlert.setHeaderText(null);
                        sucessoAlert.setContentText("Professor excluído com sucesso!");
                        sucessoAlert.showAndWait();
                    } else {
                        throw new Exception("Falha ao excluir o professor no banco de dados");
                    }
                } catch (Exception e) {
                    System.err.println("Erro ao excluir professor: " + e.getMessage());
                    e.printStackTrace();
                    
                    // Mostra mensagem de erro
                    Alert erro = new Alert(AlertType.ERROR);
                    erro.setTitle("Erro");
                    erro.setHeaderText("Erro ao excluir professor");
                    
                    // Mensagem mais amigável para o usuário
                    String mensagemErro = "Ocorreu um erro ao excluir o professor. Por favor, tente novamente.\n\n";
                    
                    // Se for o único coordenador, informa ao usuário
                    if (e.getMessage() != null && e.getMessage().contains("único professor coordenador")) {
                        mensagemErro += "Não é possível excluir o único professor coordenador do sistema.";
                    } else {
                        mensagemErro += "Detalhes: " + e.getMessage();
                    }
                    
                    erro.setContentText(mensagemErro);
                    erro.showAndWait();
                }
            }
        });
    }
}
