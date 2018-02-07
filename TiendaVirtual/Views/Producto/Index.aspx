<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Producto>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Productos en venta
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Lista de productos en venta</h2>

    <style>
        table{
            border: solid black;
            margin: 25px auto;
        }

        td, tr{
            border: solid black 1px; 
            padding-left: 5px;
        }

        th{
            text-align: center;
        }
    </style>

<p>
</p>
<table>
   

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <img src="../Images/<%:Html.DisplayFor(modelItem => item.Imagen)%>.png " style="width:170px; max-height:200px;">
        </td>
        <td style="border-left: hidden">
          <b>  <%: Html.DisplayFor(modelItem => item.Nombre) %> </b>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Precio) %>€ <br />
            <%: Html.DisplayFor(modelItem => item.Stock) %> disponible(s)
            <br />
           <p> <%: Html.ActionLink("Detalles", "Details", new { id=item.Id }) %> </p>
        </td>
        <td>
        <% if (item.Stock > 0) { %>
            <%: Html.ActionLink("   Añadir Carrito", "AddToCarrito", new { id=item.Id }, 
            new {@style="font-weight:bold; color:green; background:url('../Images/carrito.png') no-repeat bottom center; display:block; height: 70px; width: 110px; text-align:center;"}) %>
         <% } else{ %>
           <h4 style="color:red">AGOTADO</h4>
         <% } %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
