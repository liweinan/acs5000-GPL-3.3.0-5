<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<link rel="STYLESHEET" type="text/css" href="/stylesLayout.css">
    <script language="JavaScript" src="/scripts.js" type="text/javascript"></script>
    <script type="text/javascript">
	
/*this page use variables that define link state (active or not) see normal/main.asp
	  var accessActive
	  var dataBuffActive
	  var multiUserActive
	  var powManActive
	  var otherActive*/

     </script>
</head>
<body class="bodyMainTabs" marginheight="0" marginwidth="0">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
   <tr>
      <td class="bgColor4" align="center" width="13%" nowrap>
	  <a href="javascript:loadNextPagePhysP('/normal/ports/portsPhysPortSett.asp');" class="tabsTextAlt">
	  <font class="tabsText">General</font></a></td>
      <td class="bgColor4" align="left" height="20" width="1">
	  <img src="/Images/brownLine.gif" alt="" width="1" height="20" border="0"></td>
	  
      <script type="text/javascript">
      if (top.accessActive == false) // Access Inactive
	{ 	
    document.write('<td class="bgColor9" align="center" width="13%" nowrap>');
	document.write('<font class="tableTextInactive">Access</font></td>');
	}
	  else // Access Active
    {
	document.write('<td class="bgColor4" align="center" width="13%" nowrap>');
	document.write('<a href="javascript:loadNextPagePhysP(\'/normal/ports/portsPhysAccess.asp\');" class="tabsTextAlt">');
	document.write('<font class="tabsText">Access</font></a></td>');  
	}
	  </script>
    <td class="bgColor4" align="left" height="20" width="1">
	<img src="/Images/brownLine.gif" alt="" width="1" height="20" border="0"></td>
	
	
      <script type="text/javascript">
      if (top.dataBuffActive == false) // Data Buffering Inactive
	{ 	
    document.write('<td class="bgColor9" align="center" width="21%" nowrap>');
	document.write('<font class="tableTextInactive">Data Buffering</font></td>');
	}
	  else // Data Buffering Active
    {
	document.write('<td class="bgColor4" align="center" width="21%" nowrap>');
	document.write('<a href="javascript:loadNextPagePhysP(\'/normal/ports/portsPhysDataBuff.asp\');" class="tabsTextAlt">');
	document.write('<font class="tabsText">Data Buffering</font></a></td>');  
	}
	  </script>	  
	  
	  <td class="bgColor4" align="left" height="20" width="1">
	  <img src="/Images/brownLine.gif" alt="" width="1" height="20" border="0"></td>
      
      <script type="text/javascript">
      if (top.multiUserActive == false) // Multi User Inactive 
	{ 	
    document.write('<td class="bgColor9" align="center" width="16%" nowrap>');
	document.write('<font class="tableTextInactive">Multi User</font></td>');
	}
	  else // Multi User Active
    {
	document.write('<td class="bgColor4" align="center" width="16%" nowrap>');
	document.write('<a href="javascript:loadNextPagePhysP(\'/normal/ports/portsPhysMUS.asp\');" class="tabsTextAlt"> ');
	document.write('<font class="tabsText">Multi User</font></a></td>');  
	}
	  </script>		  
      <td class="bgColor4" align="left" height="20" width="1">
	  <img src="/Images/brownLine.gif" alt="" width="1" height="20" border="0"></td>		  
	  			
    <td class="bgColor1" align="center" width="24%" nowrap>
	<font class="tabsText">Power Management</font></td>  
    <td class="bgColor4" align="left" height="20" width="1">
	<img src="/Images/brownLine.gif" alt="" width="1" height="20" border="0"></td>  	  
      			
      <script type="text/javascript">
      if (top.otherActive == false) // Other Inactive
	{ 	
    document.write('<td class="bgColor9" align="center" width="13%" nowrap>');
	document.write('<font class="tableTextInactive">Other</font></td>');
	}
	  else // Other Active
    {
	document.write('<td class="bgColor4" align="center" width="13%" nowrap>');
	document.write('<a href="javascript:loadNextPagePhysP(\'/normal/ports/portsPhysOtherSett.asp\');" class="tabsTextAlt">');
	document.write('<font class="tabsText">Other</font></a></td>');  
	}
	  </script>  
   </tr>
   <tr>
      <td class="bgColor3" width="13%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
      <td class="bgColor3" align="center"><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
      <td class="bgColor3" width="13%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  <td class="bgColor3" align="center"><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  <td class="bgColor3" width="21%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  <td class="bgColor3" align="center"><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  <td class="bgColor3" width="16%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
      <td class="bgColor3" align="center"><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  
	  <td class="bgColor1" width="24%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
      <td class="bgColor3" align="center"><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
	  
      <td class="bgColor3" width="13%><img src="/Images/1pixelTrans.gif" alt="" width="1" height="1" border="0"></td>
   </tr>
</table>
</body>
</html>
