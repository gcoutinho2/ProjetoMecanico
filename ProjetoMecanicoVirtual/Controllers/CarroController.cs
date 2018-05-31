<<<<<<< HEAD
﻿using System.Web.Http;
using ProjetoAdmin.Models;
using ProjetoAdmin.DAO;

namespace ProjetoAdmin.Controllers
{
    public class CarroController : ApiController
    {
        CarroDAO carro = new CarroDAO();

        [HttpPost]
        public void CadastrarCarro([FromBody] Carro car)
        {
            carro.InserirCarro(car);
        }

        [HttpGet]
        public Carro ObterPorId(int id)
        {
            return carro.ObterPorId(id);
        }

        [HttpGet]
        public void Excluir(int id)
        {
            carro.Excluir(id);
        }
    }
=======
﻿using System.Web.Http;
using ProjetoAdmin.Models;
using ProjetoAdmin.DAO;

namespace ProjetoAdmin.Controllers
{
    public class CarroController : ApiController
    {
        [HttpPost]
        public void CadastrarCarro([FromBody] Carro car)
        {
            CarroDAO carro = new CarroDAO();
            carro.InserirCarro(car);
        }

        [HttpGet]
        public Carro ObterPorId(int id)
        {
            CarroDAO carro = new CarroDAO();
            return carro.ObterPorId(id);
        }



    }
>>>>>>> dev
}