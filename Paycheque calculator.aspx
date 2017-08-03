<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paycheque calculator.aspx.cs" Inherits="Paycheque_Calculator.Paycheque_calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">

        <h1> Payroll</h1>
        <br />
        <br />
        <br />
        
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>  &nbsp;  <asp:TextBox ID="txtTextbox1" runat="server" Width="129px"></asp:TextBox>&nbsp;

        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtTextbox1" ErrorMessage="No numbers or special characters!" ForeColor="Red">*</asp:RequiredFieldValidator>

        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label> &nbsp;<asp:TextBox ID="txtTextbox2" runat="Server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtTextbox2" ErrorMessage="No numbers or special characters" ForeColor="Red">*</asp:RequiredFieldValidator>

        &nbsp;

        <asp:Label ID="Label3" runat="Server" Text="Hours worked per week"></asp:Label>&nbsp; <asp:TextBox ID="txtTextbox3" runat="server"></asp:TextBox>&nbsp;<asp:RangeValidator ID="rv1" runat="server" ControlToValidate="txtTextbox3" ErrorMessage="Decimal format, and not less than 0 or greater than 80!" ForeColor="Red" MaximumValue="80" MinimumValue="0">*</asp:RangeValidator>
&nbsp;<asp:Label ID="Label4" runat="Server" Text="Hourly rate of pay"></asp:Label>&nbsp; <asp:TextBox ID="txtTextbox4" runat="server" OnTextChanged="txtTextbox4_TextChanged"></asp:TextBox>


        
    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="rvf4" runat="server" ControlToValidate="txtTextbox4" ErrorMessage="Should be in decimal format!" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Calculate Gross Pay" OnClick="Button1_Click" />  &nbsp;
        
        <asp:Label ID="Label5" runat="Server" Text="Gross Pay"></asp:Label>&nbsp; <asp:TextBox ID="txtTextbox5" runat="server"></asp:TextBox>

        &nbsp;
        
        <asp:Button ID="Button2" runat="server" Text="Calculate Tax Pay" OnClick="Button2_Click" />&nbsp; <asp:Label ID="Label6" runat="server" Text="Tax Pay"></asp:Label>&nbsp; <asp:TextBox ID="txtTextbox6" runat="server"></asp:TextBox>

      &nbsp;  <asp:Button ID="Button3" runat="server" Text="Calculate Net Pay" OnClick="Button3_Click" />&nbsp;

        <asp:Label ID="Label7" runat="server" Text="Net Pay">&nbsp;</asp:Label> <asp:TextBox ID="txtTextbox7" runat="server"></asp:TextBox> 

        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="CLEAR" OnClick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;
        <br />


        
    </div>
    </form>
</body>
</html>
