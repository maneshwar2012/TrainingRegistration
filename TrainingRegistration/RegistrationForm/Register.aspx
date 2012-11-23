<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RegistrationForm.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />

</head>
<script type="text/javascript" src="Scripts/jquery-1.4.1.min.js">
</script>

<script type="text/javascript" src="Scripts/jquery-ui.min.js">
</script>
<script type="text/javascript">

    $(function () {
        var picker = '#' + '<%= inputField.ClientID %>';

        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();

        $(picker).datepicker({
            yearRange: "-111:+0",
            changeMonth: true,
            changeYear: true,
            showOn: "button",
            buttonImage: "/images/calendar.jpg",
            buttonImageOnly: true,
            buttonText: "Calendar",
        });
    });
</script>
<script type="text/javascript">

    $(function () {
        var picker = '#' + '<%= inputField1.ClientID %>';

        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();

        $(picker).datepicker({
            yearRange: "-111:+0",
            changeMonth: true,
            changeYear: true,
            showOn: "button",
            buttonImage: "/images/calendar.jpg",
            buttonImageOnly: true,
            buttonText: "Calendar",
        });
    });
</script>
<script type="text/javascript">

    $(function () {
        var picker = '#' + '<%= inputField2.ClientID %>';

        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();

        $(picker).datepicker({
            yearRange: "-111:+0",
            changeMonth: true,
            changeYear: true,
            showOn: "button",
            buttonImage: "/images/calendar.jpg",
            buttonImageOnly: true,
            buttonText: "Calendar",
        });
    });
</script>





<body>
    <form id="form1" runat="server">
  
<div id="tblwpr">
	<table width="100%" border="0" border="0" cellpadding="0" cellspacing="0" class="formtabl">
  <tr>
    <td class="regheading">Registration Form – Summer training</br>
    <p class="note">Note: This  form shall be filled  by  candidates through an option of drop down menu</p> 
    </td>
  </tr>
  <tr>
    <td class="removepadding" style="border-right:none; border-bottom:none;">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="basicinfotbl">
          <tr>
            <td class="basicinfo">Period  in which training is   desired  </td>
           
             <td class="warper">From
           
                 <input type="text" size="12" id="inputField1" runat="server" class="calbx"  />&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator10" runat="server" ControlToValidate="inputField" 
                    ErrorMessage="Must be filled"></asp:RequiredFieldValidator>
&nbsp;</td>
 <td class="warper">To
           
                 <input type="text" size="12" id="inputField2" runat="server" class="calbx"  />&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator11" runat="server" ControlToValidate="inputField" 
                    ErrorMessage="Must be filled"></asp:RequiredFieldValidator>
&nbsp;</td>
          </tr>
        </table>
	</td>
  </tr>
  
  
 
  <tr>
    <td><strong>Basic Information:</strong></td>
  </tr>
  <tr>
    <td class="removepadding" style="border-right:none; border-bottom:none;">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="basicinfotbl">
          <tr>
            <td class="basicinfo">Name:</td>
            <td><asp:TextBox ID="name" runat="server" class="navtxtbx"></asp:TextBox> </td>
          </tr>
          <tr>
            <td class="basicinfo">Father's/ Guardian's Name:</td>
            <td><asp:TextBox ID="guardianname" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="basicinfo">Date of Birth:</td>
            <td class="warper">
            <%--  <script>DateInput('todaydate', true, 'DD-MON-YYYY')</script>--%>
                 <input type="text" size="12" id="inputField" runat="server" class="calbx"  />&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputField" 
                    ErrorMessage="Must be filled"></asp:RequiredFieldValidator>
