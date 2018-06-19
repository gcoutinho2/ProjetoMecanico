using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.Models
{
    public class Funcionario
    {

        public int Id { get; set; }
        public string  Nome{ get; set; }

        public string Email { get; set; }
        public string Usuario { get; set; }

        public string  Senha { get; set; }

        public string TipoAcesso { get; set; }  

        public bool Ativo{ get; set; }
    }
}