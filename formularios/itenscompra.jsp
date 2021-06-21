<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Itens Compra</title>
</head>

<%  
String itc_codigo = request.getParameter("itc_codigo");  
String com_codigo = request.getParameter("com_codigo");  
String pro_codigo = request.getParameter("pro_codigo");  
String tpp_codigo = request.getParameter("tpp_codigo");
String nf_codigo = request.getParameter("nf_codigo");
String for_codigo = request.getParameter("for_codigo");
String tpg_codigo = request.getParameter("tpg_codigo");
String itc_embalagem = request.getParameter("itc_embalagem");  
String itc_qtde = request.getParameter("itc_qtde");  
String itc_valorun = request.getParameter("itc_valorun");
String itc_desc = request.getParameter("itc_desc"); 
String itc_valortotal = request.getParameter("itc_valortotal");
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
      <td width="" height=""><p align="left" > Itens Compra </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Item Compra :</strong>  
        <input name="itc_codigoField" type="text" id="itc_codigoField" size="" value="<%=(itc_codigo==null)?"":itc_codigo%>"> </p>  
        <p> <strong>Código Compra</strong>  
        <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>">  
        <p> <strong>Código Produto</strong>  
        <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">  
        <p> <strong>Código Tipo Produto</strong>  
        <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
        <p> <strong>Código Nota Fiscal</strong>  
        <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
        <p> <strong>Código Fornecedor</strong>  
        <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>">
        <p> <strong>Código Tipo Pagamento</strong>  
        <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
        <p> <strong>Embalagem</strong>  
        <input name="itc_embalagemField" type="text" id="itc_embalagemField" size="" value="<%=(itc_embalagem==null)?"":itc_embalagem%>">  
        <p> <strong>Quantidade</strong>  
        <input name="itc_qtdeField" type="text" id="itc_qtdeField" size="" value="<%=(itc_qtde==null)?"":itc_qtde%>">  
        <p> <strong>Valor unitário</strong>  
        <input name="itc_valorunField" type="text" id="itc_valorunField" size="" value="<%=(itc_valorun==null)?"":itc_valorun%>">  
        <p> <strong>Desconto</strong>  
        <input name="itc_descField" type="text" id="itc_descField" size="" value="<%=(itc_desc==null)?"":itc_desc%>">    
        <p> <strong>Valor Total</strong>  
        <input name="itc_valortotalField" type="text" id="itc_valortotalField" size="" value="<%=(itc_valortotal==null)?"":itc_valortotal%>">  
    
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
          
           if (document.cadastro.itc_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.com_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código da compra';  
           }else if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo produto';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produtoo';  

            }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
            }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo pagamento';  
            }else if (document.cadastro.itc_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';
            }else if (document.cadastro.itc_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo quantidade';
            }else if (document.cadastro.itc_valorunField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor unitario';
            }else if (document.cadastro.itc_descField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo desconto';
            }else if (document.cadastro.itc_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_itenscompra.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.itc_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_itenscompra.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.itc_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.com_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código da compra';  
           }else if (document.cadastro.pro_codigoField.value == '' || document.cadastro.pro_codigoField.value == null ){  
              document.cadastro.statusField.value = 'Preencha o campo produto';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produtoo';  

            }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
            }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo pagamento';  
            }else if (document.cadastro.itc_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';
            }else if (document.cadastro.itc_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo quantidade';
            }else if (document.cadastro.itc_valorunField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor unitario';
            }else if (document.cadastro.itc_descField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo desconto';
            }else if (document.cadastro.itc_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';
              
           }else {  
              document.cadastro.action='alterar/alterar_itenscompra.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.itc_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_itenscompra.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_itenscompra.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>