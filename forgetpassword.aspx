<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink4.Master" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="cutlink.forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cutlink.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_ind">
              <div class="content_inner1">
                  <div class="per">
                      <asp:Panel ID="pnl01" runat="server">
          <p class="perso_ind">
              Enter Email:
          </p>
                      <p>
                          <asp:TextBox ID="txtemail" runat="server" CssClass="signbox"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail" ValidationGroup="forget"></asp:RequiredFieldValidator>
                      </p>
                      <p>
                          <asp:Button ID="btnforget" runat="server" Text="Get Password" ValidationGroup="forget" CssClass="dash_btn_ind" OnClick="btnforget_Click" />
                      </p>
                          </asp:Panel>
                      <asp:Panel ID="Panel1" runat="server" style="display:none;">
                      <p class="perso_ind">
                          <asp:Label ID="lblmsg" runat="server"></asp:Label>
                      </p>
                     </asp:Panel>
                  </div> </div></div>
</asp:Content>
