<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Producto>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Editar</h2>

<% using (Html.BeginForm()) { %>
    <!-- <%: Html.AntiForgeryToken() %> -->
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Producto</legend>

        <%: Html.HiddenFor(model => model.Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Nombre) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Nombre) %>
            <%: Html.ValidationMessageFor(model => model.Nombre) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Descripcion) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Descripcion) %>
            <%: Html.ValidationMessageFor(model => model.Descripcion) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Precio) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Precio) %>
            <%: Html.ValidationMessageFor(model => model.Precio) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Stock) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Stock) %>
            <%: Html.ValidationMessageFor(model => model.Stock) %>
        </div>

        <p>
            <input type="submit" value="Guardar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Volver", "GestionProducto") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
