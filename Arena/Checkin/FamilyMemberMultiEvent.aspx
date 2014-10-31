<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="FamilyMemberMultipleEvent, CheckIn" title="Untitled Page" %>
<%@ Register TagPrefix="anthem" Namespace="Anthem" Assembly="Anthem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">

    <script type="text/javascript">
    var callback = false;
    var checkedImage = '<%= kiosk.Theme.MapImageUrl("checkbox_checked.png") %>'
    var uncheckedImage = '<%= kiosk.Theme.MapImageUrl("checkbox_blank.png") %>'
    
    function setPersonState(personID, selected)
    {
		var div = document.getElementById("div_" + personID);
		var photo = document.getElementById("photo_" + personID);
		var formCheckbox = document.getElementById("cbPerson_" + personID);
		var imageCheckbox = document.getElementById("imgCheckbox_" + personID);
		
		formCheckbox.checked = selected;
		if (selected)
		{
			imageCheckbox.src = checkedImage;
			div.className = "FamilyMemberMultiEvent_Frame FamilyMemberMultiEvent_Frame_Selected";
			photo.className = "FamilyMemberMultiEvent_PersonImage_Container FamilyMemberMultiEvent_PersonImage_Container_Selected";
		}
		else
		{
			imageCheckbox.src = uncheckedImage;
			div.className = "FamilyMemberMultiEvent_Frame";
			photo.className = "FamilyMemberMultiEvent_PersonImage_Container";
		}
			
		updateFinishedButtonState();
		updateCount();
    }
    
    function toggleSelected(personID)
    {
		var checkbox = document.getElementById("cbPerson_" + personID);
		setPersonState(personID, !checkbox.checked);
    }
    
    function updateFinishedButtonState()
    {
		// Don't allow check in when no people are selected
		var finishedButton = $('#<%= FinishedButtonID %>');
		if (getCheckedCount() == 0)
			finishedButton.attr('disabled', 'disabled').addClass('Disabled');
		else
			finishedButton.removeAttr('disabled').removeClass('Disabled');
    }
    
    function enableImages()
    {
		$('.FamilyMemberMultiEvent_PersonImage_Container').css('visibility', 'visible');
    }
    
    function getTotalCount()
    {
		return $(':checkbox').length;
    }
    
    function getCheckedCount()
    {
		return $(':checkbox:checked').length;
    }
       
    function updateCount()
    {
		$('#FamilyMemberMultiEvent_Status').html('<b>' + getCheckedCount() + '</b> out of <b>' + getTotalCount() + '</b> selected');
    }
    
	$(document).ready(function() {
	
		// Scrolling
		var $target = $('#FamilyMemberMultiEvent_Content_Container');
		var $prev = $('#FamilyMemberMultiEvent_ScrollButtonPrev');
		var $next = $('#FamilyMemberMultiEvent_ScrollButtonNext');
		var $scrollState = $('#<%= hdnScrollState.ClientID %>');
		var $height = $target.height();
		
		// Only show scroll button if there are more items than fit on page.
		if ($target.attr('scrollHeight') > $height)
			$('#FamilyMemberMultiEvent_Scroll_Container').show();
		
		$prev.click(function(){
			scroll($target, 'up', $height, 1000, 1, $prev, $next, $scrollState);
		});
		
		$next.click(function(){
			scroll($target, 'down', $height, 1000, 1, $prev, $next, $scrollState);
		});
		
		// Scroll to remembered page
		var pagesToScroll = $scrollState.attr('value');
		$scrollState.attr('value', 0);
		scroll($target, 'down', $height, 0, pagesToScroll, $prev, $next, $scrollState);

	 });
	 
	 function scroll(target, dir, height, speed, pages, prev, next, scrollState)
	 {
		var op = '';
		var page = scrollState.attr('value');
		var pixelsToScroll = height * pages;
		
		if (dir == 'down')
		{
			op = '+=';
			page += pages;
		}
		else
		{
			op = '-=';
			page -= pages;
		}
		
		target.scrollTo( op + pixelsToScroll + 'px', speed, 
			{onAfter:function(){
				scrollState.attr('value', page);	// Remember current page.
				target.show();	// Show scroll contents after done scrolling originally to avoid flicker
				
				// Enable/disabled scroll up
				if (target.attr('scrollTop') == '')
					prev.attr('disabled', 'disabled').addClass('Disabled');
				else
					prev.removeAttr('disabled').removeClass('Disabled');
				
				// Enable/disable scroll down
				if (target.attr('scrollTop') + height == target.attr('scrollHeight'))
					next.attr('disabled', 'disabled').addClass('Disabled');
				else
					next.removeAttr('disabled').removeClass('Disabled');
			}}
		);
	 }
	
    </script>
    
    <input type="hidden" name="personIds" value="" />

    <div class="Title_Container" id="FamilyMemberMultiEvent_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
    </div>

    <div class="Instructions_Container" id="FamilyMemberMultiEvent_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
    </div>

    <div class="Content_Container" id="FamilyMemberMultiEvent_Content_Container" style="display:none;">
        
		<asp:Repeater ID="rptFamilyMembers" runat="server">
			<ItemTemplate>
				<div class="FamilyMemberMultiEvent_Panel" id="FamilyMemberPanel" runat="server">
					<div class="FamilyMemberMultiEvent_Frame" id='div_<%# Eval("PersonID") %>'>
						<div class="FamilyMemberMultiEvent_Person">
							<div class="FamilyMemberMultiEvent_CheckBox_Container"><img id='imgCheckbox_<%# Eval("PersonID") %>' src='<%# kiosk.Theme.MapImageUrl("checkbox_blank.png") %>' onclick='toggleSelected(<%# Eval("PersonID") %>);' class="FamilyMemberMultiEvent_CheckBox" alt="" /></div>
							<div>
								<div class="FamilyMemberMultiEvent_PersonName_Container" onclick='toggleSelected(<%# Eval("PersonID") %>);'><asp:Label runat="server" CssClass="FamilyMemberMultiEvent_PersonName" Text='<%# GetPersonName((Arena.Core.Person)Container.DataItem)%>' /></div>
								<div class="FamilyMemberMultiEvent_PersonSubText_Container"><span id='subText_<%# Eval("PersonID") %>'><%# PersonCheckingInText %></span></div>
							</div>		
						</div>
						<div class="FamilyMemberMultiEvent_EventText_Container">
							<%# GetEventsText((Arena.Core.Person)Container.DataItem) %>
						</div>
						<div class="FamilyMemberMultiEvent_ChangeButton_Container">
							<asp:Button ID="btnChange" runat="server" CommandName="Change" CommandArgument='<%# Eval("PersonID") %>' CssClass="FamilyMemberMultiEventChangeButton_Up" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);" onmouseout="up(this);" />
						</div>
						<div class="FamilyMemberMultiEvent_PersonImage_Container" id='photo_<%# Eval("PersonID") %>' style="visibility: hidden;"><asp:Image ImageUrl="<%# GetPersonImageUrl((Arena.Core.Person)Container.DataItem) %>" runat="server" CssClass="FamilyMemberMultiEvent_PersonImage" /></div>
						<input type="checkbox" id='cbPerson_<%# Eval("PersonID") %>' name="cbPerson" value='<%# Eval("PersonID") %>' style="visibility: hidden; display: none;" />
					</div>
				</div>
			</ItemTemplate>
		</asp:Repeater> 
		
		<%= GetPlaceHolders() %>
        
	</div>
	
	<div id="FamilyMemberMultiEvent_Scroll_Container" style="display:none;">
		<input type="button" id="FamilyMemberMultiEvent_ScrollButtonPrev" style="position:relative;" class="ScrollUp_Up" value="" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);" onmouseout="up(this);" />
		<input type="button" id="FamilyMemberMultiEvent_ScrollButtonNext" style="position:relative;" class="ScrollDown_Up" value="" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);" onmouseout="up(this);" />
	</div>
    
    <div id="FamilyMemberMultiEvent_Status_Container">
        <span id="FamilyMemberMultiEvent_Status" class="MediumText"><asp:Label ID="lblStatus" runat="server"></asp:Label></span>
    </div>
    
    <input type="hidden" runat="server" id="hdnScrollState" name="hdnScrollState" value="0" />
    
</asp:Content>

