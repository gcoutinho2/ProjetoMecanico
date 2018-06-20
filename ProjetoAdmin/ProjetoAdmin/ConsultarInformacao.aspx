<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarInformacao.aspx.cs" Inherits="ProjetoAdmin.ConsultarInformacao" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Consultar Informações</title>

	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-social.css" />
	<link rel="stylesheet" type="text/css" href="/css/metisMenu.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/bootstrap-datepicker3.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/css/dataTables.responsive.css" />
	<link rel="stylesheet" type="text/css" href="/css/sb-admin-2.css" />
	<link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />

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
					<h1 class="page-header">Consultar Informações do Seu Veículo</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">

							<!-- Seu código aqui! :) -->

							

                            
        
            <div class="row">
                <div class="col-lg-12">
                   
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Óleo do motor
                        </div>
                        <div class="panel-body">
                            <p>Deve ser trocado, conforme nossos dado será trocada em dd/MM/yyyy estipulada na última troca de óleo.</p>
                        </div>
                        <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Filtro de ar
                        </div>
                        <div class="panel-body">
                            <p>Verifique se há sujeira, caso haja, retirá-la para não entrar no motor do carro.</p>
                            <br />
                        </div>
                       <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Pneus
                        </div>
                        <div class="panel-body">
                            <p>Através dos nossos dados a sua última troca de pneus foi há bastante tempo. Já realizou a calibragem dos pneus?</p>
                           
                        </div>
                        <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Faróis
                        </div>
                        <div class="panel-body">
                            <p>Verifique se o farol alto e o farol baixo, bem como as luzes de freio, as lanternas, as setas e o pisca-alerta estão funcionando corretamente.</p>
                            <br />
                        </div>
                        <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Freios
                        </div>
                        <div class="panel-body">
                            <p>Preste atenção se o freio emite algum ruído quando ele é acionado, ou se sua aderência não está eficiente. Se você perceber algum problema, nos procure que indicaremos um mecânico próximo.</p>
                        </div>
                        <div class="panel-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Verifique os Itens de Segurança
                        </div>
                        <div class="panel-body">
                            <p>Chave de roda para a troca de pneus;</p>
                            <p>Macaco para a troca de pneus;</p>
                            <p>Triângulo de sinalização;</p>
                            <p>Extintor de incêndio.</p>
                        </div>
                        <div class="panel-footer">
                          
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
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
