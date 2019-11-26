<%OPTION EXPLICIT%>

<%
'Renaissance E-Campaign
'November 8 2004
'Views logging page
%>
	<!-- #include file='ConnectionOpen.inc' -->
<%
	Dim adoCmd
	Set adoCmd = Server.CreateObject("ADODB.COMMAND")
	adoCmd.ActiveConnection = adoCon
	adoCmd.Prepared = True
	adoCmd.CommandType = adCmdStoredProc
	adoCmd.CommandText = "sp_itblCampaignView"
	adoCmd.Parameters.Append adoCmd.CreateParameter("@cav_sCusName",adVarChar, adParamInput,50,Request.QueryString("name"))
	adoCmd.Parameters.Append adoCmd.CreateParameter("@cav_sEmail",adVarChar, adParamInput,60,Request.QueryString("email"))
	adoCmd.Parameters.Append adoCmd.CreateParameter("@cav_tViewDate",adDBTimeStamp, adParamInput,,Date)
	adoCmd.Parameters.Append adoCmd.CreateParameter("@cav_tViewTime",adDBTimeStamp, adParamInput,,Time)

	adoCmd.Execute
%>
	<!-- #include file='ConnectionClose.inc' -->
<%
	'Redirect page
	Response.redirect("images\top01.gif")
%>