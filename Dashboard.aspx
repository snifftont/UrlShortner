<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="cutlink.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        function OpenPopup1(id) {

            window.open("sendemail.aspx?id="+id, "List", "scrollbars=yes,resizable=no,width=720,height=1000");

            return false;

        }

    </script>
    <script type="text/javascript">

        function OpenPopup(id) {

            testwindow = window.open("http://www.facebook.com/sharer/sharer.php?u="+id, "mywindow", "location=1,status=1,scrollbars=1,width=500,height=600");
            testwindow.moveTo(0, 0);

        }

    </script>
    <script type="text/javascript">
        function poponload(id) {
            testwindow = window.open("https://twitter.com/intent/tweet?text="+id, "mywindow", "location=1,status=1,scrollbars=1,width=500,height=600");
            testwindow.moveTo(0, 0);
        }
</script>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=616661598373548";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="updatepanel1" runat="server">
        <ContentTemplate>

<div class="header">
            <div class="header1">
                 <h1 class="page_title">Dashboard</h1>
            </div>
           </div>
     <div class="content">
              <div class="content_inner">

                  <div class="dashboard">
                        <div class="recipep1">
                            <div style="width:25%; float:left;">
                               <h2 class="h22"> My Shared Links</h2>
                                <p class="perso11">
                                    0
                                </p>
                                <p class="perso44">
                                 used 0 times
                                <br />
                                <asp:Button ID="btncreate" runat="server" Text="View your profile" CssClass="dash_btn333" Width="170px" />
                                    </p>
                            </div>
                            <div style="width:75%; float:right;">
                                <div style="width:25%; float:left;">
                                   <h2 class="h22"> My Personal Links</h2>
                                     <p class="perso11">
                                    1
                                </p>
                                    <p class="perso44">
                                    used 0 times
                                    <br />
                                     <asp:Button ID="Button1" runat="server" Text="Create a Link" CssClass="dash_btn333" Width="150px" />
                                </p>
                                </div>
                                <div style="width:73%; float:right;">
                                    <div style="width:49%; float:left;">
                                     <h2 class="h22">   Community</h2>
                                        Join the conversation on<br />
                                        Twitter and Facebook.<br />
                                        <div class="fb-like" data-href="https://www.facebook.com/cutlink.IN" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div><br />
                                            <a href="https://twitter.com/cutlink_in" class="twitter-share-button" data-related="jasoncosta" data-lang="en" data-size="large" data-count="none">Tweet</a>

    <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "https://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
                                    </div>
                                    <div style="width:49%; float:right;">
                                       <h2 class="h22"> Invitations</h2>
                                        Help us spred the world
                                        <br />
                                        <a href="invitation.aspx" class="invite1">Invite a friend!</a>
                                    </div>
                                </div>

                                </div>
                            <%-- <div class="recipe1">
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="search" Width="700px" Height="75px" placeholder="Search"></asp:TextBox>
                        </div>
                             <div class="recipe2">
                                  <asp:Button ID="Button2" runat="server" Text="Search" CssClass="browse" Width="200px" Height="78px" Font-Size="30px" />
                             </div>--%>
                            </div>
                       <div class="feature">
                            <div class="feature2">
                             <span class="feature1">Featured  </span></div>
                           <div class="feature3">
                             <span class="feature1"> <a href="#" class="a3"> view more</a> </span></div>
                           
                       </div>
                   
                       <asp:DataList ID="lv1" RepeatDirection="Horizontal" RepeatColumns="3" runat="server" SelectedIndex="-1" ViewStateMode="Enabled" 
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

                       <%--<div class="gmail">
                            <div class="gmail1">

                                 <div class="maingm1">
                                     <a href="#">
                                  <div class="gmail2">
                                        <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image2" runat="server" BorderWidth="0px"  ImageUrl="~/image/phonecall.png"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image3" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px" />
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image4" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>

                                  </div>
                                         </a>
                                    

                                      <p class="follow">
                                         <a href="#" class="follow"> Gmails from VIPs send you a push notification</a>

                                     </p>
                               <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image10" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label1" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image11" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label2" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>

                                       </div>
                                    
                                    

                           
                                </div>
                            <div class="maingm1">
                                <a href="#">
                           <div class="gmail2">
                                <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image7" runat="server"  ImageUrl="~/image/twitter.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image8" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px" />
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image9" runat="server"  ImageUrl="~/image/weather.png" BorderWidth="0px"/>
                       </div>
                           </div>
                                    </a>

 <p class="follow">
                                         <a href="#" class="follow"> Gmails from VIPs send you a push notification</a>

                                     </p>
                               <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image14" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label5" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image15" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label6" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>


                                </div>
                           
                      

                      </div>--%>
                      
                      
                      
                       <%--<div class="tab">

                           <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Trending</a></li>
    <li><a href="#tabs-2">New</a></li>
    <li><a href="#tabs-3">All Time</a></li>
  </ul>
  <div id="tabs-1">
     <div class="top">

    <asp:Repeater ID="rpt1" runat="server">
        <ItemTemplate>
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
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image19" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label7" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image20" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label8" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
        </ItemTemplate>
    </asp:Repeater>


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
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image19" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label7" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image20" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label8" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
      <div class="taps1">
          <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image21" runat="server"  ImageUrl="~/image/phonecall.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image22" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image23" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>
    </div>
              </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image24" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label9" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image25" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label10" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
       <div class="border"></div>
            </div>
  </div>
  <div id="tabs-2">
    <div class="top">

    
    <div class="taps1">
        <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image26" runat="server"  ImageUrl="~/image/gmail.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image27" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image28" runat="server"  ImageUrl="~/image/twitter.png" BorderWidth="0px"/>
                       </div>
    </div>
            </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image29" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label11" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image30" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label12" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
      <div class="taps1">
          <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image31" runat="server"  ImageUrl="~/image/phonecall.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image32" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image33" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>
    </div>
              </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image34" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label13" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image35" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label14" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
       <div class="border"></div>
            </div>
  </div>
  <div id="tabs-3">
     <div class="top">

    
    <div class="taps1">
        <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image36" runat="server"  ImageUrl="~/image/weather.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image37" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image38" runat="server"  ImageUrl="~/image/sms.png" BorderWidth="0px"/>
                       </div>
    </div>
            </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image39" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label15" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image40" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label16" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
      <div class="border"></div>
      <div class="taps1">
          <a href="#">
        <div class="taps3">
              <div class="dashboard2left1gm">
                                    <div class="cross1">
                                         <asp:Image ID="Image41" runat="server"  ImageUrl="~/image/phonecall.png" BorderWidth="0px"/>
                                    </div>
                                      <div class="small_arrow">
                                          <asp:Image ID="Image42" runat="server"  ImageUrl="~/image/arrow.png" BorderWidth="0px"/>
                                      </div>
                      

                       </div>

                               <div class="dashboard2left2">
                                   <asp:Image ID="Image43" runat="server"  ImageUrl="~/image/pushover.png" BorderWidth="0px"/>
                       </div>
    </div>
              </a>
        <div class="taps2">
              <div class="taps4">
                    <p class="week">
                                         <a href="#" class="the">theweek.com: "10 things you need to know today" sent to email</a>

                                     </p>
                    <p class="p1">
                                   by <a  href="#" class="a4">espn </a>on feb 3,2014
                               </p>
                                     <p class="p2">
                                         <asp:Image ID="Image44" runat="server" ImageUrl="~/image/index.png" Height="15px" />
                                         <asp:Label ID="Label17" runat="server" Text="180 uses" ForeColor="Silver"></asp:Label>
                                         <asp:Image ID="Image45" runat="server" ImageUrl="~/image/index1.png" Height="15px" />
                                          <asp:Label ID="Label18" runat="server" Text="25 favorites" ForeColor="Silver"></asp:Label>
                                     </p>
              </div>
              <a href="#"><div class="taps5">

              </div></a>


           
    </div>
    </div>
       <div class="border"></div>
            </div>
  </div>
</div>
                           </div>--%>



                  </div></div>
        </div>













        
    <%--<div style="width:100%; float:left;">
      <div class="header">
            <div class="header1">
                 <h1 class="page_title">Dashboard</h1>
            </div>
           </div>
          <div class="content">
              <div class="content_inner">
                
                  <div class="dashboard44">
                       

              </div>
                 
                   
  </div>
                       


          </div>
   
        </div>--%>

    </ContentTemplate>
    </asp:UpdatePanel>
           
</asp:Content>

