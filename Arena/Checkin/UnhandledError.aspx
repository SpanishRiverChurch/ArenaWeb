<%@ page language="C#" autoeventwireup="true" inherits="UnhandledError, CheckIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    html
    {
		overflow: hidden;
    }
    
    body
    {
		font-family: Verdana;
		font-size: small;
    }
    
    #Error_Dialog_Container
	{
		position: absolute;
		top: 250px;
		left: 150px;
		width: 600px;
		padding-top: 10px;
		padding-bottom: 10px;
		background-color: white;
		border: 5px solid red;
		z-index: 100;
		padding: 30px;
	}

	#Error_Dialog_Title
	{
		font-weight: bold;
		font-size: x-large;
		font-family: Arial, Verdana;
		color: Red;
		width: 100%;
		display: block;
		margin-bottom: 10px;
		background-image: url(Management/Images/error.gif);
		background-repeat: no-repeat;
		padding-left: 65px;
		height: 50px;
		padding-top: 10px;
		
	}

	#Error_Dialog_Details
	{
		color: Red;
		font-family: Arial, Verdana;
		font-size: medium;
		display:block;
	}
	
	#Error_Retry_Container
	{
		position: relative;
		top: 500px;
	}
    </style>
    
    <script type="text/javascript">
    var secondsLeft = 5;
    function load()
    {
		document.getElementById("seconds").innerText = secondsLeft;
		setTimeout(reload, secondsLeft * 1000);
		setInterval('updateTime()', 1000);
    }
    
    function reload()
    {
		document.location.href='<%= Request.ApplicationPath %>/AutoConfigure.aspx?g=<%= System.Guid.NewGuid().ToString() %>';
    }
    
    function updateTime()
    {
		secondsLeft--;
		if (secondsLeft >= 0)
		{
			document.getElementById("seconds").innerText = secondsLeft;
		}
    }
    </script>
    <meta http-equiv="PRAGMA" content="NO-CACHE">
</head>
<body onload="load();">
    <form id="form1" runat="server">
    <div>
    
		<div id="Error_Dialog_Container">
			<div id="Error_Dialog_Title">
				<asp:Label ID="lblTitle" runat="server"></asp:Label>
			</div>
			<div id="Error_Dialog_Details">
				<asp:Label ID="lblDetail" runat="server"></asp:Label>
			</div>
        </div>
        
        <div id="Error_Retry_Container" align="center">
			Restarting in <span id="seconds" style="font-weight: bold;"></span>&nbsp;seconds.
        </div>
    
    </div>
    </form>
</body>
</html>
