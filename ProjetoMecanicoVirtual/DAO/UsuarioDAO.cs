using ProjetoAdmin.Models;
using System.Data.SqlClient;

namespace ProjetoAdmin.DAO
{
    public class UsuarioDAO
    {
        public void InserirUsuario(Usuario usuario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Cliente ( cpf, nome, sobrenome, num_telefone, rg, data_nasc, email, email_alternativo, sexo) VALUES ( @cpf, @nome, @sobrenome,@num_telefone, @rg, @data_nasc, @email, @email_alternativo, @sexo )", conn))
                {
                    cmd.Parameters.AddWithValue("@cpf", usuario.Cpf);
                    cmd.Parameters.AddWithValue("@nome", usuario.Nome);
                    cmd.Parameters.AddWithValue("@sobrenome", usuario.Sobrenome);
                    cmd.Parameters.AddWithValue("@num_telefone", usuario.NumTelefone);
                    cmd.Parameters.AddWithValue("@rg", usuario.Rg);
                    cmd.Parameters.AddWithValue("@data_nasc", usuario.DtaNascimento);
                    cmd.Parameters.AddWithValue("@email", usuario.Email);
                    cmd.Parameters.AddWithValue("@email_alternativo", usuario.EmailAlternativo);
                    cmd.Parameters.AddWithValue("@sexo", usuario.Sexo);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void InsereFuncionario(Usuario usuario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {

                conn.Open();

                using (SqlCommand cmd = new SqlCommand("Insert into Funcionario (Nome, Email,Usuario) values (@nome,@email,@usuario)"))
                {
                    cmd.Parameters.AddWithValue("",usuario.Nome);
                    cmd.Parameters.AddWithValue("",usuario.Email);
                    cmd.ExecuteNonQuery();
                }
            }
        }


        public void AlteraUsuario(Usuario usuario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand(@"Update Usuario  set nome = @nome, Sobrenome = @sobrenome,
                                                       rg= @rg, data_nasc = @data_nasc , email_alternativo = @email_alternativo,
                                                        sexo = @sexo where id = @id " , conn))
                {
                    
                    cmd.Parameters.AddWithValue("@nome", usuario.Nome);
                    cmd.Parameters.AddWithValue("@sobrenome", usuario.Sobrenome);
                    cmd.Parameters.AddWithValue("@rg", usuario.Rg);
                    cmd.Parameters.AddWithValue("@data_nasc", usuario.DtaNascimento);
                    cmd.Parameters.AddWithValue("@email_alternativo", usuario.EmailAlternativo);
                    cmd.Parameters.AddWithValue("@sexo", usuario.Sexo);
                    cmd.Parameters.AddWithValue("@id", usuario.Id);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void EditarUsuario(Usuario usuario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Cliente SET Cpf = @cpf, Nome = @nome, Sobrenome = @sobrenome, Num_Telefone = @num_telefone, Rg = @rg, Data_nasc = @data_nasc, Email = @email, Email_alternativo = @email_alternativo, sexo = @sexo  WHERE Id = @id", conn))
                {
                    cmd.Parameters.AddWithValue("@cpf", usuario.Cpf);
                    cmd.Parameters.AddWithValue("@nome", usuario.Nome);
                    cmd.Parameters.AddWithValue("@sobrenome", usuario.Sobrenome);
                    cmd.Parameters.AddWithValue("@num_telefone", usuario.NumTelefone);
                    cmd.Parameters.AddWithValue("@rg", usuario.Rg);
                    cmd.Parameters.AddWithValue("@data_nasc", usuario.DtaNascimento);
                    cmd.Parameters.AddWithValue("@email", usuario.Email);
                    cmd.Parameters.AddWithValue("@email_alternativo", usuario.EmailAlternativo);
                    cmd.Parameters.AddWithValue("@sexo", usuario.Sexo);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public Usuario ObterId(int id)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {

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

                            return new Usuario()
                            {
                                Id = reader.GetInt32(0),
                                Cpf = reader.GetString(1),
                                Nome = reader.GetString(2),
                                Sobrenome = reader.GetString(3),
                                NumTelefone = reader.GetString(4),
                                Rg = reader.GetString(5),
                                DtaNascimento = reader.GetDateTime(6),
                                Email = reader.GetString(7),
                                EmailAlternativo = reader.GetString(8),
                                Sexo = reader.GetString(9)
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
                conn.Open();

                using (SqlCommand cmd = new SqlCommand(@"
                    DELETE FROM Cliente
                    WHERE UsuarioId = @id", conn))

                {
                    cmd.Parameters.AddWithValue("@id", id);

                    return (cmd.ExecuteNonQuery() == 1);
                }
            }
        }










    }
}