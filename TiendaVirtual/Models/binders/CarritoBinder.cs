using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TiendaVirtual.Models.binders
{
    public class CarritoBinder : IModelBinder
    {
        private string SessionKey = "carrito";

        public object BindModel (ControllerContext controllerContext, ModelBindingContext bindingContext){
            CarritoCompra carrito = (CarritoCompra)controllerContext.HttpContext.Session[SessionKey];

            if (carrito == null){
                carrito = new CarritoCompra ();
                controllerContext.HttpContext.Session[SessionKey] = carrito;
            }

            return carrito;
        }
    }
}