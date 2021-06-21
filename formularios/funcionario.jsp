<%@ page contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/master.css?1" />
  <title>Funcionário</title>
</head>

<%  
String fun_codigo = request.getParameter("fun_codigo");  
String fun_nome = request.getParameter("fun_nome");  
String fun_endereco = request.getParameter("fun_endereco");  
String fun_numero = request.getParameter("fun_numero");
String fun_complemento = request.getParameter("fun_complemento");
String fun_bairro = request.getParameter("fun_bairro");
String fun_cidade = request.getParameter("fun_cidade");
String fun_uf = request.getParameter("fun_uf");  
String fun_cnpjcpf = request.getParameter("fun_cnpjcpf");  
String fun_rgie = request.getParameter("fun_rgie");
String fun_sexo = request.getParameter("fun_sexo"); 
String fun_nascimento = request.getParameter("fun_nascimento");
String fun_telefone = request.getParameter("fun_telefone");
String fun_celular = request.getParameter("fun_celular");
String fun_email = request.getParameter("fun_email");
String fun_salario = request.getParameter("fun_salario");
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
      <td width="" height=""><p align="left" > Funcionário </p>  
      </td>  
    </tr>  
    <tr>  
        <td height=""><p> <strong>Codigo Funcionário :</strong>  
        <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"> </p>  
        <p> <strong>Nome Funcionário:</strong>  
        <input name="fun_nomeField" type="text" id="fun_nomeField" size="" value="<%=(fun_nome==null)?"":fun_nome%>">  
        <p> <strong>Endereco Funcionário :</strong>  
        <input name="fun_enderecoField" type="text" id="fun_enderecoField" size="" value="<%=(fun_endereco==null)?"":fun_endereco%>">  
        <p> <strong>Número Funcionário:</strong>  
        <input name="fun_numeroField" type="text" id="fun_numeroField" size="" value="<%=(fun_numero==null)?"":fun_numero%>">  
        <p> <strong>Complemento Funcionário:</strong>  
        <input name="fun_complementoField" type="text" id="fun_complementoField" size="" value="<%=(fun_complemento==null)?"":fun_complemento%>">  
        <p> <strong>Bairro Funcionário:</strong>  
        <input name="fun_bairroField" type="text" id="fun_bairroField" size="" value="<%=(fun_bairro==null)?"":fun_bairro%>">
        <p> <strong>Cidade Funcionário</strong>  
        <input name="fun_cidadeField" type="text" id="fun_cidadeField" size="" value="<%=(fun_cidade==null)?"":fun_cidade%>">  
        <p> <strong>UF Funcionário</strong>  
        <input name="fun_ufField" type="text" id="fun_ufField" size="" value="<%=(fun_uf==null)?"":fun_uf%>">  
        <p> <strong>CNPJ/CPF</strong>  
        <input name="fun_cnpjcpfField" type="text" id="fun_cnpjcpfField" size="" value="<%=(fun_cnpjcpf==null)?"":fun_cnpjcpf%>">  
        <p> <strong>RG/IE:</strong>  
        <input name="fun_rgieField" type="text" id="fun_rgieField" size="" value="<%=(fun_rgie==null)?"":fun_rgie%>">  
        <p> <strong>Sexo Funcionário:</strong>  
        <input name="fun_sexoField" type="text" id="fun_sexoField" size="" value="<%=(fun_sexo==null)?"":fun_sexo%>">    
        <p> <strong>Data Nascimento Funcionário:</strong>  
        <input name="fun_nascimentoField" type="text" id="fun_nascimentoField" size="" value="<%=(fun_nascimento==null)?"":fun_nascimento%>">  

        <p> <strong>Telefone</strong>  
        <input name="fun_telefoneField" type="text" id="fun_telefoneField" size="" value="<%=(fun_telefone==null)?"":fun_telefone%>">
        <p> <strong>Celular</strong>  
        <input name="fun_celularField" type="text" id="fun_celularField" size="" value="<%=(fun_celular==null)?"":fun_celular%>">  
        <p> <strong>E-mail</strong>  
        <input name="fun_emailField" type="text" id="fun_emailField" size="" value="<%=(fun_email==null)?"":fun_email%>">
        </p>
        <p> <strong>Salário Funcionário:</strong>  
            <input name="fun_salarioField" type="text" id="fun_salarioField" size="" value="<%=(fun_salario==null)?"":fun_salario%>">  
                  
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
          
           if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.fun_nomeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nome';  
           }else if (document.cadastro.fun_enderecoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo endereco';  
           }else if (document.cadastro.fun_numeroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo numero';  

            }else if (document.cadastro.fun_complementoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo complemento';  
            }else if (document.cadastro.fun_bairroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo bairro';  
            }else if (document.cadastro.fun_cidadeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cidade';  
            }else if (document.cadastro.fun_ufField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo uf';
            }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cnpj/cpf';
            }else if (document.cadastro.fun_rgieField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo rg/ie';
            }else if (document.cadastro.fun_sexoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo sexo';
            }else if (document.cadastro.fun_nascimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nascimento';
            }else if (document.cadastro.fun_telefoneField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo telefone';
            }else if (document.cadastro.fun_celularField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo celular';
            }else if (document.cadastro.fun_emailField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo email';
            }else if (document.cadastro.fun_salarioField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo salario';
              
           }else {  
              document.cadastro.action='cadastrar/cadastrar_funcionario.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'consultar'){  
       
           if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else {  
              document.cadastro.action='consultar/consultar_funcionario.jsp';  
              document.cadastro.submit();  
           }  
       
        } else if (acao == 'alterar'){  
       
          if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo codigo';  
           }else if (document.cadastro.fun_nomeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nome';  
           }else if (document.cadastro.fun_enderecoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo endereco';  
           }else if (document.cadastro.fun_numeroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo numero';  

            }else if (document.cadastro.fun_complementoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo complemento';  
            }else if (document.cadastro.fun_bairroField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo bairro';  
            }else if (document.cadastro.fun_cidadeField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cidade';  
            }else if (document.cadastro.fun_ufField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo uf';
            }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo cnpj/cpf';
            }else if (document.cadastro.fun_rgieField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo rg/ie';
            }else if (document.cadastro.fun_sexoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo sexo';
            }else if (document.cadastro.fun_nascimentoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo nascimento';
            }else if (document.cadastro.fun_telefoneField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo telefone';
            }else if (document.cadastro.fun_celularField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo celular';
            }else if (document.cadastro.fun_emailField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo email';
            }else if (document.cadastro.fun_salarioField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo salario';
              
           }else {   
              document.cadastro.action='alterar/alterar_funcionario.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'excluir'){  
       
           if (document.cadastro.fun_codigoField.value == ''){  
              document.cadastro.statusField.value = 'Preencha o campo código';  
           }else {  
              document.cadastro.action='excluir/excluir_funcionario.jsp';  
              document.cadastro.submit();  
           }  
        } else if (acao == 'listar'){  
           document.cadastro.action='listar/listar_funcionario.jsp';  
           document.cadastro.submit();  
        }  
     }  
       
</script> 
 </body> 
</html>