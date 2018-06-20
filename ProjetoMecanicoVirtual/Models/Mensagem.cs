using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.Models
{
    public class Mensagem
    {
        public int Id { get; set; }
        public string Assunto { get; set; }
        public string Descricao { get; set; }
    }
}