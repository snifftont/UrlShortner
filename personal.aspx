<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="personal.aspx.cs" Inherits="cutlink.personal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/jquery-ui.css" rel="stylesheet" />
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 <%-- <link rel="stylesheet" href="/resources/demos/style.css">--%>
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
    <script type="text/javascript">

        function OpenPopup1(id) {

            window.open("sendemail.aspx?id=" + id, "List", "scrollbars=yes,resizable=no,width=720,height=1000");

            return false;

        }

    </script>
    <script type="text/javascript">

        function OpenPopup(id) {

            testwindow = window.open("http://www.facebook.com/sharer/sharer.php?u=" + id, "mywindow", "location=1,status=1,scrollbars=1,width=500,height=600");
            testwindow.moveTo(0, 0);

        }

    </script>
    <script type="text/javascript">
        function poponload(id) {
            testwindow = window.open("https://twitter.com/intent/tweet?text=" + id, "mywindow", "location=1,status=1,scrollbars=1,width=500,height=600");
            testwindow.moveTo(0, 0);
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="header">
            <div class="header1">
                 <h1 class="page_title">My Links</h1>
            </div>
           </div>
    <div class="tab">

                           <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Personal</a></li>
    <li><a href="#tabs-2">Shared</a></li>
    <li><a href="#tabs-3">Favorites</a></li>
  </ul>
  <div id="tabs-1">
     <div class="top">

    
    <div style="width:100%; float:left;">
     
          <div class="content">
              <div class="content_inner">
                  <div class="recip">
                          Paste any link in the box below<br />
                          to shorten it
                       </div>
                  <div class="dashboard44">
                       <div class="welcome">
                           <asp:TextBox ID="TextBox2" runat="server" CssClass="signbox" placeholder="Paste a link to shorten it" Width="500px" Height="40px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="ch"></asp:RequiredFieldValidator>
                           &nbsp;
                           <asp:Button ID="Button2" runat="server" ValidationGroup="ch" Text="Shorten" CssClass="dash_btn2" Width="150px" Height="40px" OnClick="btncreate_Click" />
                       </div>
                      <asp:Panel ID="Panel2" runat="server" style="display:none;">
                      <div class="content_inner1">
                  <div class="per">
             <div style="display:block;">   <br /> <asp:Label ID="Label4" runat="server" Text="ShortLink"></asp:Label> <asp:HyperLink runat="server" ID="HyperLink2"></asp:HyperLink>      </div>
                  <p>
                    
                  </p>        
                      
                  </div>
                    </div>
                          </asp:Panel>
                       <div class="dashboard2q">
                           <asp:Repeater ID="Repeater1" runat="server">
                               <ItemTemplate>
                                     
                                   <div class="dashboard2q">
                                       </div>
                               </ItemTemplate>
                           </asp:Repeater>
                         <center>
                             <asp:Panel id="Panel3" runat="server" style="display:none;">
                             <div class="recip">
                          Here is your shorten link
                       </div>
                       <div class="arrow">
                           <asp:Image ID="Image2" runat="server"  ImageUrl="~/image/arrow--one-click.png"/>
                       </div>
                                 </asp:Panel>
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" GridLines="None" ShowHeader="false" AllowPaging="True" OnPageIndexChanging="grd01_PageIndexChanging" OnRowDataBound="grd01_RowDataBound" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                               <Columns>
                                   <asp:TemplateField>
                                        <ItemTemplate>
                                             
                                                 <asp:Panel ID="pnl01" runat="server" CssClass="dashboard244">
                                            <div style="width:700px; height:200px; text-align:left;">
                                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("originalurl") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="lblmid" runat="server" Text='<%# Eval("masterid") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="lblsid" runat="server" Text='<%# Eval("sid") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="lbloid" runat="server" Text='<%# Eval("oid") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("shorturl") %>' Visible="false"></asp:Label>
                                                <p class="perso001">
                                                     <a href="/i/<%# Eval("querylink") %>" class="perso" target="_blank"><asp:Label ID="lbltitle" runat="server" ></asp:Label></a>
                                                </p>
                                                <p><%# Convert.ToDateTime(Eval("lastvisited")).ToString("MMM dd, yyyy") %> • <asp:Label ID="Label3" runat="server"></asp:Label></p>
                                               
                                                <p>
                                                    <div style="width:40%; float:left;">
                                                        <%# Eval("hits") %> Clicks<br /><br />
                                                        <asp:TextBox ID="txtshort" runat="server" Text='<%# Eval("shorturl") %>' Width="150" ReadOnly="true" Height="33" style="font-weight: bold;"></asp:TextBox>&nbsp;
                                                    </div>
                                                    <div style="width:60%; float:right; text-align:right;">
                                                        Share your links!<br /><br />
                                                        <asp:ImageButton ID="img01" runat="server" ImageUrl="images/fbicon.png" Width="45" Height="45" CommandName="delete" CommandArgument="<%# Container.DataItemIndex %>" />
                                                        <a href="#" onclick="javascript:OpenPopup('<%#Eval("shorturl") %>');"><img src="image/fbicon.png" width="45" height="45" style="border:0px;" /></a>&nbsp;&nbsp;
                                                   <a href="#" onclick="javascript:poponload('<%#Eval("shorturl") %>');"> <img src="image/twitter.png" width="45" height="45" style="border:0px;" /></a>&nbsp;&nbsp;
                                                    <a href="#" onclick="javascript:OpenPopup1('<%#Eval("sid") %>');"> <img src="image/email.png" width="45" height="45" style="border:0px;" /></a>
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

              </div>

              </div>




              

          </div>
   
        </div>
            </div>
  </div>
  <div id="tabs-2">
    <div class="top">
<asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
        <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%# Eval("originalurl") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("shorturl") %>' Visible="false"></asp:Label>
            <div class="taps1">
        <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image16" runat="server"  ImageUrl="~/image/phonecall.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image17" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image18" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>
    </div>
            </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a  href="/i/<%# Eval("querylink") %>" class="the"> <asp:Label ID="lbltitle" runat="server" ></asp:Label></a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4"><%# Eval("username") %> </a>on  <%# Convert.ToDateTime(Eval("lastvisited")).ToString("MMM dd, yyyy") %>
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image19" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <%# Eval("hits") %> Clicks
                                       
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
        </ItemTemplate>
    </asp:Repeater>
            </div>
  </div>
  <div id="tabs-3">
     <div class="top">
<asp:Repeater ID="Repeater3" runat="server" OnItemDataBound="Repeater2_ItemDataBound">
        <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%# Eval("originalurl") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("shorturl") %>' Visible="false"></asp:Label>
            <div class="taps1">
        <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image16" runat="server"  ImageUrl="~/image/phonecall.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image17" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image18" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>
    </div>
            </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a  href="/i/<%# Eval("querylink") %>" class="the"> <asp:Label ID="lbltitle" runat="server" ></asp:Label></a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4"><%# Eval("username") %> </a>on  <%# Convert.ToDateTime(Eval("lastvisited")).ToString("MMM dd, yyyy") %>
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image19" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <%# Eval("hits") %> Clicks
                                       
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
        </ItemTemplate>
    </asp:Repeater>
            </div>
  </div>
</div>
                           </div>



     

</asp:Content>



