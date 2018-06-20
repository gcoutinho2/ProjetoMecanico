using System.Data.SqlClient;
using MecanicoVirtual.Models;

namespace MecanicoVirtual.DAO
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