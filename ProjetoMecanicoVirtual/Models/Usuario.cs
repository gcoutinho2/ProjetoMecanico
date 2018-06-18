﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.Models
{
    public class Usuario
    {
        public int Id { get; set; }

        public string Cpf { get; set; }

        public string Nome { get; set; }

        public string Sobrenome { get; set; }

        public string NumTelefone { get; set; }

        public string Rg { get; set; }

        public DateTime DtaNascimento { get; set; }

        public string Login{ get; set; }

        public string Email { get; set; }

        public string TipoDeAcesso{ get; set; }

        public string EmailAlternativo { get; set; }

        public string Sexo { get; set; }

        public string Senha{ get; set; }
    }
}
