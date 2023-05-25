<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="cutlink.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Email</title>
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
    <h5>SHARE VIA EMAIL</h5>
    <p>Please enter the email address below to whom you send link:</p>
    <p>To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtto" runat="server" placeholder="Email address, comma" CssClass="signbox"></asp:TextBox></p>
        <p>
            Message: &nbsp;<asp:TextBox ID="txtmessage" runat="server" placeholder="Include a mesage?" TextMode="MultiLine" Height="100px" CssClass="signbox"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnsend" runat="server" Text="Send Email" CssClass="dash_btn2" OnClick="btnsend_Click" />&nbsp;
            <asp:LinkButton ID="lnkexit" runat="server" Text="Close"></asp:LinkButton>
        </p>
    </div>
    </form>
   
</body>
</html>
