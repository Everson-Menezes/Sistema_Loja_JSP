<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_produtos.Conexao_produtos"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Excluir Itens Venda</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="produtos.jsp">  
  

<p><strong>Tabela produtos </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
        <tr>  
        <td width=50><strong>  
            Codigo Produto 
        </strong></td>      
        <td width=50><strong>  
            Descrição
        </strong></td>    
        <td width=50><strong>  
            Código Tipo Produto
        </strong></td>  
        <td width=50><strong>  
            Preço Custo
        </strong></td>  
        <td width=50><strong>  
            Preço Venda
        </strong></td>  
        <td width=50><strong>  
            Estoque
        </strong></td>  
        <td width=50><strong>  
            Embalagem
        </strong></td>   
        <td width=50><strong>  
            IPI
            </strong></td>      
            
        </tr>  
  
  
<%      
   try {  
  
    con.setPro_codigo(Integer.parseInt(request.getParameter("pro_codigoField")));  
   
    if (con.excluirDados())  
      {           
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
        
         while (temp.next()){  
         %>  
            <tr>  
            <td width=50>  
            <%out.print(temp.getString("pro_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("pro_descricao"));%>  
            </td>   
            <td width=50>  
            <%out.print(temp.getString("tpp_codigo"));%>  
            </td>  
            <td width=50>  
            <%out.print(temp.getString("pro_precocusto"));%>  
            </td>
            <td width=50>  
                <%out.print(temp.getString("pro_precovenda"));%>  
                </td>
            <td width=50>  
            <%out.print(temp.getString("pro_estoque"));%>  
            </td>
            <td width=50>  
            <%out.print(temp.getString("pro_embalagem"));%>  
            </td>
            <td width=50>  
                <%out.print(temp.getString("pro_ipi"));%>  
                </td>  
                
            </tr>  
         <%}  
      }else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/produtos.jsp?status=Registro nao encontrado");  
      }     
   }catch (Exception e) {  
      e.printStackTrace();  
   }  
     
%>  
</table>  
  <p>  
    <input type="submit" name="Submit" value="voltar">  <!--botão-->
</p>    
<p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("pro_codigoField")%> foi alterado com sucesso">  
      </strong></p>  
</funm>  
</body>  
</html> 