&nbsp;</td>
          </tr>
          <tr>
            <td class="basicinfo">Gender</td>
            <td class="removepadding">
            	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="gender">
              	<tr>
                     
                	<td class="removepadding" style="border:none;"> <%--class="bdrbtmnone" style="text-align:center;" align="left"--%>
                 
                        <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                         </asp:RadioButtonList>
                    
                     
                    </td>
                </tr>

            	</table>
            </td>
          </tr>
          <tr>
            <td class="basicinfo">Address for Communication       <td><asp:TextBox ID="address" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
          <td class="basicinfo">Location of Training<td>
              <asp:DropDownList ID="location" runat="server" class="navtxtbx1"  >
                 <asp:ListItem>Select</asp:ListItem>
                  <asp:ListItem>Jaipur</asp:ListItem>
                  <asp:ListItem>YamunaNagar</asp:ListItem>
                   <asp:ListItem>Amritsar</asp:ListItem>
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                  ErrorMessage="Select any one" ControlToValidate="location"></asp:RequiredFieldValidator>
          </td>
          
          </td>
          </tr>
          <tr>
            <td class="basicinfo">E-mail ID</td>
            <td><asp:TextBox ID="email" runat="server" class="navtxtbx_new"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Must be filled" ControlToValidate="email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
            <td class="basicinfo">Mobile No</td>
            <td><asp:TextBox ID="mobileno" runat="server" class="navtxtbx_new"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="mobileno" ErrorMessage="Must be filled"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="basicinfo">Current Location</td>
            <td><asp:TextBox ID="currentlocation" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="basicinfo">Nationality</td>
            <td><asp:TextBox ID="nationality" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="basicinfo">Mother Tongue</td>
            <td><asp:TextBox ID="language" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          
        </table>
	</td>
  </tr>
  <tr>
    <td>Academic Qualification :</td>
  </tr>
  <tr>
    <td class="removepadding" style="border-bottom:none; border-right:none;">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="acadmictabl">
          <tr class="academicheading">
            <td>Course</td>
            <td>Stream</td>
            <td>Institute/<br />University</td>
            <td>Duration<br /> of<br /> Course</td>
            <td>Year of<br /> Passing</td>
            <td>Marks in %</td>
          </tr>
          <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="B.Tech"></asp:Label>
              </td>
            <td>
                <asp:TextBox ID="btechstream" runat="server" class="navtxtbx_new"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ErrorMessage="Must be filled" 
                    ControlToValidate="btechstream"></asp:RequiredFieldValidator>
              </td>
            <td> <asp:TextBox ID="btechinstitute" runat="server" class="navtxtbx_new"></asp:TextBox></td>
            <td> <asp:TextBox ID="btechcourse" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="btechyear" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="btechmarks" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Diploma"></asp:Label>
              </td>
            <td><asp:TextBox ID="diplomastream" runat="server" class="navtxtbx_new"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5" runat="server" ErrorMessage="Must be filled" 
                    ControlToValidate="diplomastream"></asp:RequiredFieldValidator></td>
            <td><asp:TextBox ID="diplomainstitute" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="diplomacourse" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="diplomayear" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="diplomamarks" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="High school"></asp:Label>
              </td>
            <td><asp:TextBox ID="highschoolstream" runat="server" class="navtxtbx_new" 
                    Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator6" runat="server" ErrorMessage="Must be filled" 
                    ControlToValidate="highschoolstream"></asp:RequiredFieldValidator></td>
            <td><asp:TextBox ID="highschoolinstitute" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="highschoolcourse" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="highschoolyear" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="highschoolmarks" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="SSC or Equivalent"></asp:Label>
              </td>
            <td><asp:TextBox ID="sscstream" runat="server" class="navtxtbx_new"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator7" runat="server" ErrorMessage="Must be filled" 
                    ControlToValidate="sscstream"></asp:RequiredFieldValidator></td>
            <td><asp:TextBox ID="sscinstitute" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="ssccourse" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="sscyear" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="sscmarks" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
        </table>
	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Previous Training Details (if any):</td>
  </tr>
  <tr>
    <td>Achievements :</td>
  </tr>
  <tr>
    <td>Professional Experience, if any :</td>
  </tr>
  <tr>
    <td class="removepadding" style="border-right:none; border-bottom:none;">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="proftbl">
          <tr align="center">
            <td>Name of<br /> Organisation</td>
            <td class="removepadding">
            	<table width="100%" border="0" class="durtntbl">
                <tr align="center">
                	<td colspan="2" style="border-right:none;">Duration</td>
                </tr>
                  <tr align="center">
                    <td style="border-bottom:none;">From</td>
                    <td style="border-right:none; border-bottom:none;">To</td>
                  </tr>
                </table>

            </td>	
            <td>Position<br /> held</td>
            <td>Nature of <br />job</td>
            <td>Location</td>
          </tr>
         
          <tr align="center">
            <td><asp:TextBox ID="TextBox9" runat="server" class="navtxtbx"></asp:TextBox></td>
            <%--<td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>--%>
            <td class="removepadding">
