using MecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MecanicoVirtual.DAO
{
    public class MontadoraDAO
    {
        public void InserirMontadora(Montadora montadora)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO MONTADORA (nome) VALUES (@nome)", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", montadora.Nome);

                    cmd.ExecuteNonQuery();
                }
            }

        }
    }
}