<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="preference.aspx.cs" Inherits="cutlink.preference" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/jquery-ui1.css" rel="stylesheet" />
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 <%-- <link rel="stylesheet" href="/resources/demos/style.css">--%>
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="pre_h">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="header1">
                 <h1 class="page_title">Preferences</h1>
            </div>
           </div>
     <div class="content">
              <div class="content_inner1">

                  <div class="taboco" >

                      <div id="tabs">
  <ul>
    <li><a href="#tabs-1">Setting</a></li>
    <li><a href="#tabs-3">Profile</a></li>
  </ul>
  <div id="tabs-1">
      <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
      <div style="margin-top:10px; float:left; width:980px;">
          <div>
           
      <div class="pre2">
           <p class="page_title1">Username</p>
      </div>
       <div class="pre3">
           <p class="chan"> <asp:Label ID="Label1" runat="server"></asp:Label><asp:TextBox ID="TextBox1" CssClass="signbox" runat="server"></asp:TextBox>
               <br /> <asp:LinkButton runat="server" class="chan1" style="color: #3cf; line-height:10px" ID="userchange" OnClick="userchange_Click">Change</asp:LinkButton>
          <asp:LinkButton runat="server" class="chan1" style="color: #3cf; line-height:10px" ID="userupdate" OnClick="userupdate_Click">Update</asp:LinkButton> </p>
      </div>
                <div class="border1"></div>
           </div>
          <div>
           
      <div class="pre2">
           <p class="page_title1">Password</p>
      </div>
       <div class="pre3">
           <p class="chan"> <asp:Label ID="Label2" runat="server" Text="**********"></asp:Label><asp:TextBox ID="TextBox2" TextMode="Password" CssClass="signbox" runat="server" placeholder="Enter new password" Visible="false"></asp:TextBox>
               <br /> <asp:LinkButton ID="ln01" runat="server" class="chan1" style="color: #3cf; line-height:10px" OnClick="Unnamed1_Click">Change</asp:LinkButton>
               <asp:LinkButton ID="userupdate0" runat="server" class="chan1" style="color: #3cf; line-height:10px" OnClick="userupdate0_Click">Update</asp:LinkButton>
           </p>
      </div>
                <div class="border1"></div>
           </div>
            <div>
           
      <div class="pre2">
           <p class="page_title1">Email address</p>
      </div>
       <div class="pre3">
           <p class="chan">
               <asp:Label ID="Label3" runat="server"></asp:Label>
              <p class="chan"> 
                 </p>
              
        
      </div>
                <div class="border1"></div>
           </div>
            <%--<div>
           
      <div class="pre2">
           <p class="page_title1">Time zone</p>
      </div>
       <div class="pre3">
           <p class="chan">
               <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="signbox" Width="100%"></asp:DropDownList>
            
                 </p>
                <p class="p1">
                   Changing this setting does not affect your
                      <a href="#" class="chan1" style="color: #3cf; line-height:10px"> Date & Time Channel.</a>
                                  
                               </p>
              
        
      </div>
                <div class="border1"></div>
           </div>

            <div>
           
      <div class="pre2">
           <p class="page_title1">URL shortening</p>
      </div>
       <div class="pre4" >
        
               
            
               
                <p class="pchec"><asp:CheckBox ID="CheckBox1" runat="server" Text="  Auto shorten URLs" /></p>
                     <p class="p1">
                  IFTTT uses    <a href="#" class="chan1" style="color: #3cf; line-height:10px"> cutlink</a>  and a custom domain (ift.tt) to shorten URLs where applicable.
                   
                                  
                               </p>
           <p>
                 <asp:Button ID="Button1" runat="server" Text="Use your cutlink account" CssClass="dash_btn2" Width="290px" Height="50px" />
           </p>
              
        
      </div>
                <div class="border1"></div>--%>
           </div>
             <div>
           
     <%-- <div class="pre2">
           <p class="page_title1">Email communication</p>
      </div>--%>
       <%-- <div class="pre4" >
        
               
            
               
                <p class="pchec"><asp:CheckBox ID="CheckBox2" runat="server" Text="  Important Alerts (recommended)" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" /></p>
                     <p class="p1">
                When a Recipe or Channel encounters a serious issue, Cutlinks can send you an email alert.
                   
                                  
                               </p>
          <p class="pchec"><asp:CheckBox ID="CheckBox3" runat="server" Text="  Friendly emails from The Cutlinks Team" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" /></p>
                     <p class="p1">
             Receive occasional emails about Cutlinks news, tips, and features.
                   
                                  
                               </p>
              
        
      </div>--%>
                <div class="border1"></div>
           </div>
             <div>
           
      <div class="pre2">
        
      </div>
        <div class="pre4" >
        
               
            
               
                 <p class="p1" style="text-align:right; margin-top:20px;">
                 <asp:LinkButton runat="server" ID="deativate" Visible="false" OnClick="deativate_Click" class="chan1" style="color: #3cf; line-height:10px">I’d like to deactivate my account.</asp:LinkButton>
                   
                                  
                               </p>
                     <p class="">
                         &nbsp;</p>
              
        
      </div>
              
           </div>
         
         



          </div>
    
   </ContentTemplate></asp:UpdatePanel>
  </div>
  <div id="tabs-2">
      <div class="profile-setup">
    <div class="profile-block">
        <a href="/p/piush1989"></a>
        <a href="/p/piush1989">
            <asp:Image ID="img1" runat="server" width="100px" hei="100px" />
        </a>
        <h4 class="profile-username">
            <asp:Label ID="lblname" runat="server"></asp:Label>
        </h4>
        <p class="link_to_public_profile">

        </p>
        <div class="clear"></div>
    </div>
   
    <div class="profile-setup-helper-text small-helper-text">
Select a new profile Channel
    </div>
   <asp:DropDownList ID="ddlprofile" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddlprofile_SelectedIndexChanged">
       <asp:ListItem Text="Select a profile channel" Value="0"></asp:ListItem>
       <asp:ListItem Text="Facebook" Value="1"></asp:ListItem>
       <asp:ListItem Text="Twitter" Value="2"></asp:ListItem>
   </asp:DropDownList>
    <div></div>
    <script></script>

</div>
  </div>
  <div id="tabs-3">
   
  </div>
</div>


                  </div></div></div>

</asp:Content>
