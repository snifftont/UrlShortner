<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink1.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="cutlink.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="header">
            <div class="header1">
                 <h1 class="page_title">Contact Us</h1>
            </div>
           </div>
    <div class="content">
              <div class="content_inner">
                  <div class="dashboard">
                     <h1><a class="disnone" href="#"><asp:Label runat="server" text="Blog" ID="blg" CssClass="clinks" /></a> </h1>
                      <p>Get a Sense of big picture on the official Cutlink Blog. </p>
                      
                      <h1><a class="disnone" href="http://twitter.com/Cutlink_in" target="_blank"><asp:Label runat="server" CssClass="clinks" text="@Cutlink_IN on Twitter" ID="Label2"  /></a> </h1>
                      <p>For service status updates,new features and good new fashioned </p>
                     <p>conversation,follow @Cutlink_IN on Twitter. </p>
                       <h1><a class="disnone" href="http://twitter.com/Cutlink.in" target="_blank"><asp:Label runat="server" CssClass="clinks" text="Cutlink on Facebook" ID="Label1"  /></a> </h1>
                      <p>if you like Cutlink and want updates about cutlink, prove it</p>
                     <p>and click the like button!</p>
                       <h1><a class="disnone" href="#"><asp:Label runat="server" text="Press Inquiries" ID="Label3"  CssClass="clinks"  /></a> </h1>
                      <p>For inquiries or assets please visit our <a href="#" class="clinks"> press page.</a></p>
                     
                     
                  </div></div></div>
</asp:Content>
