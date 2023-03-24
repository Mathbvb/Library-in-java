
package bibliotecacesar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class ConexaoBD {
    
    public static void main(String[] args){
        conecta();
    }
    
    public static Connection conecta(){
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/biblioteca_cesar";
        String user = "root";
        String senha = "";
        
        try {
            conn = DriverManager.getConnection(url, user, senha);
            //JOptionPane.showMessageDialog(null, "Conexão bem sucedida.");
        } catch (SQLException erro) {
             JOptionPane.showMessageDialog(null, "ConexaoDB " + erro.getMessage());
        }
        return conn;
    }
    
}
