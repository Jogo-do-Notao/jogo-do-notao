package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.util.ArrayList;

public class ControleGerenciarTurmas {

    @FXML
    private TextField campoPesquisarTurma;

    @FXML
    private TableColumn<Turma, String> professorColuna;

    @FXML
    private TableView<Turma> tabelaTurmas;

    @FXML
    private TableColumn<Turma, String> turmaColuna;

    private ObservableList<Turma> turmas;

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
                    if (prof != null) {
                        System.out.println("Professor encontrado para turma " + cellData.getValue().getNome() + 
                                         ": " + prof.getNome() + " (" + prof.getEmail() + ")");
                        return prof.getNome();
                    } else {
                        System.err.println("AVISO: Nenhum professor encontrado para a turma " + cellData.getValue().getNome());
                        return "Sem professor";
                    }
                }
            )
        );

        // Carrega as turmas
        carregarTurmas();
    }
    
    private void carregarTurmas() {
        try {
            System.out.println("Carregando turmas...");
            ArrayList<Turma> turmasCarregadas = TurmaDAO.obterTurma();
            System.out.println("Total de turmas carregadas: " + turmasCarregadas.size());
            
            turmas = FXCollections.observableArrayList(turmasCarregadas);
            tabelaTurmas.setItems(turmas);
            
            // Verificar se há professores nas turmas
            for (Turma turma : turmas) {
                if (turma.getProfessor() == null) {
                    System.err.println("AVISO: Turma " + turma.getNome() + " não tem professor associado");
                }
            }
            
            tabelaTurmas.refresh();
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

    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-criar-turma", "Tela Criar Turma");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}
