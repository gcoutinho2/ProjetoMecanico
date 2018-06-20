using MecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MecanicoVirtual.DAO
{
    public static class MensagemDAO
    {
        public static void InserirMensagem(Mensagem mensagem)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO MENSAGEM (TITULO, TEXTO_MSG) VALUES (@titulo, @texto_msg)", conn))
                {
                    cmd.Parameters.AddWithValue("@titulo", mensagem.Assunto);
                    cmd.Parameters.AddWithValue("@texto_msg", mensagem.Descricao);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}