<%@ page language="C#" autoeventwireup="true" inherits="Login, CheckIn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head2" runat="server">
    <title>Login</title>
    <style type="text/css">
    html
    {
		overflow: hidden;
    }
    
    body
    {
		font-family: Verdana;
		font-size: 42pt;
    }
    
    #Login_Dialog_Container
	{
		position: absolute;
		top: 150px;
		left: 150px;
		width: 600px;
		padding-top: 10px;
		padding-bottom: 10px;
		background-color: white;
		z-index: 100;
		padding: 30px;
	}

	#Login_Dialog_Title
	{
		font-weight: bold;
		font-size: 32pt;
		font-family: Arial, Verdana;
		color: #888;
		width: 100%;
		display: block;
		margin-bottom: 10px;
		height: 50px;
		padding-top: 10px;
		
	}

	#Login_Dialog_Details
	{
		color: #000;
		font-family: Arial, Verdana;
		font-size: 24pt;
		display:block;
	}
	
	#Login_Dialog_Message
	{
		font-size: .8em;
		color: Red;
	}
	input
	{
		font-size: 22pt;
	}
	
	input.ActionButton_Up
    {
	    border: outset 0px black;
	    height: 77px;
	    width: 172px;
	    color: white;
	    font-size: 22pt;
	    background-image:url(Themes/arena/Images/action_button.png);
	    background-color: Gray;
    }

    input.ActionButton_Down
    {
	    border: outset 0px black;
	    height: 77px;
	    width: 172px;
	    color: white;
	    font-size: 22pt;
	    background-image:url(../Images/action_button_down.png);
	    background-color: Gray;
    }
    </style>
    <meta http-equiv="PRAGMA" content="NO-CACHE">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
		<div id="Login_Dialog_Container">
			<div id="Login_Dialog_Title">
				Login
			</div>
			<div id="Login_Dialog_Details">
				<div id="Login_Dialog_Message"><asp:Literal ID="lblMessage" runat="server"></asp:Literal></div>
                <table style="width: 100%;" cellpadding="3">
                <tr>
                    <td><label id="lbUsername" runat="server">Username</label></td>
                    <td><asp:TextBox ID="tbUsername" runat="server" Width="440" Height="43"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label id="lbPassword" runat="server">Password</label></td>
                    <td><asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="440" Height="43"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="right"><asp:Button ID="btnLogin" runat="server" CssClass="ActionButton_Up" OnClick="btnLogin_Click" Text="Login" /></td>
                </tr>
                </table>
			</div>
        </div>
    </div>
    </form>
</body>
</html>
