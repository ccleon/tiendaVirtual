<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Producto>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Borrar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Borrar</h2>

<h3>¿Seguro que quieres borrar este producto?</h3>
<fieldset>
    <legend>Producto</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Nombre) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Nombre) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Descripcion) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Descripcion) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Precio) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Precio) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Borrar" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
