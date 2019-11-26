<%
Dim adoCon
'On Error Resume Next
	Set adoCon = Server.CreateObject("ADODB.CONNECTION")
	adoCon.Open  "DSN=Renecampaign;UID=renaissance;pwd=technologies"        
%>
	