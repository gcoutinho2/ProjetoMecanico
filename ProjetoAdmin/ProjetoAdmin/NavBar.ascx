<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavBar.ascx.cs" Inherits="ProjetoAdmin.NavBar" %>

<nav class="navbar navbar-default navbar-static-top nav-shadow" style="background-color:#282525";" role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Alternar Navegação</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="Default.aspx"><img alt="Logo" src="/images/logo-teste-i4.png" /></a>
	</div>

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" style ="color: #eeb812; text-decoration: none;">
				<i class="fa fa-user fa-fw"></i>Nome do usuário <i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="Profile.aspx"><i class="fa fa-user fa-fw"></i>Meu Perfil</a>
				</li>
				<li class="divider"></li>
				<li><a href="Logout.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
				</li>
			</ul>
		</li>
	</ul>

	<div class="navbar-default sidebar" role="navigation">
		<div id="navbar-collapse" class="sidebar-nav navbar-collapse collapse">
			<ul class="nav" id="side-menu">
				
				
				<li>
					<a href="#"><i class="fa fa-list-alt fa-fw"></i>Cadastro<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="CadastroCliente.aspx"><i class="fa fa-plus fa-fw"></i>Atualizar Cadastro</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#"><i class="fa fa-automobile fa-fw"></i>Veículo<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="CadastroVeiculo.aspx"><i class="fa fa-plus fa-fw"></i>Cadastro</a>
						</li>
						<li>
							<a href="ConsultarInformacao.aspx"><i class="fa fa-search-plus fa-fw"></i>Consultar Informações</a>
						</li>
						<li>
							<a href="InformarErro.aspx"><i class="fa fa-warning fa-fw"></i>Informar Erro</a>
						</li>
					</ul>
				</li>
				
				<li>
					<a href="#"><i class="fa fa-user fa-fw"></i>Usuários<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li>
							<a href="CadastroUser.aspx"><i class="fa fa-plus fa-fw"></i>Criar</a>
						</li>
						<li>
							<a href="GerenciarUser.aspx"><i class="fa fa-tasks fa-fw"></i>Gerenciar</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
