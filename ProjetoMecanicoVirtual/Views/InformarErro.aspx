<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformarErro.aspx.cs" Inherits="ProjetoAdmin.InformarErro" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Fale Conosco</title>

	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-social.css" />
	<link rel="stylesheet" type="text/css" href="/css/metisMenu.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-datepicker3.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.responsive.css" />
	<link rel="stylesheet" type="text/css" href="/css/sb-admin-2.css" />
	<link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style type="text/css">
		/* Seus estilos aqui! :) */
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
					<h1 class="page-header">Informe seu problema</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">

							<!-- Seu código aqui! :) -->

							
                            <div class="form-group">
                                <label>Digite o assunto do problema</label>
                                <input class="form-control" placeholder="Digite o Assunto">
                            </div>
                             <div class="form-group">
                                 <label>Descreva o problema</label>
                                 <textarea class="form-control" placeholder="Descreva o problema" rows="3"></textarea>
                             </div>

                            
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Enviar Informações</button>

                                <!-- Modal para dados enviados -->
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Dados Enviados</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p>Obrigado por compartilhar conosco o seu problema, o mais breve possível entraremos em contato.</p>
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

    </div>
    </form>
</body>
</html>
