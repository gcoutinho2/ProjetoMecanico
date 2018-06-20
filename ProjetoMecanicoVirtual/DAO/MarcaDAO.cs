using ProjetoMecanicoVirtual.Models;
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
                using (SqlCommand cmd = new SqlCommand("INSERT INTO MONTADORA (modelo) VALUES (@modelo)", conn))
                {
                    cmd.Parameters.AddWithValue("@modelo", marca.Modelo);

                    cmd.ExecuteNonQuery();
                }
            }

        }
    }
}