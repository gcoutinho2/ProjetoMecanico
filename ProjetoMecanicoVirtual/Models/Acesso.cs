using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.Models
{
    public class Acesso
    {
        public int Id { get; set; }

        public string Usuario { get; set; }

        public string Email { get; set; }

        public int Senha { get; set; }

        public int ConfirmaSenha { get; set; }
    }
}