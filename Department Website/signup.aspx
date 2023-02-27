<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Department_Website.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="flex-container">
            <asp:Image ID="Image1" runat="server" />
            <img src="images/logo.png" class="panel" />
            <h1>Computer Science</h1>
            <div class="input">
                <div>
                    <h5>Matric Number</h5>
                    <asp:TextBox ID="txtmatric" runat="server"></asp:TextBox>  
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmatric" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Enter matric number"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <h5>password</h5>
                    <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtpasswd" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>

                </div>
                <div>
                    <h5>Confirm password</h5>
                    <asp:TextBox ID="TextBox1" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="TextBox1" ControlToCompare="txtpasswd" Font-Size="Medium" ForeColor="Red" ErrorMessage="Password Not match"></asp:CompareValidator>
                </div>
                <br />
                <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn" Text="Sign up" />
                </div>
            </div>
        </div>
        <a class="portfolio-box" href="signin.aspx" title="Sign in">Sign in</a>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString%>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>
