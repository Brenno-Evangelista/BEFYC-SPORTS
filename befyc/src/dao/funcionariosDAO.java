/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;



import java.sql.ResultSet;
import dto.funcionariosDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;






public class funcionariosDAO {
    
  Connection conn;
  PreparedStatement pstm;
 
  
  
  
  public void cadastrarfuncionarios(funcionariosDTO objfuncionarios){
      String sql = "insert into funcionarios (nome,nascimento,endereço,numero,email,senha) values (?,?,?,?,?,?)"; 
     
     conn = new conexao().conectaBD();
     
      try {
         
        pstm = conn.prepareStatement(sql);
        pstm.setString(1, objfuncionarios.getNome());
        pstm.setString(2, objfuncionarios.getNascimento());
        pstm.setString(3, objfuncionarios.getEndereço());
        pstm.setString(4, objfuncionarios.getNumero());
        pstm.setString(5, objfuncionarios.getEmail());
        pstm.setString(6, objfuncionarios.getSenha());
        
        
        pstm.execute();
        pstm.close();
          
          
      } catch (Exception erro) {
          
         JOptionPane.showMessageDialog(null, "FuncioriosDAO" + erro);
      }
      
    }
    public ResultSet loginusuario(funcionariosDTO objfuncionarios){
      conn = new conexao().conectaBD();
      
      
      
        try {
            String sql = "Select * from funcionarios where email = ? and senha = ?";
            
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, objfuncionarios.getEmail());
            pstm.setString(2, objfuncionarios.getSenha());
            
            
            ResultSet rs = pstm.executeQuery();
            return rs;
            
            
        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "funcionariosDAO" + erro);
            return null;
          
        }
     
       
    }
}
