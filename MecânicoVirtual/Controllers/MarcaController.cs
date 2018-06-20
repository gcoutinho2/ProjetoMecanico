using MecanicoVirtual.DAO;
using MecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MecanicoVirtual.Controllers
{
    public class MarcaController : Controller
    {
        // GET: Marca
        public ActionResult CadastroVeiculo()
        {
            return View();
        }

        public ActionResult InsereMarca(Marca marca)
        {
            MarcaDAO carroDAO = new MarcaDAO();
            carroDAO.InserirMarca(marca);

            return Json(true);
        }
        
    }
}