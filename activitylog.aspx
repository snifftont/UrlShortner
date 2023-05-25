<%@ Page Title="" Language="C#" MasterPageFile="~/cutlink.Master" AutoEventWireup="true" CodeBehind="activitylog.aspx.cs" Inherits="cutlink.activitylog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard55">
        <center>
        <asp:GridView ID="grdactivity" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"  ForeColor="Black" GridLines="Vertical" Width="700px" AllowPaging="True" PageSize="20" OnPageIndexChanging="grdactivity_PageIndexChanging">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
              <%--  <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="accountid" HeaderText="accountid" SortExpression="accountid" />--%>
               <%-- <asp:BoundField DataField="logdate" HeaderText="Log Date" SortExpression="logdate" />
                <asp:BoundField DataField="activity" HeaderText="Activity" SortExpression="activity" />--%>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Log Date
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Convert.ToDateTime(Eval("logdate")).ToString("dd/MMM/yyyy") %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                    <HeaderTemplate>
                        Activity
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Eval("activity") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>
           
            </center>
    </div>
</asp:Content>
