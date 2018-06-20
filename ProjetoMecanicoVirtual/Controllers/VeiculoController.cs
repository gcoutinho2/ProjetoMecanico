using ProjetoMecanicoVirtual.DAO;
using ProjetoMecanicoVirtual.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoMecanicoVirtual.Controllers
{
    public class VeiculoController : Controller
    {
        // GET: CadastroVeiculo
        public ActionResult CadastroVeiculo()
        {
            return View();
        }

        public ActionResult ConsultarInformacao()
        {
            return View();
        }

        public ActionResult InsereCarro(Carro carro)
        {
            CarroDAO carroDAO = new CarroDAO();
            carroDAO.InserirCarro(carro);
            return Json(true);
        }

        public ActionResult CadastroNovoVeiculo(Carro carro, Revisoes revisoes)
        {
            CarroDAO carroDAO = new CarroDAO();
            RevisaoDAO revisaoDAO = new RevisaoDAO();

            carroDAO.InserirCarro(carro);
            revisaoDAO.CadastrarRevisao(revisoes);

            return Json(true, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ObterModelos(string marca)
        {
            List<string> modelos;

            switch (marca)
            {
                case "FIAT":
                    modelos = new List<string>() { "PALIO", "MAREA", "PUNTO", "SIENA", "UNO" };
                    break;
                case "VOLKSWAGEN":
                    modelos = new List<string>() { "GOL", "SAVEIRO", "FUSCA", "JETTA", "PASSAT" };
                    break;
                case "FORD":
                    modelos = new List<string>() { "FUSION", "FOCUS", "FIESTA", "KA", "ECOSPORT" };
                    break;
                default:
                    modelos = new List<string>() { "CELTA", "CORSA", "CRUZE", "COBALT", "ASTRA" };
                    break;
            }

            return Json(modelos, JsonRequestBehavior.AllowGet);
        }
    }
}