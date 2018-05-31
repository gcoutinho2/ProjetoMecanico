using ProjetoAdmin.DAO;
using ProjetoAdmin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProjetoAdmin.Controllers
{
    public class RevisoesController : ApiController
    {
        [HttpPost]
        public void CadastrarRevisoes([FromBody]Revisoes revisoes)
        {
            RevisaoDAO revisaoDao = new RevisaoDAO();
            revisaoDao.CadastrarRevisao(revisoes);
        }

    }
}