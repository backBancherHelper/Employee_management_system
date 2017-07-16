 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Formdetails.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>EMS Register</title>
        <style type = "text/css">
        @import url(http://fonts.googleapis.com/css?family=Open+Sans);
        .btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
        .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
        .btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
        .btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
        .btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
        .btn-primary.active { color: rgba(255, 255, 255, 0.75); }
        .btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
        .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
        .btn-block { width: 100%; display:block; }

        * { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

        html { width: 100%; height:100%; overflow-x:hidden; overflow-y:scroll }

        body {
           width: 100%;
           height:100%;
           font-family: 'Open Sans', sans-serif;
           color:white;
           background: #092756;
           background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
           background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
           background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
           background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
           background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
           filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
        }
        .register {
           position: absolute;
           top: 25%;
           left: 50%;
           margin: -150px 0 0 -150px;
           width:300px;
           height:300px;
        }
        .register h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

        input{
           width: 100%;
           margin-bottom: 10px;
           background: rgba(0,0,0,0.3);
           border: none;
           outline: none;
           padding: 10px;
           font-size: 13px;
           color: #fff;
           text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
           border: 1px solid rgba(0,0,0,0.3);
           border-radius: 4px;
           box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
           -webkit-transition: box-shadow .5s ease;
           -moz-transition: box-shadow .5s ease;
           -o-transition: box-shadow .5s ease;
           -ms-transition: box-shadow .5s ease;
           transition: box-shadow .5s ease;
        }
        input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
        
      </style>
    </head>
<body>
    <<img src="images/image1.jpg" height="80" width="80"/>
    <div class="register">
        <form id="form1" runat="server">

        <h1>Employee Details Form</h1>
            Employee Number<asp:TextBox ID="Employeeno" runat="server" placeholder="Enter your Employee Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="employeenovalidator" runat="server" ControlToValidate="Employeeno" Display="Dynamic" ErrorMessage="Employee Number Required" ForeColor="Red"/>
            <br/>

            First Name<asp:TextBox ID="firstname" runat="server" placeholder="Enter your First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstnamevalidator" runat="server" ControlToValidate="firstname" Display="Dynamic" ErrorMessage="First Name Required" ForeColor="Red"/>
            <br/>

            Middle Name<asp:TextBox ID="middlename" runat="server" placeholder="Enter your Middle Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="middlenamevalidator" runat="server" ControlToValidate="middlename" Display="Dynamic" ErrorMessage="Middle Name Required" ForeColor="Red"/>
            <br/>

            Last Name<asp:TextBox ID="lastname" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lastnamevalidator" runat="server" ControlToValidate="lastname" Display="Dynamic" ErrorMessage="Last Name Required" ForeColor="Red"/>
            <br/>

            Date of Birth<asp:TextBox type="date" ID="DOB" runat="server" placeholder="Date Of Birth"></asp:TextBox>
            <asp:RequiredFieldValidator ID="dateofbirthvalidator" runat="server" ControlToValidate="DOB" Display="Dynamic" ErrorMessage="Date Of Birth Required" ForeColor="Red"/>
            <br/>

            Contact Number<asp:TextBox ID="Contact" runat="server" placeholder="Enter your Phone Number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="contactvalidator" runat="server" ErrorMessage="Contact No Required" ControlToValidate="Contact" ForeColor="Red" ValidationExpression="^[0-9]*$"/>
            <br/>

            Gender<br /><asp:DropDownList ID="Gender" runat="server" Width="300px" Height="35px" style="border-radius: 4px; background: rgba(0,0,0,0.3); outline: none; padding: 10px; font-size: 13px; color: #fff;" CausesValidation="True" >
                <asp:ListItem Text="Select Gender" Value="-"></asp:ListItem>
                <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
            </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="gendervalidator" runat="server" ControlToValidate="Gender" Display="Dynamic" ErrorMessage="Gender Required" ForeColor="Red"/>
            <br/>
            <br/><br/>

       Marital Status<br />     <asp:DropDownList ID="Marital" runat="server" Width="300px" Height="35px" style="border-radius: 4px; background: rgba(0,0,0,0.3); outline: none; padding: 10px; font-size: 13px; color: #fff;" >
                <asp:ListItem Text="Select Marital Status" Value="-"></asp:ListItem>
                <asp:ListItem Text="Married" Value="M"></asp:ListItem>
                <asp:ListItem Text="Unmarried" Value="U"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="maritalvalidator" runat="server" ControlToValidate="Marital" Display="Dynamic" ErrorMessage="Marital Status Required" ForeColor="Red"/>
            <br/>
            <br /><br />
            
            Designation<asp:TextBox ID="Designation" runat="server" placeholder="Enter your Designation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="designationvalidator" runat="server" ControlToValidate="Designation" Display="Dynamic" ErrorMessage="Designation Required" ForeColor="Red"/>
            <br/>

            Department<asp:TextBox ID="Department" runat="server" placeholder="Enter your Department"></asp:TextBox>
            <asp:RequiredFieldValidator ID="departmentvalidator" runat="server" ControlToValidate="Department" Display="Dynamic" ErrorMessage="Department Required" ForeColor="Red"/>
            <br/>

            Salary<asp:TextBox ID="Salary" runat="server" placeholder="Enter your Salary in ₹"></asp:TextBox>
            <asp:RegularExpressionValidator ID="salaryvalidator" runat="server" ErrorMessage="Salary Required" ControlToValidate="Salary" ForeColor="Red" ValidationExpression="^[0-9]*$"/>
            <br/>

            Address<asp:TextBox ID="Address" runat="server" placeholder="Enter your Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="addressvalidator" runat="server" ControlToValidate="Address" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"/>
            <br/>

            <br /><asp:Button ID="Submit" runat="server" Text="Submit" class="btn btn-primary btn-block btn-large" OnClick="Submit_Click"/><br />
            <asp:Button ID="Reset" runat="server"  CausesValidation="false" Text="Reset" class="btn btn-primary btn-block btn-large" OnClick="btnReset_Click"/><br />
            <asp:Button ID="GoBack" runat="server" Text="Go Back"  CausesValidation="false"  class="btn btn-primary btn-block btn-large" OnClick="btnGoBack_Click"/><br />
        </form>
    </div>
    
</body>
</html>
