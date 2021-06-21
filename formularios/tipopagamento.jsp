<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />

  <title>Tipo Pagamento</title>
</head>

<%  
String tpg_codigo = request.getParameter("tpg_codigo");  
String tpg_descricao = request.getParameter("tpg_descricao");  
String tpg_qtde = request.getParameter("tpg_qtde");  
String tpg_ativo = request.getParameter("tpg_ativo");

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
      <td width="" height=""><p align="left" > Tipo Pagamento </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Tipo Pagamento :</strong>  
        <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> </p>  
        <p> <strong>Descrição</strong>  
        <input name="tpg_descricaoField" type="text" id="tpg_descricaoField" size="" value="<%=(tpg_descricao==null)?"":tpg_descricao%>">  
        <p> <strong>Tipo Pagamento Quantidade</strong>  
        <input name="tpg_qtdeField" type="text" id="tpg_qtdeField" size="" value="<%=(tpg_qtde==null)?"":tpg_qtde%>">  
        <p> <strong>Ativo</strong>  
        <input name="tpg_ativoField" type="text" id="tpg_ativoField" size="" value="<%=(tpg_ativo==null)?"":tpg_ativo%>">  
        
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
          
           if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.tpg_descricaoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código descrição';  
           }else if (document.cadastro.tpg_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código quantidade';  
           }else if (document.cadastro.tpg_ativoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo ativo'; 
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_tipopagamento.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_tipopagamento.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.tpg_descricaoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código descrição';  
           }else if (document.cadastro.tpg_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código quantidade';  
           }else if (document.cadastro.tpg_ativoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo ativo';
              
           }else {   
              document.cadastro.action='alterar/alterar_tipopagamento.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_tipopagamento.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_tipopagamento.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script>  
 </body> 
</html>