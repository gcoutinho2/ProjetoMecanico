using System.Collections.Generic;
using System.Web.Mvc;
using System.Data.SqlClient;
using MecanicoVirtual.Models;
using System.Web;
using System.Linq;
using System.Data;
using System.Drawing;
using MecanicoVirtual.DAO;

namespace ProjetoCRUD
{
    public class FrontController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Criar(Usuario usuario)
        {
            // Validar!!!!
            if (string.IsNullOrWhiteSpace(usuario.Nome))
            {
                return Json("Nome inválido!");
            }
            if (string.IsNullOrWhiteSpace(usuario.Email))
            {
                return Json("Email inválido!");
            }


            using (SqlConnection conn = MecanicoVirtual.Conexao.Abrir())
            {
                // Cria um comando para inserir um novo registro à tabela
                using (SqlCommand cmd = new SqlCommand("INSERT INTO cliente (Nome, Email, usuario, senha)  VALUES (@NOME, @EMAIL, @USUARIO, @SENHA)", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@NOME", usuario.Nome);
                    cmd.Parameters.AddWithValue("@EMAIL", usuario.Email);
                    cmd.Parameters.AddWithValue("@USUARIO", usuario.Login);
                    cmd.Parameters.AddWithValue("@SENHA", usuario.Senha);
                    cmd.ExecuteNonQuery();
    //                Upload(usuario, id);
                }
            }
            return Json(true);
        }

        public ActionResult ModalEditar(int id)
        {
            Usuario usuario;

            using (SqlConnection conn = MecanicoVirtual.Conexao.Abrir())
            {
                // Cria um comando para selecionar registros da tabela, trazendo todas as pessoas que nasceram depois de 1/1/1900
                using (SqlCommand cmd = new SqlCommand("SELECT Id, Nome, Email FROM CLIENTE WHERE Id = @ID_USER", conn))
                {
                    cmd.Parameters.AddWithValue("@ID_USER", id);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        //Obtém os registros, um por vez
                        if (reader.Read() == true)
                        {
                            string nome = reader.GetString(1);
                            string email = reader.GetString(2);

                            usuario = new Usuario();
                            usuario.Id = id;
                            usuario.Nome = nome;
                            usuario.Email = email;
                        }
                        else
                        {
                            usuario = null;
                        }
                    }
                }
            }
            return PartialView("_Editar", usuario);
        }

        public ActionResult Editar(Usuario usuario)
        {
            // Validar!!!!
            if (string.IsNullOrWhiteSpace(usuario.Nome))
            {
                return Json("Nome inválido!");
            }

            using (SqlConnection conn = MecanicoVirtual.Conexao.Abrir())
            {

                // Cria um comando para inserir um novo registro à tabela
                using (SqlCommand cmd = new SqlCommand("UPDATE CLIENTE SET NOME = @Nome, EMAIL = @EMAIL WHERE Id_user = @ID_USER", conn))
                {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@nome", usuario.Nome);
                    cmd.Parameters.AddWithValue("@email", usuario.Email);
                    cmd.Parameters.AddWithValue("@id_user", usuario.Id);

                   // Upload(usuario, usuario.Id);
                    cmd.ExecuteNonQuery();

                }
            }

            return Json("ok");
        }

        public ActionResult Excluir(int id)
        {
            using (SqlConnection conn = MecanicoVirtual.Conexao.Abrir())
            {
                using (SqlCommand cmd = new SqlCommand(@" DELETE FROM CLIENTE WHERE ID_USER = @ID_USER", conn))

                {
                    cmd.Parameters.AddWithValue("@ID_USER", id);

                    cmd.ExecuteNonQuery();
                }
            }

            return RedirectToAction("Index");
        }
        
        public ActionResult ModalCadastro()
        {
            return PartialView("_Cadastro");
        }
        
        public ActionResult ModalAcesso()
        {
            return PartialView("_Login");
        }
        
        public ActionResult ModalExcluir(Usuario user)
        {
            return PartialView("_Excluir", user);
        }

        public ActionResult Login(Usuario usuario)
        {
            UsuarioDAO dao = new UsuarioDAO();

            dao.Login(usuario);

            return PartialView("_Cadastro");
            //return RedirectToAction("PosCadastro", "Usuario", usuario);
        }
    }
}
