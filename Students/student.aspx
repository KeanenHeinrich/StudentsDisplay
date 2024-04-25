<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Students.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            width: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="divDropdown">
            Select Student: <br/>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" OnInit="addDefaultValue">
            </asp:DropDownList>
        </div>
        <br/>
        <div id ="divTable">
            <table cellpadding="0" cellspacing="0" class="auto-style1" id="resultsTable">
                <tr>
                    <td class="auto-style4">Student IDX</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtStudentIDX" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">First Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Surname</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSurname" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Age</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAge" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Date of Birth</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDOB" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">ID Number</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtIDNum" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Cell Number</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCellNum" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"> Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" Width="240px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Enabled</td>
                    <td class="auto-style3">
                        <asp:CheckBox ID="bitEnabled" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="ButtonClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="ButtonClose" runat="server" Text="Close" OnClick="ButtonClose_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
