<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <scpipt type="text/javascpipt" src="scrpts.js"></scpipt>
  <title>Vendas</title>
</head>

<%  
String ven_codigo = request.getParameter("ven_codigo");  
String tpg_codigo = request.getParameter("tpg_codigo");  
String fun_codigo = request.getParameter("fun_codigo");  
String nf_codigo = request.getParameter("nf_codigo");
String ven_datavenda = request.getParameter("ven_datavenda");
String ven_valortotal = request.getParameter("ven_valortotal");
String ven_observacoes = request.getParameter("ven_observacoes");  
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
      <td width="" height=""><p align="left" > Vendas </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Código Venda :</strong>  
        <input name="ven_codigoField" type="text" id="ven_codigoField" size="" value="<%=(ven_codigo==null)?"":ven_codigo%>"> </p>  
        <p> <strong>Código Tipo Pagamento:</strong>  
        <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
        <p> <strong>Código Funcionário :</strong>  
        <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>">  
        <p> <strong>Código Nota Fiscal:</strong>  
        <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
        <p> <strong>Data Venda:</strong>  
        <input name="ven_datavendaField" type="text" id="ven_datavendaField" size="" value="<%=(ven_datavenda==null)?"":ven_datavenda%>">
        <p> <strong>Valor Total Venda</strong>  
        <input name="ven_valortotalField" type="text" id="ven_valortotalField" size="" value="<%=(ven_valortotal==null)?"":ven_valortotal%>">  
        <p> <strong>Observações Venda</strong>  
        <input name="ven_observacoesField" type="text" id="ven_observacoesField" size="" value="<%=(ven_observacoes==null)?"":ven_observacoes%>"> 
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
          
           if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código tipo pagamento';  
           }else if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código funcionario';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.ven_datavendaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data venda';  
            }else if (document.cadastro.ven_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';  
            }else if (document.cadastro.ven_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observacoes';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_vendas.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_vendas.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código tipo pagamento';  
           }else if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código funcionario';  
           }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.ven_datavendaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo data venda';  
            }else if (document.cadastro.ven_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';  
            }else if (document.cadastro.ven_observacoesField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo observacoes';
              
           }else {   
              document.cadastro.action='alterar/alterar_vendas.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_vendas.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_vendas.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>