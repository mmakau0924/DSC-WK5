<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DSC_WK5.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 256px;
        }
    </style>
</head>
<body>
    <div class="nav">
        <ul>
       <li> <a href="Contact.aspx">Contact.aspx</a> </li>
       <li> <a href="RequestListing.aspx">RequestListing.aspx</a> </li>
            </ul>
    </div>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="AgeTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone No.</td>
                    <td>
                        <asp:TextBox ID="PhoneTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">More Info.</td>
                    <td>
                        <asp:TextBox ID="InfoTxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
        <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="Button1_Click" />
    </form>
</body>
</html>
