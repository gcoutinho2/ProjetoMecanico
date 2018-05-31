<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciarUser.aspx.cs" Inherits="ProjetoAdmin.GerenciarUser" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>Gerenciamento de Usuários</title>

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
					<h1 class="page-header">Gerenciar Login de Acesso</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-body">

							<!-- Seu código aqui! :) -->

							

                            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Usuários
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th>User</th>
                                        <th>Tipo</th>
                                        <th>Nome</th>
                                     </tr>
                                </thead>
                                <tbody>
                                        <tr class="odd gradeX">
                                        <td class="center">
                                           <button type="button" class="btn btn-default-gerenciar-user" data-toggle="modal" data-target="#myModal">1000<//button>
                                        </td>
                                        <td>Administrador</td>
                                        <td>Admin</td>
                                        <td>adm</td>
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td class="center">
                                             <button type="button" class="btn btn-default-gerenciar-user" data-toggle="modal" data-target="#myModal">1001<//button>
                                        </td>
                                        <td>Colaborador</td>
                                        <td>Contribuidor</td>
                                        <td>ctn</td>
                                      </tr>
                                    <tr class="odd gradeA">
                                        <td class="center">
                                             <button type="button" class="btn btn-default-gerenciar-user" data-toggle="modal" data-target="#myModal">1002<//button>
                                        </td>
                                        <td>User</td>
                                        <td>Padrão</td>
                                        <td>user</td>
                                     </tr>
                                    </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
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
                                <h4 class="modal-title">Dados de Login</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Ativo</label>
                                    <select class="form-control">
                                        <option>--</option>
                                        <option>Sim</option>
                                        <option>Não</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Tipo</label>
                                    <select class="form-control">
                                        <option>--</option>
                                        <option>Administrador</option>
                                        <option>Padrão</option>
                                        <option>Contribuidor</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Senha</label>
                                    <input type="password" name="password" value="" class="form-control-anocarro" placeholder="Senha" />
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Salvar</button>
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
