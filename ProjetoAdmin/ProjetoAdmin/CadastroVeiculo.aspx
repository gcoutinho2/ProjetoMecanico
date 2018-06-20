<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroVeiculo.aspx.cs" Inherits="ProjetoAdmin.CadastroVeiculo" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Cadastrar Veículo</title>

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
					<h1 class="page-header">Cadastrar Informações do Veículo</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">

							<!-- Seu código aqui! :) -->
                            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                          <div class="form-group">
                                            <label>Marca</label>
                                            <select class="form-control">
                                                <option>Fiat</option>
                                                <option>Honda</option>
                                                <option>Chevrolet</option>
                                                <option>Toyota</option>
                                                <option>Volskwagen</option>
                                            </select>
                                        </div>

                                         <div class="form-group">
                                            <label>Modelo</label>
                                            <select class="form-control">
                                               
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Cor</label>
                                            <input class="form-control-anocarro" placeholder="Digite a cor do veículo"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Ano</label>
                                            <input class="form-control-anocarro" placeholder="Digite o ano do veículo"/>
                                        </div>
                                         <div class="form-group">
                                            <label>Qual a quilometragem do veículo?</label>
                                            <input class="form-control-anocarro" placeholder="Digite o KM do veículo"/>
                                        </div>
                                         <div class="form-group">
                                            <label>Última revisão?</label>
                                            <input class="form-control-anocarro" placeholder="Data da última revisão"/>
                                        </div>
                                        <div class="form-group">
                                            <label><p>Procedimentos realizados na última revisão:</p></label>
                                            <p></p>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">Óleo
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">Água Radeador
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">Filtro Combustível
                                            </label>
                                             <label class="checkbox-inline">
                                                <input type="checkbox">Filtro Ar
                                            </label>
                                            <p></p>
                                             <label class="checkbox-inline">
                                                <input type="checkbox">Filtro Ar Condicionado
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">Velas
                                            </label>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Luzes
                                            </label>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Escovas
                                            </label>
                                            <p></p>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Correias
                                            </label>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Travões
                                            </label>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Pneus
                                            </label>
                                              <label class="checkbox-inline">
                                                <input type="checkbox">Equipamentos Segurança
                                            </label>
                                            <p></p>
                                             <label class="checkbox-inline">
                                                <input type="checkbox">Peças Motor
                                            </label>
                                             <label class="checkbox-inline">
                                                <input type="checkbox">Alinhamento
                                            </label>
                                             <label class="checkbox-inline">
                                                <input type="checkbox">Parte Elétrica
                                            </label>
                                        </div>


                                      <br />
                                     <!-- <button type="submit" class="btn btn-default bt-edit">Cadastrar</button> -->
                                        <button type="button" class="btn btn-default bt-edit" data-toggle="modal" data-target="#myModal">Cadastrar</button>
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
                                    <h4 class="modal-title">Dados do Veículo</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Veículo cadastrado com sucesso</p>
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
