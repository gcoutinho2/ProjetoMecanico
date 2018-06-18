using ProjetoMecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoMecanicoVirtual.DAO
{
    public class EnderecoDAO
    {

        public void InsereEndereco(Endereco end)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO Usuario (rua, numero, bairro, cep, cidade, estado, pais) values 
                                    (@rua,@numero,@bairro,@cep,@cidade,@estado,@pais)    ", conn))
                {
                    cmd.Parameters.AddWithValue("@rua",end.Rua);
                    cmd.Parameters.AddWithValue("@numero", end.Numero);
                    cmd.Parameters.AddWithValue("@bairro", end.Bairro);
                    cmd.Parameters.AddWithValue("@cep", end.Cep);
                    cmd.Parameters.AddWithValue("@cidade", end.Cidade);
                    cmd.Parameters.AddWithValue("@estado", end.Estado);
                    cmd.Parameters.AddWithValue("@pais", end.Pais);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}