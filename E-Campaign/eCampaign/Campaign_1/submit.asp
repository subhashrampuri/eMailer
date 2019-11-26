<%OPTION EXPLICIT%>

<%
'Renaissance E-Marketing Campaign Campaign
'November 8 2004
'Submit page
%>
	<!-- #include file='ConnectionOpen.inc' -->
<%
	Dim bCheck,sSubmitString,adoCmd
		
	bCheck=true
	if Trim(REQUEST.FORM("txtenq_sContactName"))=""  then
		bCheck=false		
	end if
	

	if Trim(REQUEST.FORM("txtenq_sContactNo"))="" then
		bCheck=false	
	end if
	
	if Trim(REQUEST.FORM("txtenq_sContactEmail"))="" then
		bCheck=false	
	end if
	
	if bCheck=false then
		'Redirect to form again
		sSubmitString="campaign_1.asp?txtenq_sCompanyName=" & Trim(REQUEST.FORM("txtenq_sCompanyName")) _
							 & "&txtenq_sContactName=" & Trim(REQUEST.FORM("txtenq_sContactName")) _	
							 & "&txtenq_sContactEmail=" &  Trim(REQUEST.FORM("txtenq_sContactEmail")) _
 							 & "&txtenq_sContactNumber=" &  Trim(REQUEST.FORM("txtenq_sContactNumber")) _
							
		Response.Redirect(sSubmitString)
	end if
	
	if bCheck=true then	
		Dim adoCmdSelect,adoRs
		Set adoCmdSelect = Server.CreateObject("ADODB.COMMAND")
		adoCmdSelect.ActiveConnection = adoCon
		adoCmdSelect.CommandType = adCmdStoredProc
		adoCmdSelect.CommandText = "sp_checkduplicate"
			
			If Trim(REQUEST.FORM("txtenq_sCompanyName"))="" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sCompanyName",adVarChar, adParamInput,60,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sCompanyName",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sCompanyName")))
			End If
			
			adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactName",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sContactName")))

			If Trim(REQUEST.FORM("txtenq_sContactEmail"))="" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactEmail",adVarChar, adParamInput,60,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactEmail",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sContactEmail")))
			End If

			If Trim(REQUEST.FORM("txtenq_sContactNumber")) = "" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactNumber",adVarChar, adParamInput,20,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactNumber",adVarChar, adParamInput,20,Trim(REQUEST.FORM("txtenq_sContactNumber")))
			End If
		
		SET adoRs = adoCmdSelect.execute
		if adoRs.EOF then
			Set adoCmd = Server.CreateObject("ADODB.COMMAND")
			adoCmd.ActiveConnection = adoCon
			adoCmd.Prepared = True
			adoCmd.CommandType = adCmdStoredProc
			adoCmd.CommandText = "sp_itblEnquiry"

			If Trim(REQUEST.FORM("txtenq_sCompanyName"))="" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sCompanyName",adVarChar, adParamInput,60,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sCompanyName",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sCompanyName")))
			End If
			
			adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactName",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sContactName")))

			If Trim(REQUEST.FORM("txtenq_sContactEmail"))="" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactEmail",adVarChar, adParamInput,60,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactEmail",adVarChar, adParamInput,60,Trim(REQUEST.FORM("txtenq_sContactEmail")))
			End If

			If Trim(REQUEST.FORM("txtenq_sContactNumber")) = "" Then
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactNumber",adVarChar, adParamInput,20,"")
			Else
				adoCmdSelect.Parameters.Append adoCmdSelect.CreateParameter("@enq_sContactNumber",adVarChar, adParamInput,20,Trim(REQUEST.FORM("txtenq_sContactNumber")))
			End If
			
			adoCmd.Parameters.Append adoCmd.CreateParameter("@enq_tDate",adDBTimeStamp, adParamInput,,date)

			adoCmd.Parameters.Append adoCmd.CreateParameter("@enq_tTime",adDBTimeStamp, adParamInput,,time)

			adoCmd.Execute

		else
			'Redirect page to duplicate entry
			Response.redirect("submit_ack.asp?name=" & Trim(REQUEST.FORM("txtenq_sContactName")))

		end if
	End if		
%>
	<!-- #include file='ConnectionClose.inc' -->
<%
	'Redirect page
	Response.redirect("submit_ack.asp?name=" & Trim(REQUEST.FORM("txtenq_sContactName")))
%>