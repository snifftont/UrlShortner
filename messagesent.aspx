<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messagesent.aspx.cs" Inherits="cutlink.messagesent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/cutlink.css" rel="stylesheet" />
     <script type="text/javascript">

         function GetRowValue() {

             // hardcoded value used to minimize the code.

             // ControlID can instead be passed as query string to the popup window

             //   window.opener.document.getElementById("MainContent_txt_BoilEnergyCunsum").value = document.getElementById("txt_Total").value;
            // window.opener.location.href = "Application_Fill_3.aspx";
             window.close();

         }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Thanks!</h2>
        <p>Your Message is sent sucessfully to receipents</p>
        <p>
            <asp:Button ID="btnsend" runat="server" Text="Close" CssClass="dash_btn2" />&nbsp;
        </p>
    </div>
    </form>
</body>
</html>
