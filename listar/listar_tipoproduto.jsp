<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto" />

   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <html>

   <head>
      <title>Listar Tipo Produto</title>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   </head>

   <body>
      <form name="form1" method="post" action="tipoproduto.jsp">


         <p><strong>Tabela Tipo Produto </strong></p>
         <table border=1 cellspacing=0 cellpadding=0>

            <tr>
               <td width=50><strong>
                     Codigo Tipo Produto
                  </strong></td>
               <td width=50><strong>
                     Descrição Tipo Produto
                  </strong></td>

            </tr>


            <% try { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("tpp_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("tpp_descricao"));%>
                  </td>

               </tr>
               <%} }catch (Exception e) { e.printStackTrace(); } %>
         </table>
         <p>
            <input type="submit" name="Submit" value="voltar">
            <!--botão-->
         </p>
         <p><strong>Status:
               <input name="statusField" disabled type="text" id="statusField" size="36"
                  value="<%=request.getParameter(" tpp_codigoField")%> foi listado com sucesso">
            </strong></p>
      </form>
   </body>

   </html>