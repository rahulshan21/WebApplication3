﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Deptno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Deptno" HeaderText="Deptno" ReadOnly="True" SortExpression="Deptno" />
                <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
                <asp:BoundField DataField="Loc" HeaderText="Loc" SortExpression="Loc" />
            </Columns>
        </asp:GridView>
       
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mysqlConnectionString %>" SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
        
        <br />
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView2" runat="server" Height="173px" Width="307px" DataKeyNames ="Deptno" EnableViewState="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
        </asp:GridView>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
       
    </form>
</body>
</html>