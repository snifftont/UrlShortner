<%@ Page Title="Join CutLink" Language="C#" MasterPageFile="~/cutlink1.Master"  AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="cutlink.join" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       function addBookmark() {
           bookmarkurl = document.URL;
           bookmarktitle = document.title;
           if (document.all)  //Check the condition for IE
               window.external.AddFavorite(bookmarkurl, bookmarktitle)
           else if (window.sidebar) // Check the condition for Mozilla
           {
               window.sidebar.addPanel(bookmarktitle, bookmarkurl, "");
           }
       }
</script>
     <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
         // Load the SDK Asynchronously
         (function (d) {
             var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
             if (d.getElementById(id)) { return; }
             js = d.createElement('script'); js.id = id; js.async = true;
             js.src = "//connect.facebook.net/en_US/all.js";
             ref.parentNode.insertBefore(js, ref);
         }(document));

         // Init the SDK upon load
         window.fbAsyncInit = function () {
             FB.init({
                 appId: '767675216593239', // App ID
                 channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
                 status: true, // check login status
                 cookie: true, // enable cookies to allow the server to access the session
                 xfbml: true  // parse XFBML
             });

             // listen for and handle auth.statusChange events
             FB.Event.subscribe('auth.statusChange', function (response) {
                 if (response.authResponse) {
                     // user has auth'd your app and is logged into Facebook
                     FB.api('/me', function (me) {
                         if (me.name) {
                             document.getElementById('auth-displayname').innerHTML = me.name;
                             window.location.assign("check.aspx?name=" + me.name + "&id=" + me.id + "&email=" + me.email);
                         }
                     })
                     document.getElementById('auth-loggedout').style.display = 'none';
                     document.getElementById('auth-loggedin').style.display = 'block';
                 } else {
                     // user has not auth'd your app, or is not logged into Facebook
                     document.getElementById('auth-loggedout').style.display = 'block';
                     document.getElementById('auth-loggedin').style.display = 'none';
                 }
             });
             $("#auth-logoutlink").click(function () { FB.logout(function () { window.location.reload(); }); });
         }
</script>
    <asp:Panel ID="pnllogin2" runat="server">

        <p class="page_title1"><asp:Label ID="msgerrors1" runat="server" Text="Dear User,<br/>Your account is created sucessfully." /><br />
            <asp:Button ID="Button2" runat="server" Text="Sign In" CssClass="dash_btn2" Width="320px" Height="70px" OnClick="Button2_Click"  />
        </p>
    </asp:Panel>
    
    <asp:Panel ID="pnllogin1" runat="server">
     <div class="header">
            <div class="header1">
                 <h1 class="page_title">Join Cutlink</h1>
               
            </div>
           </div>
    <div class="content">
              <div class="content_inner">
                  <div class="dashboard">
                      <p class="page_title1"><asp:Label ID="msgerrors" runat="server" /></p>
                      <p class="page_title1">Username<asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="TextBox1" CssClass="validator" ErrorMessage="*" SetFocusOnError="True" ToolTip="Username Required" ValidationGroup="join">*</asp:RequiredFieldValidator>
                    &nbsp;<br />
                          <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="none" CssClass="signbox" MaxLength="15" ValidationGroup="join" ></asp:TextBox> </p>
                      <p class="page_title1">Email<asp:RequiredFieldValidator ID="rfvemal1" runat="server" ControlToValidate="TextBox3" CssClass="validator" ErrorMessage="*" SetFocusOnError="True" ToolTip="Enter Email" ValidationGroup="join"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="TextBox3" CssClass="validator" ErrorMessage="*" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="join"></asp:RegularExpressionValidator>
                          <br />
                          <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="none"  CssClass="signbox" ValidationGroup="join" ></asp:TextBox>
                      </p>
                       <p class="page_title1">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" CssClass="validator" ErrorMessage="*" SetFocusOnError="True" ToolTip="Password Required" ValidationGroup="join">*</asp:RequiredFieldValidator>
                        
                           <br />
                          <asp:TextBox ID="TextBox2" runat="server"  AutoCompleteType="none" CssClass="signbox" TextMode="Password" ValidationGroup="join" ></asp:TextBox>                         
                      </p>
                        <p class="page_title1">Confirm Password<asp:RequiredFieldValidator ID="rfvconpass" runat="server" ControlToValidate="TextBox4" CssClass="validator" ErrorMessage="*" SetFocusOnError="True" ToolTip="Reenter Password" ValidationGroup="join">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" CssClass="validator" ErrorMessage="*" ToolTip="Password Mismatch" ValidationGroup="join"></asp:CompareValidator>
                            <br />
                          <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="none"  CssClass="signbox" TextMode="Password" ValidationGroup="join" ></asp:TextBox>
                          
                      </p>
                      <p class="page_title1">
                         <asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="dash_btn2" Width="320px" Height="70px" OnClick="Button1_Click" ValidationGroup="join" />
                            </p>
                      
                      </div>
                  <%--<div class="dashbaord11">
                      <h2>Signup with social sites</h2>
                       <div id="auth-status">
<div id="auth-loggedout">

<div class="fb-login-button" autologoutlink="true" scope="email,user_checkins">Sign Up with Facebook</div>
</div>
<div id="auth-loggedin" style="display: none">
Hi, <span id="auth-displayname"></span>(<a href="#" id="auth-logoutlink">logout</a>)
</div>
</div>
                      <br />
                       <asp:ImageButton ID="imgTwitter" runat="server" ImageUrl="~/image/triter.jpg"
onclick="imgTwitter_Click" />
                  </div>--%>

                  </div></div>
        </asp:Panel>

</asp:Content>
