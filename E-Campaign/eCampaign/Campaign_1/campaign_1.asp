<html>
<head>
<title>Renaissance E-Campaigns</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="javascript">
function isCorrectEmail(email)
{
  var result = false
  var theStr = new String(email)
  var index = theStr.indexOf("@");
  if (index > 0)
  {
    var pindex = theStr.indexOf(".",index);
    if ((pindex > index+1) && (theStr.length > pindex+1))
	result = true;
  }
  return result;
}
  
function submitThisForm(frm)
  {
  
    var str,s,i
     formElements=["txtenq_sCompanyName","txtenq_sContactName","txtenq_sContactEmail","txtenq_sContactNumber"];
     for(i=0;i<4;i++)
    {
      if(frm.elements[formElements[i]].value.length !=0)
      { 
         str=frm.elements[formElements[i]].value
         s = str.replace(/^(\s)*/, '');
         s = s.replace(/(\s)*$/, '');
         frm.elements[formElements[i]].value=s
      }  
    }


  
     if(frm.txtenq_sContactName.value.length == 0)
     {
  	  alert("Please enter a name!");
        frm.txtenq_sContactName.focus();
        return (false);
    }

  if (frm.txtenq_sContactEmail.value.length != 0)
     {
		 if (!isCorrectEmail(frm.txtenq_sContactEmail.value))
		  {
			alert("Please enter valid email address!");
			frm.txtenq_sContactEmail.focus();
			return (false);
		  }
      }
  	
 	if (frm.txtenq_sContactNumber.value.length==0)
 	{
 	    alert("Please enter Contact / Mobile Number!");
		frm.txtenq_sContactNumber.focus();
 	    return(false);
    }
  
 
  return (true);

}

</script>
<script language="javascript">
	  function loadPage()
	   {
		submitThisForm(document.frmCampaign_1)
	   }
</script>
</head>



