<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SelectEventMultiple, CheckIn" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    
    <script type="text/javascript">
    var callback = false;
    
    $(function()
	{
		// Turn on custom scrollbaars
		$('#SelectEventMultiple_Results_Scroll_Content').jScrollPane({showArrows:true, scrollbarWidth: 70, arrowSize: 70, wheelSpeed:100});
		
		// Toggle state when button is clicked
		$('.SelectEventMultiple_NameButton_Container input').click(function()
		{
			toggle($(this).attr('stickyButtonValue'));
		});
		
		// Toggle state when checkbox image is clicked
		$('.CheckBox').click(function()
		{
			toggle($(this).attr('value'));
		});
	});
	
	function toggle(id)
	{
		setState(id, !$('#cbOccurrenceID_' + id).is(':checked'));
	}
	
	function setState(id, selected)
	{
		var image = $('#imgOccurrenceID_' + id);
		var button = $('#btnOccurrenceID_' + id);
		var cb = $('#cbOccurrenceID_' + id);
		
		if (selected)
			cb.attr('checked', 'checked');
		else
			cb.removeAttr('checked');
		
		if (selected)
		{
			image.addClass('CheckBox_Checked');
			button.addClass('NameButton_Down').removeClass('NameButton_Up');
		}
		else
		{
			image.removeClass('CheckBox_Checked');
			button.removeClass('NameButton_Down').addClass('NameButton_Up');
		}
		
		updateCount();
		updateStates();
	}
	
	function enableOrDisable(id, disabled)
    {
		var image = $('#imgOccurrenceID_' + id);
		var button = $('#btnOccurrenceID_' + id);
		
		if (disabled)
		{
			image.attr('disabled', 'disabled').addClass('Disabled');
			button.attr('disabled', 'disabled').addClass('Disabled');
		}
		else
		{
			image.removeAttr('disabled').removeClass('Disabled');
			button.removeAttr('disabled').removeClass('Disabled');
		}
    }
    
    function updateStates()
    {
		var toDisable = {};
		
		// Calculate which buttons to disable due to conflicts
		$('.SelectEventMultiple_NameButton_Container input').each(function()
		{
			var id = $(this).attr('stickyButtonValue');
			var cb = $('#cbOccurrenceID_' + id);
			
			if (cb.is(':checked'))
			{
				var theseConflicts = conflicts[id];
				jQuery.each(theseConflicts, function(i, item){
					toDisable[theseConflicts[i]] = true;
				});
			}
		});
		
		// Perform enable/disable
		$('.SelectEventMultiple_NameButton_Container input').each(function()
		{
			var id = $(this).attr('stickyButtonValue');
			if (toDisable[id] == true)
				enableOrDisable(id, true);
			else
				enableOrDisable(id, false);
		});
    }
    
    function updateCount()
    {
        $("#SelectEventMultiple_Status").html("<b>" + getCount() + "</b> selected");
    }
    
    function getCount()
    {
		return $(':checkbox:checked').length;
    }
      
    </script>
    
    <div class="Title_Container" id="SelectEventMultiple_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
    </div>
    
    <div class="Instructions_Container" id="SelectEventMultiple_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
    </div>

    <div class="Content_Container" id="SelectEventMultiple_Content_Container">

        <asp:Label ID="lblMessage" runat="server" CssClass="ErrorMessage"></asp:Label>

        <div id="SelectEventMultiple_Results_Scroll_Container" style="float:left; margin: 10px;">
            <div id="SelectEventMultiple_Results_Scroll_Content">

                <asp:DataList ID="dlEvents" runat="server">
                    <ItemTemplate>
						<table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="SelectEventMultiple_Check_Container"><img class="CheckBox" src='blank.gif' id='imgOccurrenceID_<%# Eval("OccurrenceID") %>' value='<%# Eval("OccurrenceID") %>' style="border:0px;" /></td>
                            <td>
                                <div class="NameButton_Container SelectEventMultiple_NameButton_Container">
                                    <input type="button" class="NameButton_Up" name="OccurrenceID" id='btnOccurrenceID_<%# Eval("OccurrenceID") %>' value="<%# GetEventText((Arena.Core.Occurrence) Container.DataItem) %>" stickyButtonValue="<%# ((Arena.Core.Occurrence) Container.DataItem).OccurrenceID %>" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);" />
                                </div>    
                            </td>
                        </tr>
                        </table>
                        <input type="checkbox" name="cbOccurrenceID" id='cbOccurrenceID_<%# Eval("OccurrenceID") %>' value='<%# Eval("OccurrenceID") %>' style="display:none;" />
                    </ItemTemplate>
                </asp:DataList>
            
            </div>
        </div>
    
    </div>
    
    <div id="SelectEventMultiple_Status_Container">
        <span id="SelectEventMultiple_Status" class="MediumText"><asp:Label ID="lblStatus" runat="server"></asp:Label></span>
    </div>
                   
</asp:Content>

