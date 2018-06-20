using System.Data.SqlClient;
using ProjetoMecanicoVirtual.Models;

namespace ProjetoMecanicoVirtual.DAO
{
    public class CarroDAO
    {
        public void InserirCarro(Carro carro)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Carro (ano, km, cor) VALUES ( @ano, @km, @cor)", conn))
                {
                    //cmd.Parameters.AddWithValue("@modelo", carro.Modelo);
                    cmd.Parameters.AddWithValue("@ano", carro.Ano);
                    cmd.Parameters.AddWithValue("@km", carro.Km);
                    cmd.Parameters.AddWithValue("@cor", carro.Cor);
                    //cmd.Parameters.AddWithValue("@montadora", carro.Montadora);
                    
                    cmd.ExecuteNonQuery();
                }
            }

        }

        public Carro ObterPorId(int id)
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

                            return new Carro()
                            {
                                Ano = reader.GetInt32(0),
                                Km = reader.GetDouble(1),
                                Cor = reader.GetString(2),
                                //Modelo = reader.GetString(3),
                                //Montadora = reader.GetString(4)
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

        public void EditarCarro(Carro carro)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Carro SET Modelo = @modelo, Ano = @ano, Km = @km, Cor = @cor, Montadora = @montadora WHERE Id = @id", conn))
                {
                    //cmd.Parameters.AddWithValue("@usuario", carro.Modelo);
                    cmd.Parameters.AddWithValue("@email", carro.Ano);
                    cmd.Parameters.AddWithValue("@senha", carro.Km);
                    cmd.Parameters.AddWithValue("@confirma_senha", carro.Cor);
                    //cmd.Parameters.AddWithValue("@confirma_senha", carro.Montadora);
                    
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public bool Excluir(int id)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand(@"
                    DELETE FROM Carro
                    WHERE CarroId = @id", conn))

                {
                    cmd.Parameters.AddWithValue("@id", id);

                    return (cmd.ExecuteNonQuery() == 1);
                }
            }
        }
    }
}