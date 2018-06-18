using ProjetoMecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.DAO
{
    public class RevisaoDAO
    {

        public void CadastrarRevisao(Revisoes revisoes)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO REVISAO (Filtro_oleo, freio, Velas, 
                            Filtro_combustivel, Data, Correia_dentada, Filtro_ar,Correia_alternador,
                            Filtro_ar, Amortecedor, Pneu, Fluido_direcao, Alinhamento)
                            values (@filtro_oleo, @freio, @velas,@filtro_comvutivel, @data, @correia_dentada,
                            @filtro_ar,@correia_alternador,@filtro_ar, @amortecedor, @pneu, 
                            @fluido_transmissao, @disco_freio, @fluido_direcao,@alinhamento", conn))
                {
                    cmd.Parameters.AddWithValue("@filtro_oleo", revisoes.FiltroOleo);
                    cmd.Parameters.AddWithValue("@freio",revisoes.PastilhaFreio);
                    cmd.Parameters.AddWithValue("@velas", revisoes.Velas);
                    cmd.Parameters.AddWithValue("@filtro_combustivel", revisoes.FiltroCombustivel);
                    cmd.Parameters.AddWithValue("@data", revisoes.Data);
                    cmd.Parameters.AddWithValue("@correia_dentada", revisoes.CorreiaDentada);
                    cmd.Parameters.AddWithValue("@filtro_ar", revisoes.FiltroArCondicionado);
                    cmd.Parameters.AddWithValue("@correia_alternador", revisoes.CorreiaAlternador);
                    cmd.Parameters.AddWithValue("@filtro_ar", revisoes.FiltroAr);
                    cmd.Parameters.AddWithValue("@disco_freio", revisoes.DiscoFreio); //Esta cadastrado no banco FLUIDO DE OLEO
                    cmd.Parameters.AddWithValue("@amortecedor", revisoes.Amortecedor);
                    cmd.Parameters.AddWithValue("@pneu", revisoes.Pneu);
                    cmd.Parameters.AddWithValue("@fluido_direcao", revisoes.FluidoDirecao); //Esta cadastrado no banco MOTOR
                    cmd.Parameters.AddWithValue("@alinhamento", revisoes.Alinhamento);
                    
                }

            }
        }
    }
}