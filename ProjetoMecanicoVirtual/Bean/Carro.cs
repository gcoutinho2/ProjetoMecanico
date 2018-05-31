using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoAdmin.Models
{
    public class Carro
    {
        public int Id { get; set; }
        public string Modelo { get; set; }
        public int Ano { get; set; }
        public double Km { get; set; }
        public string Cor { get; set; }
        public string Montadora { get; set; }
    }
}