<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink4.Master" AutoEventWireup="true" CodeBehind="shorten.aspx.cs" Inherits="cutlink.shorten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cutlink.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_ind">
              <div class="content_inner1">
               <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                 <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
                  <div class="per">
                      
            <p class="perso_ind" style="color: #333;text-align:left;font-size:45px;margin-top:15px;font-family:"HelveticaNeue-Light","Helvetica Neue Light","Helvetica Light","Helvetica Neue," Helvetica,Arial,sans-serif;font-weight: 300;display:block;">
                <asp:TextBox runat="server" CssClass="signbox" placeholder="Enter your link here" ID="txtshorten" /><asp:Button ID="shorten1" runat="server" Text="Shorten" CssClass="dash_btn2" Height="40px" OnClick="shorten_Click" /></p>
             <div style="display:block;">   <br /> <asp:Label ID="lblSh" runat="server" Text="ShortLink"></asp:Label> <asp:HyperLink runat="server" ID="link"></asp:HyperLink>      </div>
                  <p>
                    
                  </p>        
                      
                  </div>
                    <%-- </ContentTemplate> </asp:UpdatePanel>--%> </div></div>
    <div class="content_ind">
              <div class="content_inner1">
                  <div class="per">
            <p class="perso_ind" style="color: #333;
   text-align:left;
   font-size:92px;
   margin-top:15px;
   font-family: HelveticaNeue-Light","Helvetica Neue Light","Helvetica Light","Helvetica Neue, Helvetica,Arial,sans-serif;
                font-weight: 300;display:block;">Put the internet<br />
to work for you.
                <br /> <asp:Button ID="Button1" runat="server" Text="Join IFTTT" CssClass="dash_btn_ind" Width="300px" Height="80px" OnClick="Button1_Click" />
            </p>
                      <p>
                          
                      </p>
                  </div> </div></div>
</asp:Content>
