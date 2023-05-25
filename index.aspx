<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink4.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="cutlink.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cutlink.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:none;">
    <div class="content_ind">
              <div class="content_inner1">
               <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                 <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
                  <div class="per">
                      
            <p class="perso_ind" >
                <asp:TextBox runat="server" CssClass="signbox" placeholder="Enter your link here" ID="txtshorten" /><asp:Button ID="shorten" runat="server" Text="Shorten" CssClass="dash_btn2"  OnClick="shorten_Click" /></p>
             <div style="display:none;">   <br /> <asp:Label ID="lblSh" runat="server" Text="ShortLink"></asp:Label> <asp:HyperLink runat="server" ID="link"></asp:HyperLink>      </div>
                  <p>
                    
                  </p>        
                      
                  </div>
                    <%-- </ContentTemplate> </asp:UpdatePanel>--%> </div></div>
        </div>
    <div class="content_ind">
              <div class="content_inner1">
                  <div class="dashboard44">
                       <div class="welcome">
                           <asp:TextBox ID="TextBox1" runat="server" CssClass="signbox" placeholder="Paste a link to shorten it" Width="450px" Height="40px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="ch"></asp:RequiredFieldValidator>
                           
                           <asp:Button ID="Button2" runat="server" ValidationGroup="ch" Text="Shorten" CssClass="dash_btn2"  OnClick="btncreate_Click" />
                       </div>
                      </div>
                  <asp:Panel id="pnl2" runat="server" style="display:none;">
                             <div class="recip">
                          Here is your shorten link
                       </div>
                       <div class="arrow">
                           <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/arrow--one-click.png"/>
                       </div>
                                 </asp:Panel>
                 
                       <div class="dashboard44">
                            <center>
                   <asp:GridView ID="grd01" runat="server" AutoGenerateColumns="false" GridLines="None" ShowHeader="false" AllowPaging="True" OnRowDataBound="grd01_RowDataBound" OnRowCommand="grd01_RowCommand">
                               <Columns>
                                   <asp:TemplateField>
                                        <ItemTemplate>
                                             
                                                 <asp:Panel ID="pnl01" runat="server" CssClass="dashboard244">
                                            <div style="width:700px; height:200px; text-align:left;">
                                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("originalurl") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("shorturl") %>' Visible="false"></asp:Label>
                                                <p class="perso">
                                                     <a href="/i/<%# Eval("querylink") %>" class="perso" target="_blank"><asp:Label ID="lbltitle" runat="server" ></asp:Label></a>
                                                </p>
                                                <p><%# Convert.ToDateTime(Eval("lastvisited")).ToString("MMM dd, yyyy") %> • <asp:Label ID="Label3" runat="server"></asp:Label></p>
                                               
                                                <p>
                                                    <div style="width:40%; float:left;">
                                                        <%# Eval("hits") %> Clicks<br /><br />
                                                        <asp:TextBox ID="txtshort" runat="server" Text='<%# Eval("shorturl") %>' Width="150" ReadOnly="true" Height="25"></asp:TextBox>&nbsp;
                                                    </div>
                                                    <div style="width:60%; float:right; text-align:right;">
                                                        <p class="recip22">
                                                       Don't lose track of your links. Join now!<br />
                                                            <asp:Button ID="Button1" runat="server" Text="Join now" CommandName="join" CommandArgument="<%# Container.DataItemIndex %>" CssClass="dash_btn2"  Height="50px" OnClick="Button1_Click" />
                                                            </p>
                                                    </div>
                                                   
                                                    
                                                    
                                                </p>
                                            </div>
                                                     </asp:Panel>
                                                
                                        </ItemTemplate>
                                   </asp:TemplateField>
                               </Columns>
                           </asp:GridView>
                                 </center>
                           </div>
                     
                  <asp:Panel ID="pnl3" runat="server">
                  <div class="per">
            <p class="perso_ind" style="color: #333;
   text-align:left;
   font-size:92px;
   margin-top:15px;
                   font-weight: 300;display:block;">Put the internet<br />
to work for you.
                <br /> <asp:Button ID="Button1" runat="server" Text="Join cutlink" CssClass="dash_btn_ind" Width="300px" Height="80px" OnClick="Button1_Click" />
            </p>
                      <p>
                          
                      </p>
                  </div> 
                      </asp:Panel>

              </div></div>
     
   
</asp:Content>
