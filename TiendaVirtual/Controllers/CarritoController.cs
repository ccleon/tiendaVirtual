using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TiendaVirtual.Models;

namespace TiendaVirtual.Controllers
{
    [Authorize]
    public class CarritoController : Controller
    {
        private TiendaVirtualBDEntities tiendaDB = new TiendaVirtualBDEntities();
        
        // GET: /Carrito/
        public ActionResult Index(CarritoCompra carrito)
        {
            return View(carrito);
        }

        public ActionResult DeleteProductFromCarrito(CarritoCompra carrito, string nombre)
        {
            Producto p = carrito.FirstOrDefault(x => x.Nombre == nombre);
            carrito.Remove(p);
            return RedirectToAction("Index", "Carrito");
        }

        public ActionResult CheckOut(CarritoCompra carrito)
        {
            Pedido pedido = new Pedido();
            pedido.Usuario = User.Identity.Name;

            foreach (Producto producto in carrito)
            {
                Producto productoDB = tiendaDB.Productoes.Find(producto.Id);
                if (productoDB.Stock>0){
                    pedido.Productos += productoDB.Nombre + ", ";
                    pedido.Total += productoDB.Precio;
                    productoDB.Stock = productoDB.Stock -1;
                }
                        
            }
            pedido.Productos = pedido.Productos.Substring(0, pedido.Productos.Length - 2);
            tiendaDB.Pedidoes.Add(pedido);
            tiendaDB.SaveChanges();
            carrito.Clear();
            return RedirectToAction("Index", "Pedido");
        }

      
    }
}
