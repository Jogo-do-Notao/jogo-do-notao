package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.control.Button;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Optional;

public class ControleGerenciarTurmas {

    @FXML
    private TextField campoPesquisarTurma;

    @FXML
    private TableColumn<Turma, String> professorColuna;

    @FXML
    private TableView<Turma> tabelaTurmas;

    @FXML
    private TableColumn<Turma, String> turmaColuna;

    private ObservableList<Turma> listaCompletaTurmas;
    private FilteredList<Turma> dadosFiltrados;

    @FXML
    public void initialize() {
        // Configura a coluna de turma
        turmaColuna.setCellValueFactory(cellData -> 
            javafx.beans.binding.Bindings.createStringBinding(
                () -> cellData.getValue() != null ? cellData.getValue().getNome() : ""
            )
        );
        
        // Configura a coluna do professor
        professorColuna.setCellValueFactory(cellData -> 
            javafx.beans.binding.Bindings.createStringBinding(
                () -> {
                    if (cellData.getValue() == null) return "";
                    Professor prof = cellData.getValue().getProfessor();
                    return prof != null ? prof.getNome() : "Sem professor";
                }
            )
        );

        // Carrega as turmas
        carregarTurmas();
        
        // Configura a pesquisa
        configurarPesquisa();
    }
    
    private void carregarTurmas() {
        try {
            System.out.println("Carregando turmas...");
            ArrayList<Turma> turmasCarregadas = TurmaDAO.obterTurma();
            System.out.println("Total de turmas carregadas: " + turmasCarregadas.size());
            
            listaCompletaTurmas = FXCollections.observableArrayList(turmasCarregadas);
            dadosFiltrados = new FilteredList<>(listaCompletaTurmas, p -> true);
            
            // Ordena os dados
            SortedList<Turma> dadosOrdenados = new SortedList<>(dadosFiltrados);
            dadosOrdenados.comparatorProperty().bind(tabelaTurmas.comparatorProperty());
            
            tabelaTurmas.setItems(dadosOrdenados);
            
            // Verificar se há professores nas turmas
            for (Turma turma : listaCompletaTurmas) {
                if (turma.getProfessor() == null) {
                    System.err.println("AVISO: Turma " + turma.getNome() + " não tem professor associado");
                }
            }
            
        } catch (Exception e) {
            System.err.println("Erro ao carregar turmas: " + e.getMessage());
            e.printStackTrace();
            
            // Mostrar mensagem de erro para o usuário
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Erro");
            alert.setHeaderText("Erro ao carregar turmas");
            alert.setContentText("Ocorreu um erro ao carregar as turmas. Por favor, tente novamente mais tarde.");
            alert.showAndWait();
        }
    }
    
    private void configurarPesquisa() {
        // Adiciona um listener ao campo de pesquisa
        campoPesquisarTurma.textProperty().addListener((observable, valorAntigo, novoValor) -> {
            // Se o texto da pesquisa estiver vazio, mostra todas as turmas
            if (novoValor == null || novoValor.isEmpty()) {
                dadosFiltrados.setPredicate(turma -> true);
            } else {
                // Converte o texto de pesquisa para minúsculas para busca case-insensitive
                String termoPesquisa = novoValor.trim().toLowerCase();
                
                // Define o predicado para filtrar as turmas
                dadosFiltrados.setPredicate(turma -> {
                    // Se o termo de pesquisa estiver vazio, mostra todas as turmas
                    if (termoPesquisa.isEmpty()) {
                        return true;
                    }
                    
                    // Verifica se o nome da turma contém o termo de pesquisa
                    if (turma.getNome() != null && turma.getNome().toLowerCase().contains(termoPesquisa)) {
                        return true;
                    }
                    
                    // Verifica se o nome do professor contém o termo de pesquisa
                    Professor professor = turma.getProfessor();
                    if (professor != null) {
                        if (professor.getNome() != null && professor.getNome().toLowerCase().contains(termoPesquisa)) {
                            return true;
                        }
                        if (professor.getEmail() != null && professor.getEmail().toLowerCase().contains(termoPesquisa)) {
                            return true;
                        }
                    }
                    
                    // Se não encontrou correspondência em nenhum campo
                    return false;
                });
            }
        });
        
        // Adiciona um placeholder ao campo de pesquisa
        campoPesquisarTurma.setPromptText("Pesquisar por nome da turma ou professor...");
    }

    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-criar-turma", "Tela Criar Turma");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
    @FXML
    void excluirTurma(ActionEvent event) {
        // Obtém a turma selecionada na tabela
        Turma turmaSelecionada = tabelaTurmas.getSelectionModel().getSelectedItem();
        
        // Verifica se uma turma foi selecionada
        if (turmaSelecionada == null) {
            Alert alert = new Alert(AlertType.WARNING);
            alert.setTitle("Aviso");
            alert.setHeaderText("Nenhuma turma selecionada");
            alert.setContentText("Por favor, selecione uma turma para excluir.");
            alert.showAndWait();
            return;
        }
        
        // Confirmação antes de excluir
        Alert confirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        confirmacao.setTitle("Confirmar Exclusão");
        confirmacao.setHeaderText("Excluir Turma");
        confirmacao.setContentText("Tem certeza que deseja excluir a turma \"" + turmaSelecionada.getNome() + "\"?");
        
        Optional<ButtonType> resultado = confirmacao.showAndWait();
        if (resultado.isPresent() && resultado.get() == ButtonType.OK) {
            try {
                // Remove do banco de dados
                boolean sucesso = TurmaDAO.excluirTurma(turmaSelecionada.getId());
                
                if (sucesso) {
                    // Remove da lista e atualiza a tabela
                    listaCompletaTurmas.remove(turmaSelecionada);
                    
                    Alert sucessoAlert = new Alert(AlertType.INFORMATION);
                    sucessoAlert.setTitle("Sucesso");
                    sucessoAlert.setHeaderText(null);
                    sucessoAlert.setContentText("Turma excluída com sucesso!");
                    sucessoAlert.showAndWait();
                } else {
                    throw new Exception("Falha ao excluir a turma no banco de dados");
                }
            } catch (Exception e) {
                System.err.println("Erro ao excluir turma: " + e.getMessage());
                e.printStackTrace();
                
                Alert erro = new Alert(AlertType.ERROR);
                erro.setTitle("Erro");
                erro.setHeaderText("Erro ao excluir turma");
                erro.setContentText("Ocorreu um erro ao excluir a turma. Por favor, tente novamente.");
                erro.showAndWait();
            }
        }
    }
}
