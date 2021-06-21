<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Contas Pagar</title>
</head>

<%  
String cp_codigo = request.getParameter("cp_codigo");  
String cp_valorconta = request.getParameter("cp_valorconta");  
String cp_datavencimento = request.getParameter("cp_datavencimento");  
String cp_datarecebimento = request.getParameter("cp_datarecebimento");
String nf_codigo = request.getParameter("nf_codigo");
String cp_observacoes = request.getParameter("cp_observacoes");
String status = request.getParameter("status");  
%> 

<body>  
   <table width="98%" border="0" cellspacing="0" cellpadding="0">
      <tr align="left" valign="top"> 
        <td colspan="3"><span> </span> </td>
      </tr>
      <tr align="left" valign="top"> 
        <td height="28"></td>
        <td height="28">&nbsp;</td>
        <td height="28" align="right"></td>
      </tr>
      <tr> 
        <td width="3%"></td>
        <td width="94%" align="left" valign="top"><div id="build-menu"></div></td>
        <td width="3%" align="right"></td>
      </tr>
      <tr> 
        <td colspan="3">&nbsp;</td>
      </tr>
    </table>
    <script src="teste2.js"></script>
    
  <form name="cadastro" method="get">  
    
  <table width="" border="">  
    <tr>  
      <td width="" height=""><p align="left" >Conta Pagar </p>  
      </td>  
    </tr>  
    <tr>  
      <td height=""><p> <strong>Codigo conta :</strong>  
         <input name="cp_codigoField" type="text" id="cp_codigoField" size="" value="<%=(cp_codigo==null)?"":cp_codigo%>"> </p>  
           <p> <strong>Valor conta:</strong>  
         <input name="cp_valorcontaField" type="text" id="cp_valorcontaField" size="" value="<%=(cp_valorconta==null)?"":cp_valorconta%>">  
           <p> <strong>Vencimento :</strong>  
         <input name="cp_datavencimentoField" type="text" id="cp_datavencimentoField" size="" value="<%=(cp_datavencimento==null)?"":cp_datavencimento%>">  
            <p> <strong>Recebimento:</strong>  
         <input name="cp_datarecebimentoField" type="text" id="cp_datarecebimentoField" size="" value="<%=(cp_datarecebimento==null)?"":cp_datarecebimento%>">  
            <p> <strong>Código nota:</strong>  
        <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">
        <p> <strong>Observações:</strong>  
            <input name="cp_observacoesField" type="text" id="cp_observacoesField" size="" value="<%=(cp_observacoes==null)?"":cp_observacoes%>">  
                  
    
           </p>      
     </td>  
   </tr>  
   <tr>  
     <td height=""><p>   
         <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
         <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
         <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
         <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
         <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
       </p>  
       <p> <strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
       </strong></p>  
    </td>  
   </tr>  
 </table>  
 </form>  

 <script type="text/javascript">
  function enviar(acao){  
        
        if (acao == 'cadastrar'){  
          
           if (document.cadastro.cp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.cp_valorcontaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor conta';  
           }else if (document.cadastro.cp_datarecebimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data recebimento';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.cp_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observações'; 
           }else {  
              document.cadastro.action='cadastrar/cadastrar_contapagar.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.cp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_contapagar.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.cp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.cp_valorcontaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor conta';  
           }else if (document.cadastro.cp_datarecebimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data recebimento';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.cp_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observações';
           }else {   
              document.cadastro.action='alterar/alterar_contapagar.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.cp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_contapagar.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_contapagar.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>