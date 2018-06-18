using System.Data.SqlClient;
using ProjetoMecanicoVirtual.Models;

namespace ProjetoMecanicoVirtual.DAO
{
    public class Conexao
    {
        public static SqlConnection AbrirConexao()
        {

            string str = System.Configuration.ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            return conn;

        }
    }
}