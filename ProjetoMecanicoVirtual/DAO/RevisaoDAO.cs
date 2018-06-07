﻿using ProjetoAdmin.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoAdmin.DAO
{
    public class RevisaoDAO
    {

        public void CadastrarRevisao(Revisoes revisoes)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {

                using (SqlCommand cmd = new SqlCommand(@"Insert into Revisoes (Filtro_oleo, Pastilha_freio, Velas, 
                            Filtro_combustivel, Data, Correia_dentada, Filtro_ar_condicionado,Correia_alternador,
                            Filtro_ar, Amortecedor, Pneu, Fluido_transmissao, Disco_freio, Fluido_direcao,Alinhamento)
                            values (@filtro_oleo, @pastilha_freio, @velas,@filtro_comvutivel, @data, @correia_dentada,
                            @filtro_ar_condicionado,@correia_alternador,@filtro_ar, @amortecedor, @pneu, 
                            @fluido_transmissao, @disco_freio, @fluido_direcao,@alinhamento", conn))
                {
                    cmd.Parameters.AddWithValue("@filtro_oleo", revisoes.FiltroOleo);
                    cmd.Parameters.AddWithValue("@pastila_freio",revisoes.PastilhaFreio);
                    cmd.Parameters.AddWithValue("@velas", revisoes.Velas);
                    cmd.Parameters.AddWithValue("@filtro_combustivel", revisoes.FiltroCombustivel);
                    cmd.Parameters.AddWithValue("@data", revisoes.Data);
                    cmd.Parameters.AddWithValue("@correia_dentada", revisoes.CorreiaDentada);
                    cmd.Parameters.AddWithValue("@filtro_ar_condicionado", revisoes.FiltroArCondicionado);
                    cmd.Parameters.AddWithValue("@correia_alternador", revisoes.CorreiaAlternador);
                    cmd.Parameters.AddWithValue("@filtro_ar", revisoes.FiltroAr);
                    cmd.Parameters.AddWithValue("@amortecedor", revisoes.Amortecedor);
                    cmd.Parameters.AddWithValue("@pneu", revisoes.Pneu);
                    cmd.Parameters.AddWithValue("@fluido_transmissao", revisoes.FluidoTransmissao);
                    cmd.Parameters.AddWithValue("@disco_freio", revisoes.DiscoFreio);
                    cmd.Parameters.AddWithValue("@fluido_direcao", revisoes.FluidoDirecao);
                    cmd.Parameters.AddWithValue("@alinhamento", revisoes.Alinhamento);
                    
                }

            }
        }
    }
}