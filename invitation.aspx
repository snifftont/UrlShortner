<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="invitation.aspx.cs" Inherits="cutlink.invitation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="header">
            <div class="header1">
                 <h1 class="page_title">Invite Someone</h1>
            </div>
           </div>
     <div class="content">
              <div class="content_inner">

                  <div class="dashboard">
                       <asp:Panel id="Panel2" runat="server">
                  <div class="invite">
                        Your invitation is sent sucessfully to receipents
                       </div><br />

                     
                     </asp:Panel>
                      <asp:Panel id="pnl01" runat="server">
                  <div class="invite">
                         If you'd like to invite a friend,<br />
                      enter their email address below.
                       </div><br />

                       
                     </asp:Panel>
                             
                              <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup1" align="center" >
                                  <p class="perso"><asp:Label runat="server" Text="Friends Email's" ID="emin" /></p>
                                  <asp:TextBox runat="server" CssClass="signbox" Height="30px" placeholder="Enter email separated by (;)semicolon" ID="multiaddress"></asp:TextBox>
                                  <br />
                                  <p class="perso">Message(Optional)</p>
                                  <asp:TextBox runat="server" CssClass="signbox" TextMode="MultiLine" Height="100px" placeholder="Enter message" ID="TextBox1"></asp:TextBox>
                                  <br />
                                  <br />
                                  <asp:Button runat="server" Text="Send" CssClass="dash_btn2" ID="send" OnClick="send_Click" />&nbsp;&nbsp;<asp:Button runat="server" CssClass="dash_btn2" Text="Cancel" ID="cancel" OnClick="cancel_Click" />
                              </asp:Panel>
                         
                  </div></div></div>


</asp:Content>
