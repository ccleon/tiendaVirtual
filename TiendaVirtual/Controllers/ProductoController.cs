using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.Mvc;
using TiendaVirtual.Models;

namespace TiendaVirtual.Controllers
{
    [Authorize]
    public class ProductoController : Controller
    {
        private TiendaVirtualBDEntities tiendaBD = new TiendaVirtualBDEntities(); 

        //
        // GET: /Producto/
        public ActionResult Index()
        {
            return View(tiendaBD.Productoes.ToList());
        }

        [Authorize(Users = "admin")]
        public ActionResult GestionProducto()
        {
            return View(tiendaBD.Productoes.ToList());
        }

        //
        // GET: /Producto/Details/5
        public ActionResult Details(int id)
        {
            Producto producto = tiendaBD.Productoes.Find(id);
            if (producto == null) 
            { 
                return HttpNotFound(); 
            }
            return View(producto);
        }

        //
        // GET: /Producto/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Producto/Create
        [HttpPost]
        public ActionResult Create(Producto producto)
        {
            if (ModelState.IsValid)
            {
                tiendaBD.Productoes.Add(producto);
                tiendaBD.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(producto);
        }

        //
        // GET: /Producto/Edit/5
        public ActionResult Edit(int id=0)
        {
            Producto producto = tiendaBD.Productoes.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        //
        // POST: /Producto/Edit/5
        [HttpPost]
        public ActionResult Edit(Producto producto)
        {
            if (ModelState.IsValid)
            {
                tiendaBD.Entry(producto).State = System.Data.EntityState.Modified;
                tiendaBD.SaveChanges();
                return RedirectToAction("GestionProducto");
            }
            return View(producto);
        }

        //
        // GET: /Producto/Delete/5

        public ActionResult Delete(int id=0)
        {
            Producto producto = tiendaBD.Productoes.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        //
        // POST: /Producto/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Producto producto = tiendaBD.Productoes.Find(id);
            tiendaBD.Productoes.Remove(producto);
            tiendaBD.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult AddToCarrito(CarritoCompra carrito, int id)
        {
            Producto producto = tiendaBD.Productoes.Find(id);
            carrito.Add(producto);
            return RedirectToAction("Index", "Carrito");
        }

        protected override void Dispose(bool disposing)
        {
            tiendaBD.Dispose();
            base.Dispose(disposing);
        }
    }
}