<table width="100%" cellpadding="0" cellspacing="0" class="frmto">
<tr>
<td style="border-right:1px solid #ccc;">
    <asp:TextBox ID="TextBox10" runat="server" class="navtxtbx"></asp:TextBox></td>
<td>
    <asp:TextBox ID="TextBox15" runat="server" class="navtxtbx"></asp:TextBox></td>
</tr>
</table>
</td>

            <td><asp:TextBox ID="TextBox11" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox12" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox13" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr align="center">
            <td><asp:TextBox ID="TextBox14" runat="server" class="navtxtbx"></asp:TextBox></td>
            <%--<td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>--%>
            <td class="removepadding">
<table width="100%" cellpadding="0" cellspacing="0" class="frmto">
<tr>
<td style="border-right:1px solid #ccc;">
    <asp:TextBox ID="TextBox20" runat="server" class="navtxtbx"></asp:TextBox></td>
<td>
    <asp:TextBox ID="TextBox24" runat="server" class="navtxtbx"></asp:TextBox></td>
</tr>
</table>
</td>

            <td><asp:TextBox ID="TextBox16" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox17" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox18" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
          <tr align="center">
            <td><asp:TextBox ID="TextBox19" runat="server" class="navtxtbx"></asp:TextBox></td>
            <%--<td><asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>--%>
            <td class="removepadding">
<table width="100%" cellpadding="0" cellspacing="0" class="frmto">
<tr>
<td style="border-right:1px solid #ccc;">
    <asp:TextBox ID="TextBox25" runat="server" class="navtxtbx"></asp:TextBox></td>
<td>
    <asp:TextBox ID="TextBox26" runat="server" class="navtxtbx"></asp:TextBox></td>
</tr>
</table>
</td>

            <td><asp:TextBox ID="TextBox21" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox22" runat="server" class="navtxtbx"></asp:TextBox></td>
            <td><asp:TextBox ID="TextBox23" runat="server" class="navtxtbx"></asp:TextBox></td>
          </tr>
        </table>
	</td>
  </tr>
  <tr>
    <td>Upload your resume: .doc or .pdf file &nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="FileUpload1" ErrorMessage="Must be filled"></asp:RequiredFieldValidator>
      </td>
   <%-- <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>--%>
  </tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" class="footbl">
    <tr>
        <td > </td>
    </tr>
    <tr>
        <td><strong>Register for</strong></td>
    </tr>
    <tr>
                     
                	<td class="removepadding" style="border:none;"> <%--class="bdrbtmnone" style="text-align:center;" align="left"--%>
                 
                        <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList2" 
                            runat="server" Width="600px">
                        <asp:ListItem Value="1">Training for academic year : 2013-14</asp:ListItem> 
                        <asp:ListItem Value="2">Training for academic year : 2014-15</asp:ListItem>
                         </asp:RadioButtonList>                  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Select one"></asp:RequiredFieldValidator>
                    
                      
                     
                    </td>
                </tr>
   <%-- <tr>
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td>Training for academic year : 2013-14</td>
                <td align="right">Training for academic year : 2014-15</td>
            </tr>


        </table>
    </tr>--%>
    <tr>
        <td><strong>I agree Clause:</strong></td>
    </tr>
    <tr>
        <td>I have read and agree with the terms and conditions  ( Read terms and conditions)</td>
    </tr>
</table>
<table width="747" border="0" cellpadding="0" cellspacing="0" class="sumtbtn">
	<tr>
    	<td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /> </td>
    </tr>
</table>
</div>
</form>
</body>
</html>
