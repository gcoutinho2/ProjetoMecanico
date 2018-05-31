using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoAdmin.Models;
using System.Data.SqlClient;

namespace ProjetoAdmin.DAO
{
    public class AcessoDAO
    {
        public void InserirUsuario(Acesso acesso)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Acesso ( Usuario, Email, Senha, Confirma_senha) VALUES ( @usuario, @email, @senha, @confirma_senha)", conn))
                {
                    cmd.Parameters.AddWithValue("@usuario", acesso.Usuario);
                    cmd.Parameters.AddWithValue("@email", acesso.Email);
                    cmd.Parameters.AddWithValue("@senha", acesso.Senha);
                    cmd.Parameters.AddWithValue("@confirma_senha", acesso.ConfirmaSenha);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void EditarUsuario(Acesso acesso)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Acesso SET Usuario = @usuario, Email = @email, Senha = @senha, Confirma_senha = @confirma_senha WHERE Id = @id", conn))
                {
                    cmd.Parameters.AddWithValue("@usuario", acesso.Usuario);
                    cmd.Parameters.AddWithValue("@email", acesso.Email);
                    cmd.Parameters.AddWithValue("@senha", acesso.Senha);
                    cmd.Parameters.AddWithValue("@confirma_senha", acesso.ConfirmaSenha);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public Acesso ObterId(int id)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                //Arrumar a QueryString
                using (SqlCommand cmd = new SqlCommand(@"
                    SELECT mod.Nome, mont.Nome,car.Ano FROM Carro car INNER JOIN Modelo mod ON car.Id = mod.Id
                    INNER JOIN Montadora mont ON mont.id = mod.id
                    WHERE car.Id = @id", conn))

                {
                    // Esse valor poderia vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@id", id);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        //Obtém os registros, um por vez
                        if (reader.Read() == true)
                        {

                            return new Acesso()
                            {
                                Usuario = reader.GetString(0),
                                Email = reader.GetString(1),
                                Senha = reader.GetInt32(2),
                                ConfirmaSenha = reader.GetInt32(3)
                            };

                        }
                        else
                        {
                            return null;
                        }
                    }
                }
            }
        }

        public bool Excluir(int id)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                //Arrumar a QueryString
                using (SqlCommand cmd = new SqlCommand(@"
                    DELETE FROM Acesso
                    WHERE AcessoId = @id", conn))

                {
                    cmd.Parameters.AddWithValue("@id", id);

                    return (cmd.ExecuteNonQuery() == 1);
                }
            }
        }
    }
}