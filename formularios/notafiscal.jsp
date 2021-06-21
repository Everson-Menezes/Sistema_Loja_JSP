<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
 
  <title>Nota Fiscal</title>
</head>

<%  
String nf_codigo = request.getParameter("nf_codigo");  
String nf_valornf = request.getParameter("nf_valornf");  
String nf_taxaimpostonf = request.getParameter("nf_taxaimpostonf");  
String nf_valorimposto = request.getParameter("nf_valorimposto");  
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
      <td width="" height=""><p align="left" >Nota Fiscal </p>  
      </td>  
    </tr>  
    <tr>  
      <td height=""><p> <strong>Codigo :</strong>  
         <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"> </p>  
           <p> <strong>Valor :</strong>  
         <input name="nf_valornfField" type="text" id="nf_valornfField" size="" value="<%=(nf_valornf==null)?"":nf_valornf%>">  
           <p> <strong>Taxa :</strong>  
         <input name="nf_taxaimpostonfField" type="text" id="nf_taxaimpostonfField" size="" value="<%=(nf_taxaimpostonf==null)?"":nf_taxaimpostonf%>">  
            <p> <strong>Valor Imposto:</strong>  
         <input name="nf_valorimpostoField" type="text" id="nf_valorimpostoField" size="" value="<%=(nf_valorimposto==null)?"":nf_valorimposto%>">  
                 
    
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
    <input name="statusField"  disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
       </strong></p>  
    </td>  
   </tr>  
 </table>  
 </form>  
 <script type="text/javascript">
  function enviar(acao){  
        
        if (acao == 'cadastrar'){  
          
           if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.nf_valornfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor';  
       }else if (document.cadastro.nf_taxaimpostonfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo taxa';  
           }else if (document.cadastro.nf_valorimpostoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor do imposto';  
           }else {  
              document.cadastro.action='cadastrar/cadastrar_notafiscal.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_notafiscal.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
           if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.nf_valornfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor';  
       }else if (document.cadastro.nf_taxaimpostonfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo taxa';  
           }else if (document.cadastro.nf_valorimpostoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo valor do imposto';  
           }else {  
              document.cadastro.action='alterar/alterar_notafiscal.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.nf_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_notafiscal.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_notafiscal.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script>
 </body> 
</html>