package conexao_itenscompra;

import java.sql.*;

public class Conexao_itenscompra {

    public Connection con;
    public Statement stm;
    public ResultSet res = null;

    private int itc_codigo = 0;
    private String com_codigo = null;
    private String pro_codigo = null;
    private String tpp_codigo = null;
    private String nf_codigo = null;
    private String for_codigo = null;
    private String tpg_codigo = null;
    private String itc_embalagem = null;
    private String itc_qtde = null;
    private String itc_valorun = null;
    private String itc_desc = null;
    private String itc_valortotal = null;

    public Conexao_itenscompra() {

        try {

            Class.forName("org.gjt.mm.mysql.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno", "root", "vertrigo");
            stm = con.createStatement();

        } catch (Exception e) {
            System.out.println("não foi possível conectar ao banco" + e.getMessage());
        }
    }

    public int getItc_codigo() {
        return itc_codigo;
    }

    public void setItc_codigo(int itc_codigo) {
        this.itc_codigo = itc_codigo;
    }

    public String getCom_codigo() {
        return com_codigo;
    }

    public void setCom_codigo(String com_codigo) {
        this.com_codigo = com_codigo;
    }

    public String getItc_desc() {
        return itc_desc;
    }

    public void setItc_desc(String itc_desc) {
        this.itc_desc = itc_desc;
    }

    public String getPro_codigo() {
        return pro_codigo;
    }

    public void setPro_codigo(String pro_codigo) {
        this.pro_codigo = pro_codigo;
    }

    public String getTpp_codigo() {
        return tpp_codigo;
    }

    public void setTpp_codigo(String tpp_codigo) {
        this.tpp_codigo = tpp_codigo;
    }

    public String getNf_codigo() {
        return nf_codigo;
    }

    public void setNf_codigo(String nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public String getFor_codigo() {
        return for_codigo;
    }

    public void setFor_codigo(String for_codigo) {
        this.for_codigo = for_codigo;
    }

    public String getTpg_codigo() {
        return tpg_codigo;
    }

    public void setTpg_codigo(String tpg_codigo) {
        this.tpg_codigo = tpg_codigo;
    }

    public String getItc_embalagem() {
        return itc_embalagem;
    }

    public void setItc_embalagem(String itc_embalagem) {
        this.itc_embalagem = itc_embalagem;
    }

    public String getItc_qtde() {
        return itc_qtde;
    }

    public void setItc_qtde(String itc_qtde) {
        this.itc_qtde = itc_qtde;
    }

    public String getItc_valorun() {
        return itc_valorun;
    }

    public void setItc_valorun(String itc_valorun) {
        this.itc_valorun = itc_valorun;
    }

    public String getItc_valortotal() {
        return itc_valortotal;
    }

    public void setItc_valortotal(String itc_valortotal) {
        this.itc_valortotal = itc_valortotal;
    }
    
    public void inserirDados() {

        try {
            String query = "insert into tb_itenscompra(itc_codigo,com_codigo,pro_codigo,tpp_codigo,"
                    + "nf_codigo,for_codigo,tpg_codigo,itc_embalagem,itc_qtde,itc_valorun,itc_desc,itc_valortotal)"
                    + "values(" + itc_codigo + 
                    "\",\"" + com_codigo + 
                    "\",\"" + pro_codigo + 
                    "\",\"" + tpp_codigo + 
                    "\",\"" + nf_codigo + 
                    "\",\"" + for_codigo + 
                    "\",\"" + tpg_codigo + 
                    "\",\"" + itc_embalagem + 
                    "\",\"" + itc_qtde + 
                    "\",\"" + itc_valorun + 
                    "\",\"" + itc_desc + 
                    "\",\"" +  itc_valortotal + "\")";
            stm.executeUpdate(query);

        } catch (SQLException e) {
            System.out.println("Erro na inserção:" + e.getMessage());
        }

    }

    public boolean alterarDados() {

        boolean testa = false;

        try {
            String query = "update tb_itenscompra set com_codigo = \"" + com_codigo + 
                    "\", pro_codigo = \"" + pro_codigo + 
                    "\", tpp_codigo = \"" + tpp_codigo + 
                    "\", nf_codigo = \"" + nf_codigo + 
                    "\", for_codigo = \"" + for_codigo + 
                    "\", tpg_codigo = \"" + tpg_codigo + 
                    "\", itc_embalagem = \"" + itc_embalagem + 
                    "\", itc_qtde = \"" + itc_qtde + 
                    "\", itc_valorun = \"" + itc_valorun + 
                    "\", itc_valortotal = \"" + itc_valortotal +
                    "\", itc_desc = \"" + itc_desc +
                    "\"  where itc_codigo = " + itc_codigo + " ";

            int linhas = stm.executeUpdate(query);

            if (linhas > 0)
                testa = true;
            else
                testa = false;

        } catch (SQLException e) {
            System.out.println("Erro na alteração:" + e.getMessage());
        }

        return testa;
    }

    public boolean excluirDados() {

        boolean testa = false;

        try {
            String query = "delete from tb_itenscompra where itc_codigo='" + itc_codigo + "'";
            int linhas = stm.executeUpdate(query);

            if (linhas > 0)
                testa = true;
            else
                testa = false;

        } catch (SQLException e) {
            System.out.println("Erro na exclusão:" + e.getMessage());
        }

        return testa;
    }

    public boolean consultarDados() {

        boolean testa = false;

        try {
            String query = "select * from tb_itenscompra where itc_codigo='" + itc_codigo + "'";
            res = stm.executeQuery(query);

            if (res.next()) {
                testa = true;
            } else {
                testa = false;
            }

        } catch (SQLException e) {
            System.out.println("Erro na consulta:" + e.getMessage());
        }

        return testa;
    }

    public void setConsulta() {

        try {
            res = stm.executeQuery("select * from tb_itenscompra");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public ResultSet getResultado() {
        return res;
    }
}