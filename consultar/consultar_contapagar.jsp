<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Conta Pagar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCp_codigo(Integer.parseInt(request.getParameter("cp_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/contapagar.jsp?status=Consulta efetuada com sucesso&cp_codigo="+  
            temp.getString("cp_codigo")+
            "&cp_valorconta="+temp.getString("cp_valorconta")+
            "&cp_datavencimento="+temp.getString("cp_datavencimento")+
            "&cp_datarecebimento="+temp.getString("cp_datarecebimento")+
            "&nf_codigo="+temp.getString("nf_codigo")+
            "&cp_observacoes="+temp.getString("cp_observacoes"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/contapagar.jsp?status=Registro n�o encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 