<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Cadastrar Vendas</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="vendas.jsp">  
  
<p><strong>Tabela Vendas </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
        <tr>  
        <td width=50><strong>  
        Codigo Venda
        </strong></td>      
        <td width=50><strong>  
        Codigo Tipo Pagamento 
        </strong></td>    
        <td width=50><strong>  
        Codigo Funcionario 
        </strong></td>    
        <td width=50><strong>  
        Codigo Nota Fiscal 
        </strong></td>  
        <td width=50><strong>  
        Data Venda
        </strong></td>  
        <td width=50><strong>  
        Valor Total Venda
        </strong></td>  
        <td width=50><strong>  
        Observações Venda
        </strong></td>      
        </tr>  
  
  
<%      
   try {  
  
     
    con.setVen_codigo(Integer.parseInt(request.getParameter("ven_codigoField")));  
    con.setTpg_codigo(request.getParameter("tpg_codigoField"));  
    con.setFun_codigo(request.getParameter("fun_codigoField"));  
    con.setNf_codigo(request.getParameter("nf_codigoField"));  
    con.setVen_datavenda(request.getParameter("ven_datavendaField"));  
    con.setVen_valortotal(request.getParameter("ven_valortotalField"));  
    con.setVen_observacoes(request.getParameter("ven_observacoesField"));  
    con.inserirDados();  
               
    con.setConsulta();  
    ResultSet temp = con.getResultado();  
    temp.next();  
      
    if(request.getParameter("nf_codigoField").equals(temp.getString("nf_codigo")))  
       response.sendRedirect("http://localhost:8084/sistema_loja_noturno/vendas.jsp?status=Registro já existente");  
      
    do{  
          
         %>  
            <tr>  
            <td width=50>  
            <%out.print(temp.getString("ven_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("tpg_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("fun_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("nf_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("ven_datavenda"));%>  
            </td>
            <td width=50>  
            <%out.print(temp.getString("ven_valortotal"));%>  
            </td>
            <td width=50>  
            <%out.print(temp.getString("ven_observacoes"));%>  
            </td>
            </tr>  
         <%}  
         while (temp.next());  
   }catch (Exception e) {  
      e.printStackTrace();  
   }  
     
%>  
</table>  
  <p>  
    <input type="submit" name="Submit" value="voltar">  <!--botão-->
</p>    
<p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("ven_codigoField")%> foi cadastrado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 