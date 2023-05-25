<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cutlink.aspx.cs" Inherits="cutlink.cutlink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cutlink</title>
    <link href="css/cutlink.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="menu">
             <div class="menu_inner">
                 <div class="logo">
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo.png"  />
        </div>
                 <div class="menu_main">
                      <span class="sp1">
                    <a href="About.aspx" class="a2">My Recipes </a>&nbsp;&nbsp;&nbsp; &nbsp;   <a href="About.aspx" class="a2">Create</a>&nbsp;&nbsp;&nbsp; &nbsp;
                    <a href="About.aspx" class="a2">Browse </a> &nbsp;&nbsp;&nbsp; &nbsp; <a href="About.aspx" class="a2">Channels </a> &nbsp;&nbsp;&nbsp; &nbsp;
                     <a href="About.aspx" class="a2">Terms</a> 
                </span>
        </div>
        </div>
        </div>
        <div class="header">
            <div class="header1">
                 <h1 class="sp2">DASHBOARD</h1>
            </div>




            </div>

        <div class="footer">
            <div class="footer1">
                <div class="footer2">
                <span class="sp1">
                    <a href="About.aspx" class="a1">About</a> &nbsp &nbsp &nbsp <a href="About.aspx" class="a1">Blog</a> &nbsp &nbsp &nbsp
                    <a href="About.aspx" class="a1">Contact</a> &nbsp &nbsp &nbsp <a href="About.aspx" class="a1">Jobs</a> &nbsp &nbsp &nbsp
                     <a href="About.aspx" class="a1">terms</a> &nbsp &nbsp &nbsp <a href="About.aspx" class="a1">Privacy</a> 
                </span>
                    </div>
                 <div class="footer2">
                <span class="sp1">Beta   ·   Created in Nucleon</span>

                 </div>
        </div>
        </div>

    
    </div>
    </form>
</body>
</html>
