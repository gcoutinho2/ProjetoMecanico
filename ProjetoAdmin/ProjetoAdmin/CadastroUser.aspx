<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUser.aspx.cs" Inherits="ProjetoAdmin.CadastroUser" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Cadastrar Usuário</title>

	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-social.css" />
	<link rel="stylesheet" type="text/css" href="/css/metisMenu.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-datepicker3.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.responsive.css" />
	<link rel="stylesheet" type="text/css" href="/css/sb-admin-2.css" />
	<link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />


	<style type="text/css">
		#success_message{ display: none;}

	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">

		<!-- Barra de navegação padrão de todas as páginas! -->
		<uc1:NavBar runat="server" ID="NavBar" />

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Cadastro de Login de Acesso</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">

							<!-- Seu código aqui! :) -->

                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    <form action="r" method="post" accept-charset="utf-8" class="form" role="form">
                                        <legend>Dados</legend>

                                        
                                            <div class="form-group">
                                                <input type="text" name="firstname" value="" class="form-control-anocarro" placeholder="Usuário" />
                                            </div>
                                            
                                        
                                        <div class="form-group">
                                            <input type="text" name="email" value="" class="form-control-email" placeholder="E-mail" /> 

                                        </div>
                                        
                                       <div class="form-group">
                                           <input type="password" name="password" value="" class="form-control-anocarro" placeholder="Senha" />

                                       </div> 
                                        <div class="form-group"> 
                                            <input type="password" name="confirm_password" value="" class="form-control-anocarro" placeholder="Confirma Senha" />

                                        </div>


                                        
                                        <br />

                                       <!-- <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit"> 
                                            Criar usuário</button> -->

                                        <button type="button" class="btn btn-default bt-edit" data-toggle="modal" data-target="#myModal">Criar Usuário</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
    


                            

                        </div>
					</div>

               <!-- Modal para dados enviados -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Dados de Acesso</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Usuário criado com sucesso</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                                </div>


                            </div>
                        </div>
                    </div>


				</div>
			</div>
		

		<script type="text/javascript" charset="utf-8" src="/js/jquery-2.2.1.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/bootstrap.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/metisMenu.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/bootstrap-datepicker.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/locales/bootstrap-datepicker.pt-BR.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/dataTables.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/locales/dataTables.pt-BR.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/sb-admin-2.js"></script>
		<script type="text/javascript" charset="utf-8" src="/js/utils.js"></script>
        <script type="text/javascript" charset="utf-8" src="/js/login.js"></script>
    </div>
    </form>
</body>
</html>
