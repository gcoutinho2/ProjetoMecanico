using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoMecanicoVirtual.Models;
using System.Data.SqlClient;

namespace ProjetoMecanicoVirtual.DAO
{
    public class FuncionarioDAO
    {
        public void InsereFuncionario(Funcionario funcionario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {

                conn.Open();

                using (SqlCommand cmd = new SqlCommand("Insert into Funcionario (Nome, Email,Usuario) values (@nome,@email,@usuario)"))
                {
                    cmd.Parameters.AddWithValue("", funcionario.Nome);
                    cmd.Parameters.AddWithValue("", funcionario.Email);
                    cmd.Parameters.AddWithValue("",funcionario.Usuario);
                    cmd.Parameters.AddWithValue("",funcionario.TipoAcesso);
                    cmd.Parameters.AddWithValue("",funcionario.Senha);
                    cmd.Parameters.AddWithValue("",funcionario.Ativo);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}