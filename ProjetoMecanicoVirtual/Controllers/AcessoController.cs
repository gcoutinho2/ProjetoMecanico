using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ProjetoAdmin.Models;

namespace ProjetoAdmin.DAO
{
    public class AcessoController : ApiController
    {
        AcessoDAO acessoDAO = new AcessoDAO();

        [HttpPost]
        public void CadastrarUsuario([FromBody]Acesso acesso)
        {
            acessoDAO.InserirUsuario(acesso);
        }

        [HttpPost]
        public void EditarUsuario([FromBody]Acesso acesso)
        {
            acessoDAO.EditarUsuario(acesso);
        }

        [HttpGet]
        public void ObterId([FromBody] int id)
        {
            acessoDAO.ObterId(id);
        }

        [HttpGet]
        public void Excluir(int id)
        {
            acessoDAO.Excluir(id);
        }
    }
}