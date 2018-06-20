﻿using ProjetoMecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.DAO
{
    public class MarcaDAO
    {
        public void InserirMarca(Marca marca)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO MODELO (nome) VALUES (@nome)", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", marca.Nome);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}