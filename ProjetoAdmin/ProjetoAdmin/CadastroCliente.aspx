<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCliente.aspx.cs" Inherits="ProjetoAdmin.CadastroCliente" %>

<%@ Register Src="~/NavBar.ascx" TagPrefix="uc1" TagName="NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Dados do Cliente</title>

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
                        <h1 class="page-header">Atualização de Cadastro</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <!-- Começo do código das tabelas -->

                                <div class="row">
                                    <div class="col-xs-12 form-group">
                                        Parabéns! Você já criou o seu pré cadastro, vamos atualizar mais alguns dados 
                                    </div>
                                </div>

                                <!-- Criando cada tabelinha -->

                                <!-- Nome, sobrenome-->
                                <div class="row">
                                    <div class="form-group col-xs-6">
                                        <label class="text-base" for="FirstName">Nome</label>
                                        <input type="text" id="FirstName" class="form-control" name="FirstName" aria-describedby="SignupPageTitle" />
                                    </div>
                                    <div class="form-group col-xs-6">
                                        <label class="text-base" for="LastName">Sobrenome</label>
                                        <input type="text" id="LastName" class="form-control" name="LastName" />
                                    </div>
                                </div>

                                <div class="row">
                                    <!-- RG -->

                                    <div class="col-xs-6 form-group">
                                        <label class="text-base" for="PhoneNumber">Número do RG</label>
                                        <input class="form-control" />
                                        <!-- Criar aqui a regra de erro -->
                                    </div>

                                    <!-- CPF -->

                                    <div class="col-xs-6 form-group">
                                        <label class="text-base" for="PhoneNumber">Número do CPF</label>
                                        <input class="form-control" />
                                        <!-- Criar aqui a regra de erro -->
                                    </div>
                                </div>


                                <label class="fieldsetTitle"><strong>Endereço residencial</strong></label> 

                                <!-- CEP -->
                                <div class="row">
                                    <div class="from-group col-xs-6">
                                        <label class="text-base" for="FistName">CEP</label>
                                        <label name="CepInvalido" id="CepInvalido" class="feedback" style="display: none;">O CEP é inválido</label>
                                        <input name="CepValido" type="text" id="cepValido" class="form-control">
                                        Não sabe o CEP? <a href="http://www.buscacep.correios.com.br/sistemas/buscacep/" target="_blank" class="aConsultaCEP">Pesquisar</a>
                                    </div>
                               </div>

                                <!-- ENDEREÇO E NÚMERO -->
                                <div class="row">
                                    <div class="from-group col-xs-6">
                                        <label class="text-base" for="Endereco">Endereço</label>
                                        <label name="EnderecoInvalido" id="EnderecoInvalido" class="feedback" style="display: none;">Verifique os campos digitados</label>
                                        <input name="TextoEndereco" type="text" id="TextoEndereco" class="form-control">
                                    </div>
                                    <div class="row">
                                    <div class="from-group col-xs-3">
                                        <label class="text-base" for="Numero">Número</label>
                                        <label class="text-base" id="NumeroInvalido" style="display: none;">O campo Número é obrigatório</label>
                                        <input name="NumeroEndResidencial" type="text" id="NumeroEndResidencial" class="form-control">
                                    </div>
                               </div>

                                <!-- COMPLEMENTO -->
                                    <div class="from-group col-xs-6">
                                        <label class="text-base" for="Complemento">Complemento</label>
                                        <input name="TextoComplemento" type="text" id="TextoComplemento" class="form-control" />
                                    </div>
                               </div>

                                <!-- CIDADE -->
                                <div class="row">
                                    <div class="from-group col-xs-6">
                                        <label class="text-base" for="Bairro">Bairro</label>
                                        <label class="text-base" style="display: none;">O campo bairro é obrigatório</label>
                                        <input name="TextoBairroEndResidencial" type="text" id="TextoBairroEndResidencial" class="form-control">
                                    </div>
                                    <div class="from-group col-xs-6">
                                        <label class="text-base" for="Cidade">Cidade</label>
                                        <label class="text-base" style="display: none;">Os campos Cidade</label>
                                        <input name="TextoCidadeResidencial" type="text" id="TextoCidadeResidencial" class="form-control">
                                        
                                    </div>
                                </div>

                                <!-- ESTADO e País/Região -->
                                <div class="row">
                                    <div class="form-group col-xs-6">
                                        <label class="text-base" for="Estado">Estado</label>
                                        <select name="ctl00$ContentPlaceHolder1$selEstadoResidencial" id="ctl00_ContentPlaceHolder1_selEstadoResidencial" class="form-control">
	                                        <option value=""></option>
	                                        <option value="AC">AC</option>
	                                        <option value="AL">AL</option>
	                                        <option value="AM">AM</option>
	                                        <option value="AP">AP</option>
	                                        <option value="BA">BA</option>
	                                        <option value="CE">CE</option>
	                                        <option value="DF">DF</option>
	                                        <option value="ES">ES</option>
	                                        <option value="GO">GO</option>
	                                        <option value="MA">MA</option>
	                                        <option value="MG">MG</option>
	                                        <option value="MS">MS</option>
	                                        <option value="MT">MT</option>
	                                        <option value="PA">PA</option>
	                                        <option value="PB">PB</option>
	                                        <option value="PE">PE</option>
	                                        <option value="PI">PI</option>
	                                        <option value="PR">PR</option>
	                                        <option value="RJ">RJ</option>
	                                        <option value="RN">RN</option>
	                                        <option value="RO">RO</option>
	                                        <option value="RR">RR</option>
	                                        <option value="RS">RS</option>
	                                        <option value="SC">SC</option>  
	                                        <option value="SE">SE</option>
	                                        <option value="SP">SP</option>
	                                        <option value="TO">TO</option>
                                        </select>
                                    </div>
                                     <div class="form-group col-xs-6">
                                        <label class="text-base" for="Country">País/região</label>
                                        <select id="Country" class="form-control" name="Country">
                                            <option value="AF">Afeganistão</option>
                                            <option value="ZA">África do Sul</option>
                                            <option value="AL">Albânia</option>
                                            <option value="DE">Alemanha</option>
                                            <option value="AD">Andorra</option>
                                            <option value="AO">Angola</option>
                                            <option value="AI">Anguila</option>
                                            <option value="AQ">Antártida</option>
                                            <option value="AG">Antígua e Barbuda</option>
                                            <option value="SA">Arábia Saudita</option>
                                            <option value="DZ">Argélia</option>
                                            <option value="AR">Argentina</option>
                                            <option value="AM">Armênia</option>
                                            <option value="AW">Aruba</option>
                                            <option value="AU">Austrália</option>
                                            <option value="AT">Áustria</option>
                                            <option value="PS">Autoridade Palestina</option>
                                            <option value="AZ">Azerbaijão</option>
                                            <option value="BS">Bahamas</option>
                                            <option value="BH">Bahrein</option>
                                            <option value="BD">Bangladesh</option>
                                            <option value="BB">Barbados</option>
                                            <option value="BY">Belarus</option>
                                            <option value="BE">Bélgica</option>
                                            <option value="BZ">Belize</option>
                                            <option value="BJ">Benin</option>
                                            <option value="BM">Bermuda</option>
                                            <option value="BO">Bolívia</option>
                                            <option value="BQ">Bonaire</option>
                                            <option value="AN">Bonaire, Curaçao, Saba, Santo Eustáquio e Sint Maarten</option>
                                            <option value="BA">Bósnia e Herzegovina</option>
                                            <option value="BW">Botsuana</option>
                                            <option value="BR">Brasil</option>
                                            <option value="BN">Brunei</option>
                                            <option value="BG">Bulgária</option>
                                            <option value="BF">Burquina Faso</option>
                                            <option value="BI">Burundi</option>
                                            <option value="BT">Butão</option>
                                            <option value="CV">Cabo Verde</option>
                                            <option value="CM">Camarões</option>
                                            <option value="KH">Camboja</option>
                                            <option value="CA">Canadá</option>
                                            <option value="QA">Catar</option>
                                            <option value="KZ">Cazaquistão</option>
                                            <option value="TD">Chade</option>
                                            <option value="CL">Chile</option>
                                            <option value="CN">China</option>
                                            <option value="CY">Chipre</option>
                                            <option value="SG">Cingapura</option>
                                            <option value="CO">Colômbia</option>
                                            <option value="CG">Congo</option>
                                            <option value="CD">Congo (RDC)</option>
                                            <option value="KR">Coreia</option>
                                            <option value="KP">Coreia do Norte</option>
                                            <option value="CR">Costa Rica</option>
                                            <option value="HR">Croácia</option>
                                            <option value="CU">Cuba</option>
                                            <option value="CW">Curaçao</option>
                                            <option value="DK">Dinamarca</option>
                                            <option value="DJ">Djibuti</option>
                                            <option value="DM">Dominica</option>
                                            <option value="EG">Egito</option>
                                            <option value="SV">El Salvador</option>
                                            <option value="AE">Emirados Árabes Unidos</option>
                                            <option value="EC">Equador</option>
                                            <option value="ER">Eritreia</option>
                                            <option value="SK">Eslováquia</option>
                                            <option value="SI">Eslovênia</option>
                                            <option value="ES">Espanha</option>
                                            <option value="US">Estados Unidos</option>
                                            <option value="EE">Estônia</option>
                                            <option value="ET">Etiópia</option>
                                            <option value="PH">Filipinas</option>
                                            <option value="FI">Finlândia</option>
                                            <option value="FR">França</option>
                                            <option value="GA">Gabão</option>
                                            <option value="GM">Gâmbia</option>
                                            <option value="GH">Gana</option>
                                            <option value="GE">Geórgia</option>
                                            <option value="GI">Gibraltar</option>
                                            <option value="GD">Granada</option>
                                            <option value="GR">Grécia</option>
                                            <option value="GL">Groenlândia</option>
                                            <option value="GP">Guadalupe</option>
                                            <option value="GU">Guam</option>
                                            <option value="GT">Guatemala</option>
                                            <option value="GG">Guernsey</option>
                                            <option value="GY">Guiana</option>
                                            <option value="GF">Guiana Francesa</option>
                                            <option value="GN">Guiné</option>
                                            <option value="GQ">Guiné Equatorial</option>
                                            <option value="GW">Guiné-Bissau</option>
                                            <option value="HT">Haiti</option>
                                            <option value="HN">Honduras</option>
                                            <option value="HU">Hungria</option>
                                            <option value="YE">Iêmen</option>
                                            <option value="AC">Ilha Ascension</option>
                                            <option value="BV">Ilha Bouvet</option>
                                            <option value="CX">Ilha Christmas</option>
                                            <option value="IM">Ilha de Man</option>
                                            <option value="NF">Ilha Norfolk</option>
                                            <option value="AX">Ilhas Aland</option>
                                            <option value="KY">Ilhas Cayman</option>
                                            <option value="CC">Ilhas Cocos (Keeling)</option>
                                            <option value="KM">Ilhas Comores</option>
                                            <option value="CK">Ilhas Cook</option>
                                            <option value="FO">Ilhas Faroés</option>
                                            <option value="FJ">Ilhas Fiji</option>
                                            <option value="GS">Ilhas Geórgia do Sul e Sandwich do Sul</option>
                                            <option value="HM">Ilhas Heard e McDonald</option>
                                            <option value="FK">Ilhas Malvinas</option>
                                            <option value="MP">Ilhas Marianas do Norte</option>
                                            <option value="MH">Ilhas Marshall</option>
                                            <option value="PN">Ilhas Pitcairn</option>
                                            <option value="SB">Ilhas Salomão</option>
                                            <option value="TC">Ilhas Turcos e Caicos</option>
                                            <option value="VI">Ilhas Virgens Americanas</option>
                                            <option value="VG">Ilhas Virgens Britânicas</option>
                                            <option value="WF">Ilhas Wallis e Futuna</option>
                                            <option value="IN">Índia</option>
                                            <option value="ID">Indonésia</option>
                                            <option value="IR">Irã</option>
                                            <option value="IQ">Iraque</option>
                                            <option value="IE">Irlanda</option>
                                            <option value="IS">Islândia</option>
                                            <option value="IL">Israel</option>
                                            <option value="IT">Itália</option>
                                            <option value="JM">Jamaica</option>
                                            <option value="SJ">Jan Mayen</option>
                                            <option value="JP">Japão</option>
                                            <option value="JE">Jersey</option>
                                            <option value="JO">Jordânia</option>
                                            <option value="KI">Kiribati</option>
                                            <option value="XK">Kosovo</option>
                                            <option value="KW">Kuwait</option>
                                            <option value="LA">Laos</option>
                                            <option value="LS">Lesoto</option>
                                            <option value="LV">Letônia</option>
                                            <option value="LB">Líbano</option>
                                            <option value="LR">Libéria</option>
                                            <option value="LY">Líbia</option>
                                            <option value="LI">Liechtenstein</option>
                                            <option value="LT">Lituânia</option>
                                            <option value="LU">Luxemburgo</option>
                                            <option value="MK">Macedônia, Antiga República Iugoslava da</option>
                                            <option value="MG">Madagascar</option>
                                            <option value="MY">Malásia</option>
                                            <option value="MW">Malaui</option>
                                            <option value="MV">Maldivas</option>
                                            <option value="ML">Mali</option>
                                            <option value="MT">Malta</option>
                                            <option value="MA">Marrocos</option>
                                            <option value="MQ">Martinica</option>
                                            <option value="MU">Maurício</option>
                                            <option value="MR">Mauritânia</option>
                                            <option value="YT">Mayotte</option>
                                            <option value="MX">México</option>
                                            <option value="FM">Micronésia</option>
                                            <option value="MZ">Moçambique</option>
                                            <option value="MD">Moldova</option>
                                            <option value="MC">Mônaco</option>
                                            <option value="MN">Mongólia</option>
                                            <option value="ME">Montenegro</option>
                                            <option value="MS">Montserrat</option>
                                            <option value="MM">Myanmar</option>
                                            <option value="NA">Namíbia</option>
                                            <option value="NR">Nauru</option>
                                            <option value="NP">Nepal</option>
                                            <option value="NI">Nicarágua</option>
                                            <option value="NE">Níger</option>
                                            <option value="NG">Nigéria</option>
                                            <option value="NU">Niue</option>
                                            <option value="NO">Noruega</option>
                                            <option value="NC">Nova Caledônia</option>
                                            <option value="NZ">Nova Zelândia</option>
                                            <option value="OM">Omã</option>
                                            <option value="NL">Países Baixos</option>
                                            <option value="PW">Palau</option>
                                            <option value="PA">Panamá</option>
                                            <option value="PG">Papua-Nova Guiné</option>
                                            <option value="PK">Paquistão</option>
                                            <option value="PY">Paraguai</option>
                                            <option value="PE">Peru</option>
                                            <option value="PF">Polinésia Francesa</option>
                                            <option value="PL">Polônia</option>
                                            <option value="PR">Porto Rico</option>
                                            <option value="PT">Portugal</option>
                                            <option value="KE">Quênia</option>
                                            <option value="KG">Quirguistão</option>
                                            <option value="HK">RAE de Hong Kong</option>
                                            <option value="MO">RAE de Macau</option>
                                            <option value="UK">Reino Unido</option>
                                            <option value="CF">República Centro-Africana</option>
                                            <option value="CI">República de Côte d'Ivoire</option>
                                            <option value="DO">República Dominicana</option>
                                            <option value="CZ">República Tcheca</option>
                                            <option value="RE">Reunião</option>
                                            <option value="RO">Romênia</option>
                                            <option value="RW">Ruanda</option>
                                            <option value="RU">Rússia</option>
                                            <option value="XS">Saba</option>
                                            <option value="WS">Samoa</option>
                                            <option value="AS">Samoa Americana</option>
                                            <option value="SH">Santa Helena, Ascensão e Tristão da Cunha</option>
                                            <option value="LC">Santa Lúcia</option>
                                            <option value="VA">Santa Sé (Cidade do Vaticano)</option>
                                            <option value="XE">Santo Eustáquio</option>
                                            <option value="BL">São Bartolomeu</option>
                                            <option value="KN">São Cristóvão e Névis</option>
                                            <option value="SM">São Marinho</option>
                                            <option value="PM">São Pedro e Miquelon</option>
                                            <option value="ST">São Tomé e Príncipe</option>
                                            <option value="VC">São Vicente e Granadinas</option>
                                            <option value="SC">Seicheles</option>
                                            <option value="SN">Senegal</option>
                                            <option value="SL">Serra Leoa</option>
                                            <option value="RS">Sérvia</option>
                                            <option value="YU">Sérvia, Montenegro</option>
                                            <option value="SX">Sint Maarten</option>
                                            <option value="SY">Síria</option>
                                            <option value="SO">Somália</option>
                                            <option value="LK">Sri Lanka</option>
                                            <option value="MF">St. Martin</option>
                                            <option value="SZ">Suazilândia</option>
                                            <option value="SD">Sudão</option>
                                            <option value="SE">Suécia</option>
                                            <option value="CH">Suíça</option>
                                            <option value="SR">Suriname</option>
                                            <option value="TJ">Tadjiquistão</option>
                                            <option value="TH">Tailândia</option>
                                            <option value="TW">Taiwan</option>
                                            <option value="TZ">Tanzânia</option>
                                            <option value="TF">Terras Austrais e Antárticas Francesas</option>
                                            <option value="IO">Território Britânico do Oceano Índico</option>
                                            <option value="UM">Territórios Insulares dos Estados Unidos</option>
                                            <option value="TP">Timor Leste</option>
                                            <option value="TL">Timor-Leste</option>
                                            <option value="TG">Togo</option>
                                            <option value="TK">Tokelau</option>
                                            <option value="TO">Tonga</option>
                                            <option value="TT">Trinidad e Tobago</option>
                                            <option value="TA">Tristão da Cunha</option>
                                            <option value="TN">Tunísia</option>
                                            <option value="TM">Turcomenistão</option>
                                            <option value="TR">Turquia</option>
                                            <option value="TV">Tuvalu</option>
                                            <option value="UA">Ucrânia</option>
                                            <option value="UG">Uganda</option>
                                            <option value="UY">Uruguai</option>
                                            <option value="UZ">Uzbequistão</option>
                                            <option value="VU">Vanuatu</option>
                                            <option value="VE">Venezuela</option>
                                            <option value="VN">Vietnã</option>
                                            <option value="ZM">Zâmbia</option>
                                            <option value="ZW">Zimbábue</option>
                                        </select>
                                    </div>
                                </div>

                                <!--País/Região-->
                                <div class="row">
                                   
                                </div>

                                <!--Data nascimento-->
                                <div class="row">
                                    <div class="from-group col-xs-12">
                                        <label class="text-base label-margin" for="BirthDay">Data de nascimento</label>
                                    </div>
                                    <div class="col-xs-2 form-group" id="BirthDayContainer">
                                        <select id="BirthDay" name="BirthDay" class="datepart0 form-control" aria-labelledby="BirthDateLabel" data-bind="value: birthdateParts[0], hasFocus: birthdate.focused, tooltip: { target: '.datepart2' }">
                                            <option selected="selected" value="">Dia</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-2 form-group" id="BirthMonthContainer">
                                        <select id="BirthMonth" name="BirthMonth" class="datepart1 form-control" aria-labelledby="BirthDateLabel" data-bind="value: birthdateParts[1], tooltip: { target: '.datepart2' }">
                                            <option selected="selected" value="">Mês</option>
                                            <option value="1">janeiro</option>
                                            <option value="2">fevereiro</option>
                                            <option value="3">março</option>
                                            <option value="4">abril</option>
                                            <option value="5">maio</option>
                                            <option value="6">junho</option>
                                            <option value="7">julho</option>
                                            <option value="8">agosto</option>
                                            <option value="9">setembro</option>
                                            <option value="10">outubro</option>
                                            <option value="11">novembro</option>
                                            <option value="12">dezembro</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-2 form-group" id="BirthYearContainer">
                                        <select id="BirthYear" name="BirthYear" class="datepart2 form-control" aria-labelledby="BirthDateLabel" data-bind="value: birthdateParts[2], tooltip: {}" data-toggle="tooltip" data-original-title="Sua data de nascimento nos ajuda a fornecer itens como configurações apropriadas para a idade. Não vamos exibi-lo sem a sua permissão.">
                                            <option selected="selected" value="">Ano</option>
                                            <option value="2017">2017</option>
                                            <option value="2016">2016</option>
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                            <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                            <option value="2003">2003</option>
                                            <option value="2002">2002</option>
                                            <option value="2001">2001</option>
                                            <option value="2000">2000</option>
                                            <option value="1999">1999</option>
                                            <option value="1998">1998</option>
                                            <option value="1997">1997</option>
                                            <option value="1996">1996</option>
                                            <option value="1995">1995</option>
                                            <option value="1994">1994</option>
                                            <option value="1993">1993</option>
                                            <option value="1992">1992</option>
                                            <option value="1991">1991</option>
                                            <option value="1990">1990</option>
                                            <option value="1989">1989</option>
                                            <option value="1988">1988</option>
                                            <option value="1987">1987</option>
                                            <option value="1986">1986</option>
                                            <option value="1985">1985</option>
                                            <option value="1984">1984</option>
                                            <option value="1983">1983</option>
                                            <option value="1982">1982</option>
                                            <option value="1981">1981</option>
                                            <option value="1980">1980</option>
                                            <option value="1979">1979</option>
                                            <option value="1978">1978</option>
                                            <option value="1977">1977</option>
                                            <option value="1976">1976</option>
                                            <option value="1975">1975</option>
                                            <option value="1974">1974</option>
                                            <option value="1973">1973</option>
                                            <option value="1972">1972</option>
                                            <option value="1971">1971</option>
                                            <option value="1970">1970</option>
                                            <option value="1969">1969</option>
                                            <option value="1968">1968</option>
                                            <option value="1967">1967</option>
                                            <option value="1966">1966</option>
                                            <option value="1965">1965</option>
                                            <option value="1964">1964</option>
                                            <option value="1963">1963</option>
                                            <option value="1962">1962</option>
                                            <option value="1961">1961</option>
                                            <option value="1960">1960</option>
                                            <option value="1959">1959</option>
                                            <option value="1958">1958</option>
                                            <option value="1957">1957</option>
                                            <option value="1956">1956</option>
                                            <option value="1955">1955</option>
                                            <option value="1954">1954</option>
                                            <option value="1953">1953</option>
                                            <option value="1952">1952</option>
                                            <option value="1951">1951</option>
                                            <option value="1950">1950</option>
                                            <option value="1949">1949</option>
                                            <option value="1948">1948</option>
                                            <option value="1947">1947</option>
                                            <option value="1946">1946</option>
                                            <option value="1945">1945</option>
                                            <option value="1944">1944</option>
                                            <option value="1943">1943</option>
                                            <option value="1942">1942</option>
                                            <option value="1941">1941</option>
                                            <option value="1940">1940</option>
                                            <option value="1939">1939</option>
                                            <option value="1938">1938</option>
                                            <option value="1937">1937</option>
                                            <option value="1936">1936</option>
                                            <option value="1935">1935</option>
                                            <option value="1934">1934</option>
                                            <option value="1933">1933</option>
                                            <option value="1932">1932</option>
                                            <option value="1931">1931</option>
                                            <option value="1930">1930</option>
                                            <option value="1929">1929</option>
                                            <option value="1928">1928</option>
                                            <option value="1927">1927</option>
                                            <option value="1926">1926</option>
                                            <option value="1925">1925</option>
                                            <option value="1924">1924</option>
                                            <option value="1923">1923</option>
                                            <option value="1922">1922</option>
                                            <option value="1921">1921</option>
                                            <option value="1920">1920</option>
                                            <option value="1919">1919</option>
                                            <option value="1918">1918</option>
                                            <option value="1917">1917</option>
                                            <option value="1916">1916</option>
                                            <option value="1915">1915</option>
                                            <option value="1914">1914</option>
                                            <option value="1913">1913</option>
                                            <option value="1912">1912</option>
                                            <option value="1911">1911</option>
                                            <option value="1910">1910</option>
                                            <option value="1909">1909</option>
                                            <option value="1908">1908</option>
                                            <option value="1907">1907</option>
                                            <option value="1906">1906</option>
                                            <option value="1905">1905</option>
                                        </select>
                                    </div>

                                    <div class="alert alert-error col-xs-18" data-bind="errorMessage: birthdate, visible: showError(birthdate)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;">Esta informação é necessária.</div>
                                </div>

                                <!--Definir sexo-->
                                <div class="row">
                                    <div class="col-xs-4 form-group">
                                        <label class="text-base" for="Gender">Sexo</label>
                                        <select id="Gender" class="form-control" name="Gender" data-bind="value: gender, hasFocus: gender.focused, css: { 'has-error': showError(gender) }">
                                            <option selected="selected" value="">Selecione...</option>
                                            <option value="m">Masculino</option>
                                            <option value="f">Feminino</option>
                                            <option value="u">Não especificado</option>
                                        </select>
                                        <div class="alert alert-error" data-bind="errorMessage: gender, visible: showError(gender)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;">Esta informação é necessária.</div>
                                    </div>
                                </div>

                                <!--Número telefone-->
                                <div class="row">
                                    <div class="col-xs-4 form-group">
                                        <label class="text-base" for="PhoneNumber">Número de telefone fixo</label>
                                        <input type="text" id="PhoneNumber" class="form-control" name="PhoneNumber" data-bind="value: phoneNumber, hasFocus: phoneNumber.focused, css: { 'has-error': showError(phoneNumber) }, tooltip: {}" data-toggle="tooltip" data-original-title="Seu número de telefone nos ajuda a manter sua conta segura. Vamos enviar um código de verificação como uma mensagem de texto ou uma chamada automática, se precisarmos de confirmar sua identidade.">
                                        <div class="alert alert-error" data-bind="errorMessage: phoneNumber, visible: showError(phoneNumber)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;"></div>
                                    </div>
                                    <div class="col-xs-4 form-group">
                                        <label class="text-base" for="PhoneNumber">Número de telefone celular</label>
                                        <input type="text" id="PhoneNumber" class="form-control" name="PhoneNumber" data-bind="value: phoneNumber, hasFocus: phoneNumber.focused, css: { 'has-error': showError(phoneNumber) }, tooltip: {}" data-toggle="tooltip" data-original-title="Seu número de telefone nos ajuda a manter sua conta segura. Vamos enviar um código de verificação como uma mensagem de texto ou uma chamada automática, se precisarmos de confirmar sua identidade.">
                                        <div class="alert alert-error" data-bind="errorMessage: phoneNumber, visible: showError(phoneNumber)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;"></div>
                                    </div>
                                    <div class="col-xs-4 form-group">
                                        <label class="text-base" for="PhoneNumber">Número de telefone comercial</label>
                                        <input type="text" id="PhoneNumber" class="form-control" name="PhoneNumber" data-bind="value: phoneNumber, hasFocus: phoneNumber.focused, css: { 'has-error': showError(phoneNumber) }, tooltip: {}" data-toggle="tooltip" data-original-title="Seu número de telefone nos ajuda a manter sua conta segura. Vamos enviar um código de verificação como uma mensagem de texto ou uma chamada automática, se precisarmos de confirmar sua identidade.">
                                        <div class="alert alert-error" data-bind="errorMessage: phoneNumber, visible: showError(phoneNumber)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;"></div>
                                    </div>
                                </div>

                                <!--Outro email-->
                                <div class="row" data-bind="visible: memberNameType() === 'Live'">
                                    <div class="col-xs-6 form-group">
                                        <label class="text-base" for="iAltEmail">Endereço de email alternativo</label>
                                        <input id="iAltEmail" class="form-control" name="iAltEmail" type="email" lang="en" autocorrect="off" data-bind="value: alternateEmail, hasFocus: alternateEmail.focused, css: { 'has-error': showError(alternateEmail) }, tooltip: {}" data-toggle="tooltip" data-original-title="Use um endereço diferente da conta da Microsoft. Se você esquecer a senha, enviaremos informações de redefinição de senha para esse endereço.">
                                        <div class="alert alert-error" data-bind="errorMessage: alternateEmail, visible: showError(alternateEmail)" role="alert" aria-live="assertive" aria-relevant="text" aria-atomic="true" style="display: none;"></div>
                                    </div>
                                </div>

                                <!-- Finalizando Cadastro -->
                                <br />
                               <!-- <button type="submit" class="btn btn-default bt-edit">Salvar Alterações</button> -->
                                <button type="button" class="btn btn-default bt-edit" data-toggle="modal" data-target="#myModal">Salvar Alterações</button>
                                    <!-- Final código das tabelas -->

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
                                    <h4 class="modal-title">Dados Gravados</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Cadastro Atualizado com Sucesso</p>
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
