<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Pager, CheckIn" title="Untitled Page" %>

<%@ Register Src="UserControls/KeyPressScanner.ascx" TagName="KeyPressScanner" TagPrefix="uc1" %>
<%@ Register TagPrefix="anthem" Namespace="Anthem" Assembly="Anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">
    <div class="Title_Container" id="Pager_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
    </div>
    <div class="Instructions_Container" id="Pager_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
    </div>
    <div>
        <uc1:KeyPressScanner ID="scanner" runat="server" />
        <asp:Panel ID="pnlKeyPad" runat="server">

            <script type="text/javascript">	    
	            function clicked(ele)
                {
                    var dest = document.getElementById('<%= txtPhoneNumber.ClientID %>');
                    if (dest.value.length < 10)
                    {
                        dest.value += ele.value;
                    }
                    clickButtonSound();
                }

                function clearInput()
                {
                    var ele = document.getElementById('<%= txtPhoneNumber.ClientID %>');
                    ele.value = "";
                }
        	    
	            function backspace()
                {
                    var ele = document.getElementById('<%= txtPhoneNumber.ClientID %>');
                    ele.value = ele.value.substr(0, ele.value.length - 1);
                }
            </script>

            <div id="Pager_Container">
                <div id="Pager_Input_Container">
                    <asp:Label ID="lblPagerInstructions" runat="server" CssClass="InstructionText"></asp:Label><br />
                    <anthem:TextBox ID="txtPhoneNumber" AutoUpdateAfterCallBack="true" runat="server"
                        CssClass="PhoneLookupTextBox" MaxLength="10"></anthem:TextBox>
                </div>
                <div id="Pager_Keys_Container">
                    <table id="Phone_KeyPad_Table" style="margin: 0px auto;">
                        <tr>
                            <td>
                                <input type="button" class="NumericButton_Up" value="1" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" />
                            </td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="2" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="3" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="NumericButton_Up" value="4" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="5" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="6" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="NumericButton_Up" value="7" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="8" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="9" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="NumericButtonOther_Up" value="Back" onclick="backspace();"
                                    onmousedown="down(this);clickButtonSound();" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButton_Up" value="0" onclick="clicked(this);"
                                    onmousedown="down(this);" onmouseup="up(this);" onmouseout="up(this);" /></td>
                            <td>
                                <input type="button" class="NumericButtonOther_Up" value="Clear" onclick="clearInput();"
                                    onmousedown="down(this);clickButtonSound();" onmouseup="up(this);" onmouseout="up(this);" /></td>
                        </tr>
                    </table>
                </div>
                <div id="Pager_Buttons_Container">
                    <div id="Pager_Button_OK_Container">
                        <asp:Button Style="display: inline;" ID="btnOkModal" runat="server" CssClass="ActionButton_Up"
                            Text="OK" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);"
                            OnClick="btnOk_Click" onmouseout="up(this);" />
                    </div>
                    <div id="Pager_Button_Cancel_Container">
                        <asp:Button Style="display: inline;" ID="btnCancelModal" runat="server" CssClass="ActionButton_Up"
                            Text="Cancel" onmousedown="clickButtonSound(); down(this);" onmouseup="up(this);"
                            OnClick="btnCancel_Click" onmouseout="up(this);" />
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