<body bgcolor="#FFFFFF" text="#000000" topmargin="1" onLoad="loadPage()">
<form name="frmCampaign_1" method="post" action="submit.asp">
  <table width="600" border="0" cellspacing="1" cellpadding="1" align="center" bgcolor="#999999" height="313">
    <tr>
      <td bgcolor="#FFFFFF" height="421" valign="top"> 
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td height="2"><img src="images/mainpic.jpg" width="601" height="137"></td>
          </tr>
          <tr> 
            <td><a name="top"></a><img src="images/attention.gif" width="601" height="51"></td>
          </tr>
          <tr> 
            <td height="329"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0" background="images/bg.jpg">
                <tr> 
                  <td colspan="2">
                    <p style="margin-left:10"><font face="Trebuchet MS" size="2" color="#003366"><%=REQUEST.QUERYSTRING("enq_sContactName") %>,</font></p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <p style="margin-left:10"><font face="Trebuchet MS" size="2" color="#003366"><b><i>The 
                      most cost effective means to reach out to prospective Real 
                      Estate Customers in Bangalore.</i></b></font></p>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <p style="margin-left:10"><font face="Trebuchet MS" size="2" color="#003366">Call 
                      Ananthraj on Tel : (080) 2333 0142, 2353 7776 or 94482 26053 
                      today and see your sales soar.</font></p>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr> 
                  <td colspan="2"><font face="Trebuchet MS" size="2" color="#003366"></font></td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <p style="margin-left:10"><font face="Trebuchet MS" size="2" color="#003366">Renaissance 
                      Technologies will help you plan and implement an effective 
                      e-campaign including</font></p>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <ul>
                      <li><font face="Trebuchet MS" size="2" color="#003366"> 
                        Managing your existing and prospective customer database</font></li>
                      <li><font face="Trebuchet MS" size="2" color="#003366">e-Newsletters 
                        to existing and prospective clients</font></li>
                      <li><font face="Trebuchet MS" size="2" color="#003366">High 
                        speed Rich Text, Interactive E-mail broadcast to </font> 
                        <ul>
                          <li><font face="Trebuchet MS" size="2" color="#003366">High 
                            Net Worth Individuals in Bangalore</font></li>
                          <li><font face="Trebuchet MS" size="2" color="#003366">Non 
                            Resident Indian</font></li>
                        </ul>
                      </li>
                      <li><font face="Trebuchet MS" size="2" color="#003366">Track 
                        enquiries and measure efficacy of the campaign</font></li>
                    </ul>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <p style="margin-left:10"><font face="Trebuchet MS" size="2" color="#003366"><b>Call 
                      us today by completing the form below and we will demonstrate 
                      our successful<br>
                      e-campaigns....<i> <font size="3">helping companies increase 
                      sales while spending less.</font></i></b></font></p>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr> 
                  <td width="49%">
                    <p style="margin-left:10"><font color="#003366" face="Trebuchet MS" size="2">For 
                      more information please contact:<b><br>
                      <br>
                      Renaissance Technologies P Ltd.</b><br>
                      #19, P &amp; T Colony, R.T Nagar,<br>
                      Bangalore - 560032<br>
                      Tel : (080) 2333 0142 / 2353 7776<br>
                      Email : <a href="mailto:services@renaissanceind.com">services@renaissanceind.com</a></font></p>
                  </td>
                  <td width="51%"> 
                    <table width="86%" border="0" cellspacing="0" cellpadding="0" align="center">
                      <tr> 
                        <td width="7%"><img src="images/top-left.gif" width="20" height="20"></td>
                        <td colspan="2" bgcolor="417DB3"> 
                          <div align="center"><font face="Arial, Helvetica, sans-serif" size="1"><b></b></font></div>
                        </td>
                        <td width="10%"> 
                          <div align="right"><img src="images/top-right.gif" width="20" height="20"></div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="7%" bgcolor="417DB3">&nbsp;</td>
                        <td width="33%" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">Company 
                          Name</font></td>
                        <td width="50%" bgcolor="417DB3"> 
                          <input type="text" style="font-family: Verdana; font-size: 10px; width: 145; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px" name="txtenq_sCompanyName" maxlength="60" value=<%=REQUEST.QUERYSTRING("enq_sCompanyName") %>>
                        </td>
                        <td width="10%" bgcolor="417DB3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td width="7%" bgcolor="417DB3">&nbsp;</td>
                        <td width="33%" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">Contact 
                          Person*</font></td>
                        <td width="50%" bgcolor="417DB3"> 
                          <input type="text" style="font-family: Verdana; font-size: 10px; width: 145; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px" name="txtenq_sContactPerson" maxlength="60" value=<%=REQUEST.QUERYSTRING("enq_sContactName") %>>
                        </td>
                        <td width="10%" bgcolor="417DB3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td width="7%" bgcolor="417DB3">&nbsp;</td>
                        <td width="33%" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">Email 
                          * </font></td>
                        <td width="50%" bgcolor="417DB3"> 
                          <input type="text" style="font-family: Verdana; font-size: 10px; width: 145; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px" name="txtenq_sContactEmail" maxlength="60" value=<%=REQUEST.QUERYSTRING("enq_sContactEmail") %>>
                        </td>
                        <td width="10%" bgcolor="417DB3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td width="7%" bgcolor="417DB3">&nbsp;</td>
                        <td width="33%" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">Telephone 
                          No.*</font></td>
                        <td width="50%" bgcolor="417DB3"> 
                          <input type="text" style="font-family: Verdana; font-size: 10px; width: 145; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px" name="txtenq_sContactNumber" maxlength="20" value=<%=REQUEST.QUERYSTRING("enq_sContactNumber") %>>
                        </td>
                        <td width="10%" bgcolor="417DB3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td width="7%" bgcolor="417DB3">&nbsp;</td>
                        <td width="33%" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#004800"></font></td>
                        <td width="50%" bgcolor="417DB3"><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#333333"> 
                          <input type="submit" name="Submit2" value="Submit" style="font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; color: #ffffff; background-color: #003366; border: #999999; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px">
                          <input type="reset" name="Reset2" value="Reset" style="font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; color: #ffffff; background-color: #003366; border: #999999; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px">
                          </font></td>
                        <td width="10%" bgcolor="417DB3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td width="7%" height="10" bgcolor="417DB3">&nbsp;</td>
                        <td colspan="3" height="10" bgcolor="417DB3"><font face="Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">* 
                          indicates mandatory fields </font></td>
                      </tr>
                      <tr> 
                        <td width="7%"><img src="images/down-left.gif" width="20" height="20"></td>
                        <td width="33%" bgcolor="417DB3">&nbsp;</td>
                        <td width="50%" bgcolor="417DB3">&nbsp;</td>
                        <td width="10%"> 
                          <div align="right"><img src="images/down-right.gif" width="20" height="20"></div>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2"> 
                    <p style="margin-left:10"><font color="#003366" face="Trebuchet MS" size="2"> 
                      </font></p>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2"><div align="right"><a href="#top"><img src="http://www.renaissanceind.com/eCampaign/renaissance/Campaign_1/views.asp?email=<$%Email%$>&name=<$%Name%$>" width="34" height="13" border="0"></a></div></td>
                </tr>
              </table>
              <font face="Trebuchet MS" size="2" color="#003366"></font> </td>
          </tr>
        </table>
      </td>
  </tr>
</table>
<br>
 
  </form>
</body>
</html>
