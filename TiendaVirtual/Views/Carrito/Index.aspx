<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Producto>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Carrito 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Carrito</h2>

     <style>
        table{
            border: solid black;
            margin: 25px auto;
        }

        td, tr{
            border: solid black 1px; 
            padding-left: 5px;
            min-width: 120px;
        }

        th{
            text-align: center;
        }

        .prueba{
            color:red;
        }
    </style>

<table>
    <tr>
        <th style="border: solid black 1px;">
            Producto
        </th>
        <th style="border: solid black 1px;">
            <%: Html.DisplayNameFor(model => model.Precio) %>
        </th>
        <th></th>
    </tr>
    <% float total = 0; %>
<% foreach (var item in Model) { %>
    <tr>
        <td>
           <b> <%: Html.DisplayFor(modelItem => item.Nombre) %> </b>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Precio) %>€
            <% total += item.Precio; %>
        </td>
        <td>
             <%: Html.ActionLink("Eliminar", "DeleteProductFromCarrito", new {nombre=item.Nombre}, 
            new {@style="font-weight:bold; color:red; background:url('../Images/carritono.png') no-repeat bottom center; display:block; height: 70px; width: 110px; text-align:center;"}) %>
        </td>
    </tr>
<% } %>
    <tr style="border-top: solid black;">
        <td style="border-right:hidden"></td>
        <td> <b>Total: </b><%: Html.DisplayFor(modelItem => total) %>€ </td>
        <td>
            <%: Html.ActionLink("¿Has terminado?", "CheckOut", null, 
            new {@style="font-weight:bold; background:url('../Images/confirmar.jpg') no-repeat bottom center; display:block; height: 65px; width: 120px; text-align:center;"}) %>
        </td>
    </tr>
</table>

    <% if (User.Identity.Name == "admin"){ %>
      <p><%: Html.ActionLink("Volver a Productos", "GestionProducto", "Producto")%> </p>
    <%}else{ %>
      <p><%: Html.ActionLink("Volver a Productos", "Index", "Producto")%> </p>
    <%} %>
      

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
