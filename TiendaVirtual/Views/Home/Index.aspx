﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Mi tienda virtual
</asp:Content>
 
<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Bienvenido.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>

        </div>
    </section>
</asp:Content>


<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
