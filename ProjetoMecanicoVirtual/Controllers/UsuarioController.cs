﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoMecanicoVirtual.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult CadastroCliente()
        {
            return View();
        }

        public ActionResult GerenciarUser()
        {
            return View();
        }
    }
}