<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink4.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="cutlink.logout" %>
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
                            FB.logout(function () { window.location.reload(); });
                            document.getElementById('auth-displayname').innerHTML = me.name;
                           // window.location.assign("check.aspx?name=" + me.name + "&id=" + me.id + "&email=" + me.email);
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
    <div class="content">
              <div class="content_inner">
                  <div class="dashboard">
     <div class="recip" style="float:left; margin-top:30px;">
                          You are sucessfully logged out from cutlink.
                       </div></div></div></div>
</asp:Content>
