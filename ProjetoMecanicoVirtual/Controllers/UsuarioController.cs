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
    }
}