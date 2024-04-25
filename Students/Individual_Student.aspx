<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Individual_Student.aspx.cs" Inherits="Students.Individual_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 108px;
        }
        .auto-style5 {
            width: 108px;
            height: 26px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            width: 130px;
            height: 26px;
        }
        .auto-style9 {
            width: 288px;
        }
        .auto-style10 {
            height: 26px;
            width: 288px;
        }
        .auto-style11 {
            width: 217px;
        }
        .auto-style12 {
            width: 217px;
            height: 26px;
        }
        .auto-style13 {
            width: 121px;
        }
        .auto-style14 {
            width: 121px;
            height: 26px;
        }
        .auto-style15 {
            width: 155px;
        }
        .auto-style16 {
            width: 155px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Individual Student</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">StudentIDX</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtStudentIDX1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">First Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFirstName1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Surname</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSurname1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style14"></td>
                <td class="auto-style10"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style7">Age</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAge1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Date of Birth</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDateOfBirth1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">ID Number</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtIDNum1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Contact Number</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContactNum1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Enabled</td>
                <td class="auto-style3">
                    <asp:CheckBox ID="bitEnabled1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">
                    <input type ="button" id ="ButtonExit" onclick="Javascript: window.close()" value="Exit" />
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
