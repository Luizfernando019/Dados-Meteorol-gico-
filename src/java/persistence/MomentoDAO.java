/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Momento;
/**
 *
 * @author Anah
 */
public class MomentoDAO {
    private static MomentoDAO instance = new MomentoDAO();

    private MomentoDAO() {

    }

    public static MomentoDAO getInstance() {
        return instance;
    }
//
//    public void save(LocalEstacao local) throws SQLException,
//            ClassNotFoundException {
//        Connection conn = null;
//        Statement st = null;
//        try {
//            conn = DatabaseLocator.getInstance().getConnection();
//            st = conn.createStatement();
//            st.execute("insert into `localestacao` (idestacao, nome, descricao, latitude, altura, longitude)"
//                    + " values ('" + local.getIdLocalEstacao() + "', '" + local.getNome() + "', '" + local.getDescricao() + "'"
//                    + ", '" + local.getLatitude() + "', '" + local.getAltura() + "', '" + local.getLongitude() + "')");
//        } catch (SQLException e) {
//            throw e;
//        } finally {
//            closeResources(conn, st);
//        }
//    }

//    public void delete(Medico medico) throws SQLException, ClassNotFoundException {
//        Connection conn = null;
//        Statement st = null;
//        try {
//            conn = DatabaseLocator.getInstance().getConnection();
//            st = conn.createStatement();
//            st.execute("delete from medico where id ='" + medico.getId() + "'");
//        } catch (SQLException e) {
//            throw e;
//        } finally {
//            closeResources(conn, st);
//        }
//    }
//
    public static List<Momento> obterMomentos() throws ClassNotFoundException {
        Connection conn = null;
        Statement st = null;
        List<Momento> momentos = new ArrayList<Momento>();
        try {
            conn = DatabaseLocator.getInstance().getConnection();
            st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from momento");
            while (rs.next()) {
               Momento momento = new Momento(rs.getInt("idmomento"),
                        rs.getString("data"),
                        rs.getString("hora"));
               momentos.add(momento);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, st);
        }
        return momentos;
    }
//
//    public static Medico obterMedico(int codigo) throws ClassNotFoundException {
//        Connection conn = null;
//        Statement st = null;
//        Medico medico = null;
//        try {
//            conn = DatabaseLocator.getInstance().getConnection();
//            st = conn.createStatement();
//            ResultSet rs = st.executeQuery("select * from medico where id = " + codigo);
//            rs.first();
//            medico = new Medico(rs.getInt("id"),
//                    rs.getString("nome"),
//                    rs.getString("cpf"),
//                    rs.getInt("cep"),
//                    rs.getInt("numero"),
//                    rs.getString("complemento"),
//                    rs.getString("endereco"),
//                    rs.getString("bairro"),
//                    rs.getString("cidade"),
//                    rs.getString("estado"),
//                    rs.getString("email"),
//                    rs.getString("dataNasc"),
//                    rs.getString("sexo"),
//                    rs.getInt("telefone"),
//                    rs.getString("celular"),
//                    rs.getString("especializacao"),
//                    rs.getString("crm"),
//                    rs.getString("status"));
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//            closeResources(conn, st);
//        }
//        return medico;
//    }
//
//    public static void alterar(Medico medico) throws SQLException, ClassNotFoundException {
//        Connection conn = null;
//        try {
//            conn = DatabaseLocator.getInstance().getConnection();
//            String sql = "update medico set nome = ?,cpf =?,cep=?, numero=?,complemento=?,endereco=?,bairro=?,cidade=?,"
//                    + "estado=?,email = ?,dataNasc=?,sexo=?,telefone=?,celular=?,especializacao=?,crm=?, status=? where id = ?";
//            PreparedStatement comando = conn.prepareStatement(sql);
//            comando.setString(1, medico.getNome());
//            comando.setString(2, medico.getCpf());
//            comando.setInt(3, medico.getCep());
//            comando.setInt(4, medico.getNumero());
//            comando.setString(5, medico.getComplemento());
//            comando.setString(6, medico.getEndereco());
//            comando.setString(7, medico.getBairro());
//            comando.setString(8, medico.getCidade());
//            comando.setString(9, medico.getEstado());
//            comando.setString(10, medico.getEmail());
//            comando.setString(11, medico.getDataNasc());
//            comando.setString(12, medico.getSexo());
//            comando.setInt(13, medico.getTel());
//            comando.setString(14, medico.getCel());
//            comando.setString(15, medico.getEspecializacao());
//            comando.setString(16, medico.getCrm());
//            comando.setString(17, medico.getStatus());
//            comando.setInt(18, medico.getId());
//            comando.execute();
//            comando.close();
//            conn.close();
//
//        } catch (SQLException e) {
//            throw e;
//        }
//    }

    private static void closeResources(Connection conn, Statement st) {
        try {
            if (st != null) {
                st.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {

        }
    }

}
