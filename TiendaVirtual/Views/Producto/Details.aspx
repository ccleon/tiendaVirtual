<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Producto>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Producto Detallado</h2>

<fieldset>
    <legend>Producto</legend>
    <div class="display-field">
        <img src="../../Images/<%:Html.DisplayFor(model => model.Imagen)%>.png " style="max-width:400px;">
    </div>
    <div class="display-label">
       <b> <%: Html.DisplayNameFor(model => model.Nombre) %>: </b>
        <%: Html.DisplayFor(model => model.Nombre) %>
    </div>

    <div class="display-label">
       <b>  <%: Html.DisplayNameFor(model => model.Descripcion) %>: </b>
        <%: Html.DisplayFor(model => model.Descripcion) %>
    </div>

    <div class="display-label">
        <b> <%: Html.DisplayNameFor(model => model.Precio) %>: </b>
        <%: Html.DisplayFor(model => model.Precio) %>€
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Volver", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
