using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.Models
{
    public class Revisoes
    {
        public bool FiltroOleo { get; set; }

        public bool PastilhaFreio { get; set; }

        public bool Velas { get; set; }

        public bool FiltroCombustivel { get; set; }

        public DateTime Data { get; set; }

        public bool CorreiaDentada { get; set; }

        public bool FiltroArCondicionado { get; set; }

        public bool CorreiaAlternador { get; set; }

        public bool FiltroAr { get; set; }

        public bool Amortecedor { get; set; }

        public bool Pneu { get; set; }

        public bool FluidoTransmissao { get; set; }

        public bool DiscoFreio { get; set; }

        public bool FluidoDirecao { get; set; }

        public bool Alinhamento { get; set; }

        public bool Luzes { get; set; }


    }
}