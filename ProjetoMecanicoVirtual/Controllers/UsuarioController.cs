using System.Web.Http;
using ProjetoAdmin.Models;
using ProjetoAdmin.DAO;

namespace ProjetoAdmin.Controllers
{
    public class UsuarioController : ApiController
    {
        UsuarioDAO user = new UsuarioDAO();

        [HttpPost]
        public void CadastrarUsuario([FromBody]Usuario usuario)
        {            
            user.InserirUsuario(usuario);
        }

        [HttpPost]
        public void EditarUsuario([FromBody]Usuario usuario)
        {
            user.EditarUsuario(usuario);
        }

        [HttpGet]
        public void ObterId([FromBody] int id)
        {
            user.ObterId(id);
        }

        [HttpGet]
        public void Excluir(int id)
        {
            user.Excluir(id);
        }
    }
}