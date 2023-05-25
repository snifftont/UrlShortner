<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink2.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="cutlink.signIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
     <div class="header">
            <div class="header1">
                 <h1 class="page_title">Sign in</h1>
            </div>
           </div>
    <div class="content">
              <div class="content_inner">
                  <div class="dashboard55">
                      <p class="page_title1">Email<br />
                          <asp:TextBox ID="TextBox1" runat="server" CssClass="signbox" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="ch"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="TextBox1" CssClass="validator" ErrorMessage="*" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ch"></asp:RegularExpressionValidator>
                      </p>
                       <p class="page_title1">Password<br />
                          <asp:TextBox ID="TextBox2" runat="server" CssClass="signbox" TextMode="Password" ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ValidationGroup="ch"></asp:RequiredFieldValidator>
                           <br />
                          <a href="forgetpassword.aspx" class="a3"> forgot your password?</a>
                      </p>
                       <p class="page_title1">
                           <asp:Label ID="msgdisp" runat="server"></asp:Label>
                      </p>
                      <p class="page_title1">
                         <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="dash_btn2" ValidationGroup="ch" Width="230px" Height="70px" OnClick="Button1_Click" />
                            </p>

                      </div>
                  <div class="dashbaord11">
                      <h2>Sign in with social links</h2>
                       <div id="auth-status">
<div id="auth-loggedout">

<div class="fb-login-button" autologoutlink="true" scope="email,user_checkins">Sign In with Facebook</div>
</div>
<div id="auth-loggedin" style="display: none">
Hi, <span id="auth-displayname"></span>(<a href="#" id="auth-logoutlink">logout</a>)
</div>
</div>
                      <br />
                       <asp:ImageButton ID="imgTwitter" runat="server" ImageUrl="~/image/twitter1.png"
onclick="imgTwitter_Click" />
                  </div>
                  </div>

    </div>

</asp:Content>
