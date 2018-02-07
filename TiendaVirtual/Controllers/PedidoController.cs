using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TiendaVirtual.Controllers
{
    public class PedidoController : Controller
    {
        private TiendaVirtualBDEntities tiendaDB = new TiendaVirtualBDEntities();
        //
        // GET: /Pedido/

        public ActionResult Index()
        {
           // var pedidos = tiendaDB.Pedidoes.Include(p => p.Producto);
            return View(tiendaDB.Pedidoes.ToList());
        }
    }
}
