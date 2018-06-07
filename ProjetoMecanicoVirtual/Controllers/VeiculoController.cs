using ProjetoAdmin.DAO;
using ProjetoAdmin.Models;
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
        public ActionResult ConsultarInformacao()
        {

            return View();
        }

        public ActionResult CadastroVeiculo(Carro carro, Revisoes revisoes)
        {
            CarroDAO carroDAO = new CarroDAO();
            RevisaoDAO revisaoDAO = new RevisaoDAO();

            carroDAO.InserirCarro(carro);
            revisaoDAO.CadastrarRevisao(revisoes);

            return View();
        }
    }
}