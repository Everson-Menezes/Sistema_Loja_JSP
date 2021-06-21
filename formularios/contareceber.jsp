<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Contas Receber</title>
</head>

<%  
String cr_codigo = request.getParameter("cr_codigo");  
String cr_valorconta = request.getParameter("cr_valorconta");  
String cr_datavencimento = request.getParameter("cr_datavencimento");  
String cr_datarecebimento = request.getParameter("cr_datarecebimento");
String nf_codigo = request.getParameter("nf_codigo");
String cr_observacoes = request.getParameter("cr_observacoes");
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
      <td width="" height=""><p align="left" >Conta Receber </p>  
      </td>  
    </tr>  
    <tr>  
      <td height=""><p> <strong>Codigo conta :</strong>  
         <input name="cr_codigoField" type="text" id="cr_codigoField" size="" value="<%=(cr_codigo==null)?"":cr_codigo%>"> </p>  
           <p> <strong>Valor conta:</strong>  
         <input name="cr_valorcontaField" type="text" id="cr_valorcontaField" size="" value="<%=(cr_valorconta==null)?"":cr_valorconta%>">  
           <p> <strong>Vencimento :</strong>  
         <input name="cr_datavencimentoField" type="text" id="cr_datavencimentoField" size="" value="<%=(cr_datavencimento==null)?"":cr_datavencimento%>">  
            <p> <strong>Recebimento:</strong>  
         <input name="cr_datarecebimentoField" type="text" id="cr_datarecebimentoField" size="" value="<%=(cr_datarecebimento==null)?"":cr_datarecebimento%>">  
            <p> <strong>Código nota:</strong>  
        <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">
        <p> <strong>Observações:</strong>  
            <input name="cr_observacoesField" type="text" id="cr_observacoesField" size="" value="<%=(cr_observacoes==null)?"":cr_observacoes%>">  
                  
    
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
          
           if (document.cadastro.cr_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.cr_valorcontaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor conta';  
           }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data recebimento';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.cr_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observações'; 
           }else {  
              document.cadastro.action='cadastrar/cadastrar_contareceber.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.cr_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_contareceber.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.cr_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.cr_valorcontaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor conta';  
           }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data recebimento';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.cr_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observações';
           }else {   
              document.cadastro.action='alterar/alterar_contareceber.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.cr_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_contareceber.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_contareceber.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>