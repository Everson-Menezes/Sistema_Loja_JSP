<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Itens Venda</title>
</head>

<%  
String itv_codigo = request.getParameter("itv_codigo");  
String ven_codigo = request.getParameter("ven_codigo");  
String pro_codigo = request.getParameter("pro_codigo");  
String tpp_codigo = request.getParameter("tpp_codigo");
String nf_codigo = request.getParameter("nf_codigo");
String fun_codigo = request.getParameter("fun_codigo");
String tpg_codigo = request.getParameter("tpg_codigo");
String itv_embalagem = request.getParameter("itv_embalagem");  
String itv_qtde = request.getParameter("itv_qtde");  
String itv_valorun = request.getParameter("itv_valorun");
String itv_desc = request.getParameter("itv_desc"); 
String itv_valortotal = request.getParameter("itv_valortotal");
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
      <td width="" height=""><p align="left" > Itens Venda </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Item Venda :</strong>  
        <input name="itv_codigoField" type="text" id="itv_codigoField" size="" value="<%=(itv_codigo==null)?"":itv_codigo%>"> </p>  
        <p> <strong>Código Venda</strong>  
        <input name="ven_codigoField" type="text" id="ven_codigoField" size="" value="<%=(ven_codigo==null)?"":ven_codigo%>">  
        <p> <strong>Código Produto</strong>  
        <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">  
        <p> <strong>Código Tipo Produto</strong>  
        <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
        <p> <strong>Código Nota Fiscal</strong>  
        <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
        <p> <strong>Código Funcionario</strong>  
        <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>">
        <p> <strong>Código Tipo Pagamento</strong>  
        <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
        <p> <strong>Embalagem</strong>  
        <input name="itv_embalagemField" type="text" id="itv_embalagemField" size="" value="<%=(itv_embalagem==null)?"":itv_embalagem%>">  
        <p> <strong>Quantidade</strong>  
        <input name="itv_qtdeField" type="text" id="itv_qtdeField" size="" value="<%=(itv_qtde==null)?"":itv_qtde%>">  
        <p> <strong>Valor unitário</strong>  
        <input name="itv_valorunField" type="text" id="itv_valorunField" size="" value="<%=(itv_valorun==null)?"":itv_valorun%>">  
        <p> <strong>Desconto</strong>  
        <input name="itv_descField" type="text" id="itv_descField" size="" value="<%=(itv_desc==null)?"":itv_desc%>">    
        <p> <strong>Valor Total</strong>  
        <input name="itv_valortotalField" type="text" id="itv_valortotalField" size="" value="<%=(itv_valortotal==null)?"":itv_valortotal%>">  
    
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
          
           if (document.cadastro.itv_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código da Venda';  
           }else if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo produto';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produtoo';  

            }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo Funcionario';  
            }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo pagamento';  
            }else if (document.cadastro.itv_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';
            }else if (document.cadastro.itv_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo quantidade';
            }else if (document.cadastro.itv_valorunField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor unitario';
            }else if (document.cadastro.itv_descField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo desconto';
            }else if (document.cadastro.itv_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_itensvenda.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.itv_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_itensvenda.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.itv_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.ven_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código da Venda';  
           }else if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo produto';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produtoo';  

            }else if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código nota';  
            }else if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo Funcionario';  
            }else if (document.cadastro.tpg_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo pagamento';  
            }else if (document.cadastro.itv_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';
            }else if (document.cadastro.itv_qtdeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo quantidade';
            }else if (document.cadastro.itv_valorunField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor unitario';
            }else if (document.cadastro.itv_descField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo desconto';
            }else if (document.cadastro.itv_valortotalField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor total';
              
           }else {  
              document.cadastro.action='alterar/alterar_itensvenda.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.itv_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_itensvenda.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_itensvenda.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>