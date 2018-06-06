using ProjetoAdmin.DAO;
using ProjetoAdmin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoMecanicoVirtual.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult PosCadastro()
        {
            return View();
        }

        public ActionResult CadastroUser()
        {
            return View();
        }

        public ActionResult GerenciarUser()
        {
            return View();
        }

        

        public ActionResult CadastroPosCadastro(Usuario user)
        {
            UsuarioDAO userDao = new UsuarioDAO();
            userDao.InserirUsuario(user);
            return Json(true, JsonRequestBehavior.AllowGet);
        }



        public ActionResult TestandoUpdate(Usuario usuario)
        {


            return Json(true, JsonRequestBehavior.AllowGet);
        }

        public ActionResult InsereUsuario(Usuario usuario)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            usuarioDAO.InserirUsuario(usuario);
            return Json(true);
        }
    }
}