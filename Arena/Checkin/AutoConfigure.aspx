<%@ page language="C#" autoeventwireup="true" inherits="AutoConfigure, CheckIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
	
	body
	{
		font-family: Arial;
		font-size: small;
		overflow: hidden;
	}
	
	.big
	{
		font-size: x-large;
		font-family: Arial;
	}
	
	.normal
	{
		font-size: small;
		font-family: Arial;
	}
	
	.error-box
	{
		border: 5px solid red;
		padding: 15px;
	}
    </style>
    <script type="text/javascript">
    var secondsLeft = 60;
    
    function load()
    {
		setTimeout(reload, secondsLeft * 1000);
		setInterval('updateTime()', 1000);
    }
    
    function reload()
    {
		document.location.href='AutoConfigure.aspx?g=<%= System.Guid.NewGuid().ToString() %>';
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
<body onload="load();" onclick="reload();">
    <form id="form1" runat="server">
    
    <br /><br /><br /><br /><br />
    
    <div align="center">
    
		<div>
	    
			<div id="divMessage" runat="server">
				<asp:Image runat="server" ID="imgStatus" Height="32" Width="32" ImageAlign="AbsMiddle" />
				<asp:Label ID="lblStatus" runat="server" CssClass="big"></asp:Label>
			</div>
			
			<br />
			<br />
			
			<asp:GridView ID="gvSchedule" runat="server" AutoGenerateColumns="false" CellPadding="4" style="text-align:left">
				<HeaderStyle BackColor="#e3e3e3" Font-Underline="true" />
				<Columns>
					<asp:BoundField HeaderText="Schedule Name" DataField="ScheduleName" />
					<asp:TemplateField HeaderText="Frequency">
						<ItemTemplate><%# GetFrequencyText((Arena.Computer.ComputerSystemCheckinSchedule) Container.DataItem) %></ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Event Type">
						<ItemTemplate><%# GetEventTypeText((Arena.Computer.ComputerSystemCheckinSchedule) Container.DataItem) %></ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Start Time">
						<ItemTemplate><%# Eval("StartTime", "{0:t}") %></ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="End Time">
						<ItemTemplate><%# Eval("EndTime", "{0:t}") %></ItemTemplate>
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
			
			<br /><br />
			
			<span class="normal">Last checked at <asp:Label ID="lblLastChecked" runat="server"></asp:Label>.&nbsp; Checking again in <span id="seconds" style="font-weight:bold;">60</span> seconds...</span>
			
			<br /><br /><br />
			
			<asp:Panel ID="pnlKiosk" runat="server">
				<fieldset style="width: 350px; display:block;">
					<legend class="normal">Current Kiosk</legend>
					
					<table border="0" cellpadding="3" cellspacing="0" align="center">
					<tr>
						<td class="normal" align="left"><b>System ID: </b></td>
						<td class="normal" align="left"><asp:Label ID="lblSystemID" runat="server" /></td>
					</tr>
					<tr>
						<td class="normal" align="left"><b>DNS Name:</b></td>
						<td class="normal" align="left"><asp:Label ID="lblDNSName" runat="server" /></td>
					</tr>
					<tr>
						<td class="normal" align="left"><b>System Name:</b></td>
						<td class="normal" align="left"><asp:Label ID="lblSystemName" runat="server" /></td>
					</tr>
					</table>
				</fieldset>
			</asp:Panel>
			
			<br />
			<br />
			<br /><br />
					<br /><br />
		
			
			
			
			
			<asp:Panel ID="pnlInstructions" runat="server">
			
				<table border="0" cellpadding="0" cellspacing="0" align="center" style="width:400px">
				<tr>
					<td align="left">
				
						<p class="normal"><b>How to create a kiosk schedule:</b></p>
						<ul class="normal">
							<li>Load Arena in your web browser.</li><li>Click on "Check-In" on the left menu and select "Kiosks"</li><li>Find this kiosk in the list and click on "Schedules".</li><li>Add a new schedule.  Select Occurrence Type: [Centralized] if this kiosk should take attendance for many events.  If this kiosk should take attendance for a specific Occurrence Type, then select that Occurrence Type.</li>
						</ul>
					
					</td>
				</tr>
				</table>
				
			</asp:Panel>
			
		</div>
		
    </div>
    </form>
</body>
</html>
