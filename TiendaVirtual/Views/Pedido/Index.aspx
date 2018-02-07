<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Pedido>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Pedidos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Pedidos</h2>

    <style>
        table{
            border: solid black;
            margin: 25px auto;
        }

        td, tr{
            border: solid black 1px; 
            padding-left: 5px;
            min-width: 100px;
        }

        th{
            text-align: center;
        }
    </style>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Usuario) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Productos) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Total) %>
        </th>
    </tr>

<% foreach (var item in Model) { %>
    <% if(item.Usuario == User.Identity.Name || User.Identity.Name == "admin"){ %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Usuario) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Productos) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Total) %>€
        </td>
    </tr>
    <% } %>
<% } %>

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
