<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_tipopagamento.Conexao_tipopagamento"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Cadastrar Itens Venda</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="tipopagamento.jsp">  


<p><strong>Tabela Itens Venda </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
        <tr>  
        <td width=50><strong>  
            Codigo Tipo Pagamento
        </strong></td>      
        <td width=50><strong>  
            Descrição
        </strong></td>    
        <td width=50><strong>  
            Tipo Pagamento Quantidad
        </strong></td>  
        <td width=50><strong>  
            Ativo
        </strong></td>  
        
        </tr>  
  
  
<%      
   try {  
  
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));  
       con.setTpg_descricao(request.getParameter("tpg_descricaoField"));  
	   con.setTpg_qtde(request.getParameter("tpg_qtdeField"));  
	   con.setTpg_ativo(request.getParameter("tpg_ativoField"));  
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("tpg_codigoField").equals(temp.getString("tpg_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/tipopagamento.jsp?status=Registro já existente");  
         
       do{  
         %>  
            <tr>  
            <td width=50>  
            <%out.print(temp.getString("tpg_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("tpg_descricao"));%>  
            </td>   
            <td width=50>  
            <%out.print(temp.getString("tpg_qtde"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("tpg_ativo"));%>  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("tpg_codigoField")%> foi cadastrado com sucesso">  
      </strong></p>  
</funm>  
</body>  
</html> 