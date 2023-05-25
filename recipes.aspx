<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="recipes.aspx.cs" Inherits="cutlink.recipes" %>
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
                 <h1 class="page_title">Browse Recipes</h1>
            </div>
           </div>
     <div class="content">
              <div class="content_inner">

                  <div class="dashboard">
                        <div class="recipe">
                             <div class="recipe1">
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="search" Width="700px" Height="75px" placeholder="Search your links"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ValidationGroup="ch" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                             <div class="recipe2">
                                  <asp:Button ID="Button1" runat="server" Text="Search" CssClass="browse" Width="200px" ValidationGroup="ch" Height="78px" Font-Size="30px" OnClick="Button1_Click" />
                             </div>
                            </div>
                       <div class="feature">
                            <div class="feature2">
                             <span class="feature1">Featured  </span></div>
                           <div class="feature3">
                             <span class="feature1"> <a href="personal.aspx" class="a3"> view more</a> </span></div>
                           
                       </div>


                       <asp:DataList ID="DataList1" RepeatDirection="Horizontal" RepeatColumns="3" runat="server" SelectedIndex="-1" ViewStateMode="Enabled" 
        ShowHeader="False" OnItemDataBound="lv1_ItemDataBound" >
                           <ItemTemplate>
                               <div class="maingm">
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("originalurl") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("shorturl") %>' Visible="false"></asp:Label>
                                  <div class="gmail3">
                                       
                                       <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/logo.png" Width="100" Height="100" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image5" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image6" runat="server"  ImageUrl="~/image/push_co.png" BorderWidth="0px"/>
                       </div>
                                  </div>
                               
                               <p class="follow">
                                         <a href="/i/<%# Eval("querylink") %>" class="follow"> <asp:Label ID="lbltitle" runat="server" ></asp:Label></a>

                                     </p>
                               <p class="p1">
                                   by <a  href="#" class="a4"><%# Eval("username") %> </a>on <%# Convert.ToDateTime(Eval("lastvisited")).ToString("MMM dd, yyyy") %>
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image12" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <%# Eval("hits") %> Clicks
                                        
                                     </p>

                                     
                            </div>

                           </ItemTemplate>
                           </asp:DataList>
                      
                      
                      
                       <div class="tab">

                           <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Trending</a></li>
    <li><a href="#tabs-2">New</a></li>
    <li><a href="#tabs-3">All Time</a></li>
  </ul>
  <div id="tabs-1">
     <div class="top">

    
    <asp:Repeater ID="rpt1" runat="server" OnItemDataBound="rpt1_ItemDataBound">
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
  <div id="tabs-2">
    <div class="top">
<asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
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
<asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="Repeater2_ItemDataBound">
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



                  </div></div>
        </div>



      
     

</asp:Content>
