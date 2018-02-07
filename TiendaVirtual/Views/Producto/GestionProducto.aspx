<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Producto>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Gestion de productos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Gestion de productos</h2>
    
    <style>
        table{
            border: solid black;
            margin: 25px auto;
        }

        td, tr{
            border: solid black 1px; 
            padding-left: 5px;
            max-width: 150px;
        }

        th{
            text-align: center;
        }
    </style>


<p>
    <h3><%: Html.ActionLink("Añadir nuevo producto", "Create") %></h3>
</p>

<table>
    <tr>
        <th style="border: solid black 1px;">
            <%: Html.DisplayNameFor(model => model.Imagen) %>
        </th>
        <th style="border: solid black 1px;">
            <%: Html.DisplayNameFor(model => model.Nombre) %>
        </th>
        <th style="border: solid black 1px; max-width:200px;">
            <%: Html.DisplayNameFor(model => model.Descripcion) %>
        </th>
        <th style="border: solid black 1px;">
            <%: Html.DisplayNameFor(model => model.Precio) %>
        </th>
        <th style="border: solid black 1px;">
            <%: Html.DisplayNameFor(model => model.Stock) %>
        </th>
        <th>Acciones</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <img src="../Images/<%:Html.DisplayFor(modelItem => item.Imagen)%>.png " style="width:110px; max-height:130px;">
        </td>
        <td style="border-left:hidden">
            <b><%: Html.DisplayFor(modelItem => item.Nombre) %></b>
        </td>
        <td style="max-width:200px;">
            <%: Html.DisplayFor(modelItem => item.Descripcion) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Precio) %>€
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Stock) %> disponible(s)
        </td>
        
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.Id }) %> |
            <%: Html.ActionLink("Eliminar", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
