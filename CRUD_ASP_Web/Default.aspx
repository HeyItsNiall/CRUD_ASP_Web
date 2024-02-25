<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="CRUD_ASP_Web._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color: blueviolet; font-size: xx-large; color: white;" align="center">
        CRUD Operation in ASP.Net VB
    </div>

    <br />
    <div style="padding: 15px;">

        <table align="center" class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product ID"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:TextBox ID="txtproductID" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" BackColor="#9900CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Search" Width="80px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Item Name"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:TextBox ID="txtitemname" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Specifications"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:TextBox ID="txtspecifications" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Unit"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:DropDownList ID="Dropunit" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>Kg</asp:ListItem>
                        <asp:ListItem>Pieces</asp:ListItem>
                        <asp:ListItem>Dozen</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Color"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:RadioButtonList ID="Radiocolor" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert Date"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="height: 39px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Opening Quantity"></asp:Label>
                </td>
                <td style="height: 39px; width: 690px">
                    <asp:TextBox ID="txtopeningquantity" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product Status"></asp:Label>
                </td>
                <td style="width: 690px">
                    <asp:CheckBox ID="Checkregular" runat="server" Text="Regular" />
                    <asp:CheckBox ID="Checkirregular" runat="server" Text="Irregular" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#9900CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Insert" Width="80px" />
                    <asp:Button ID="Button2" runat="server" BackColor="#9900CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Update" Width="80px" />
                    <asp:Button ID="Button3" runat="server" BackColor="#9900CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Delete" Width="80px" OnClientClick="return confirm('Are you sure to delete?')" />
                </td>
            </tr>
        </table>
        <div align="center">

            <asp:GridView ID="GridView1" runat="server" Width="80%">
                <HeaderStyle BackColor="#9900FF" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>

</asp:Content>
