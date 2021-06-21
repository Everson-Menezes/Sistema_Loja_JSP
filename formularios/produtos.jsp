<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Produto</title>
</head>

<%  
String pro_codigo = request.getParameter("pro_codigo");  
String pro_descricao = request.getParameter("pro_descricao");
String tpp_codigo = request.getParameter("tpp_codigo");
String pro_precocusto = request.getParameter("pro_precocusto");
String pro_precovenda = request.getParameter("pro_precovenda");
String pro_estoque = request.getParameter("pro_estoque");
String pro_embalagem = request.getParameter("pro_embalagem");  
String pro_ipi = request.getParameter("pro_ipi");
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
      <td width="" height=""><p align="left" > Produto </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Produto :</strong>  
        <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>"> </p>  
        <p> <strong>Descrição</strong>  
        <input name="pro_descricaoField" type="text" id="pro_descricaoField" size="" value="<%=(pro_descricao==null)?"":pro_descricao%>">  
        <p> <strong>Código Tipo Produto</strong>  
        <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
        <p> <strong>Preço Custo</strong>  
        <input name="pro_precocustoField" type="text" id="pro_precocustoField" size="" value="<%=(pro_precocusto==null)?"":pro_precocusto%>">  
        <p> <strong>Preço Venda</strong>  
        <input name="pro_precovendaField" type="text" id="pro_precovendaField" size="" value="<%=(pro_precovenda==null)?"":pro_precovenda%>">
        <p> <strong>Estoque</strong>  
        <input name="pro_estoqueField" type="text" id="pro_estoqueField" size="" value="<%=(pro_estoque==null)?"":pro_estoque%>">  
        <p> <strong>Embalagem</strong>  
        <input name="pro_embalagemField" type="text" id="pro_embalagemField" size="" value="<%=(pro_embalagem==null)?"":pro_embalagem%>">  
        <p> <strong>IPI</strong>  
        <input name="pro_ipiField" type="text" id="pro_ipiField" size="" value="<%=(pro_ipi==null)?"":pro_ipi%>">  
        
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
          
           if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.pro_descricaoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo descrição';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produto';  
           }else if (document.cadastro.pro_precocustoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo preço de custo';  

            }else if (document.cadastro.pro_precovendaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo preço de venda';  
            }else if (document.cadastro.pro_estoqueField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo estoque';  
            }else if (document.cadastro.pro_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';  
            }else if (document.cadastro.pro_ipiField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo IPI';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_produtos.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_produtos.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.pro_descricaoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo descrição';  
           }else if (document.cadastro.tpp_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo tipo produto';  
           }else if (document.cadastro.pro_precocustoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo preço de custo';  

            }else if (document.cadastro.pro_precovendaField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo preço de venda';  
            }else if (document.cadastro.pro_estoqueField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo estoque';  
            }else if (document.cadastro.pro_embalagemField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo embalagem';  
            }else if (document.cadastro.pro_ipiField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo IPI';
              
           }else {  
              document.cadastro.action='alterar/alterar_produtos.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.pro_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_produtos.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_produtos.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script>
 </body> 
</html>