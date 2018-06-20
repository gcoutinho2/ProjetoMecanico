using ProjetoMecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.DAO
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