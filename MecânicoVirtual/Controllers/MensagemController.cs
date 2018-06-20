using MecanicoVirtual.DAO;
using MecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MecanicoVirtual.Controllers
{
    public class MensagemController : Controller
    {
        // GET: Mensagem
        public ActionResult Mensagem()
        {
            return View();
        }
        public ActionResult InsereMsg(Mensagem mensagem)
        {
            MensagemDAO.InserirMensagem(mensagem);
            return Json(true);
        }
    }
}