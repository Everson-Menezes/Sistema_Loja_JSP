<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Fornecedor</title>
</head>

<%  
String for_codigo = request.getParameter("for_codigo");  
String for_nome = request.getParameter("for_nome");  
String for_endereco = request.getParameter("for_endereco");  
String for_numero = request.getParameter("for_numero");
String for_bairro = request.getParameter("for_bairro");
String for_cidade = request.getParameter("for_cidade");
String for_uf = request.getParameter("for_uf");  
String for_cnpjcpf = request.getParameter("for_cnpjcpf");  
String for_rgie = request.getParameter("for_rgie");  
String for_telefone = request.getParameter("for_telefone");
String for_fax = request.getParameter("for_fax");
String for_celular = request.getParameter("for_celular");
String for_email = request.getParameter("for_email");
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
      <td width="" height=""><p align="left" > Fornecedor </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Fornecedor :</strong>  
        <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"> </p>  
        <p> <strong>Nome Fornecedor:</strong>  
        <input name="for_nomeField" type="text" id="for_nomeField" size="" value="<%=(for_nome==null)?"":for_nome%>">  
        <p> <strong>Endereco Fornecedor :</strong>  
        <input name="for_enderecoField" type="text" id="for_enderecoField" size="" value="<%=(for_endereco==null)?"":for_endereco%>">  
        <p> <strong>Número Fornecedor:</strong>  
        <input name="for_numeroField" type="text" id="for_numeroField" size="" value="<%=(for_numero==null)?"":for_numero%>">  
        <p> <strong>Bairro Fornecedor:</strong>  
        <input name="for_bairroField" type="text" id="for_bairroField" size="" value="<%=(for_bairro==null)?"":for_bairro%>">
        <p> <strong>Cidade Fornecedor</strong>  
        <input name="for_cidadeField" type="text" id="for_cidadeField" size="" value="<%=(for_cidade==null)?"":for_cidade%>">  
        <p> <strong>UF Fornecedor</strong>  
        <input name="for_ufField" type="text" id="for_ufField" size="" value="<%=(for_uf==null)?"":for_uf%>">  
        <p> <strong>CNPJ/CPF</strong>  
        <input name="for_cnpjcpfField" type="text" id="for_cnpjcpfField" size="" value="<%=(for_cnpjcpf==null)?"":for_cnpjcpf%>">  
        <p> <strong>RG/IE:</strong>  
        <input name="for_rgieField" type="text" id="for_rgieField" size="" value="<%=(for_rgie==null)?"":for_rgie%>">  
        <p> <strong>Telefone</strong>  
        <input name="for_telefoneField" type="text" id="for_telefoneField" size="" value="<%=(for_telefone==null)?"":for_telefone%>">
        <p> <strong>Fax</strong>  
        <input name="for_faxField" type="text" id="for_faxField" size="" value="<%=(for_fax==null)?"":for_fax%>">  
        <p> <strong>Celular</strong>  
        <input name="for_celularField" type="text" id="for_celularField" size="" value="<%=(for_celular==null)?"":for_celular%>">  
        <p> <strong>E-mail</strong>  
        <input name="for_emailField" type="text" id="for_emailField" size="" value="<%=(for_email==null)?"":for_email%>">
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
          
           if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.for_nomeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nome';  
           }else if (document.cadastro.for_enderecoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo endereco';  
           }else if (document.cadastro.for_numeroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo numero';  
            }else if (document.cadastro.for_bairroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo bairro';  
            }else if (document.cadastro.for_cidadeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cidade';  
            }else if (document.cadastro.for_ufField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo uf';
            }else if (document.cadastro.for_cnpjcpfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cnpj/cpf';
            }else if (document.cadastro.for_rgieField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo rg/ie';
            }else if (document.cadastro.for_telefoneField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo telefone';
            }else if (document.cadastro.for_faxField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo fax';
            }else if (document.cadastro.for_celularField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo celular';
            }else if (document.cadastro.for_emailField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo email';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_fornecedor.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_fornecedor.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.for_nomeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nome';  
           }else if (document.cadastro.for_enderecoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo endereco';  
           }else if (document.cadastro.for_numeroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo numero';  
            }else if (document.cadastro.for_bairroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo bairro';  
            }else if (document.cadastro.for_cidadeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cidade';  
            }else if (document.cadastro.for_ufField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo uf';
            }else if (document.cadastro.for_cnpjcpfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cnpj/cpf';
            }else if (document.cadastro.for_rgieField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo rg/ie';
            }else if (document.cadastro.for_telefoneField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo telefone';
            }else if (document.cadastro.for_faxField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo fax';
            }else if (document.cadastro.for_celularField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo celular';
            }else if (document.cadastro.for_emailField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo email';
              
           }else {   
              document.cadastro.action='alterar/alterar_fornecedor.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.for_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_fornecedor.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_fornecedor.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>