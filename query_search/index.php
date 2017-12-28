<?php	
	session_start();
?>
<!DOCTYPE html>
<html >
	<head>
		<meta charset="UTF-8">
		<title>Ipl data base Search</title>
		<link rel="stylesheet" href="css/style.css">
		<style>
		
		</style>
	
	<script type="text/javascript">
	function ajaxFunc(e)
	{
		var query=document.getElementById('doSearch').value;
		var ajaxReq; 
		try
		{
			ajaxReq = new XMLHttpRequest();
		}
		catch (e)
		{
			try
			{
				ajaxReq = new ActiveXObject("Msxml2.XMLHTTP");
			}
			catch (e)
			{
				try
				{
					ajaxReq = new ActiveXObject("Microsoft.XMLHTTP");
				} 
				catch (e)
				{
					alert("Your browser broke!");
					return false;
				}
			}
		}
		var queryString = "?query="+query;
		ajaxReq.open("GET", "backsearch.php"+queryString, true);
		ajaxReq.onreadystatechange = function()
		{
			if(ajaxReq.readyState == 4)
			{
				var ajaxDisplay=document.getElementById('showSearch');
				ajaxDisplay.innerHTML=ajaxReq.responseText;
			}
		}
		ajaxReq.send(null); 
	}
	</script>
</head>
<body>
	<header>
		<div class="doSearch">
			<input id="doSearch" name="doSearch"  type="text" placeholder="Search here..." ondblclick="this.value=''" src="//i.imgur.com/cHidSVu.gif" >
			<input id="simple" type="button" value="LET'S GO!"  onclick="return ajaxFunc();">
		</div>
		<div class="doSearch">
			<select name="select table" value="select table" id="mySelect" onchange="selecttable();">
				<option value="" disabled="disabled" selected="selected">select a table</option>
				<option value="coach">coach</option>
				<option value="fixture">fixture</option>
				<option value="owner">owner</option>
				<option value="player">player</option>
				<option value="result">result</option>
				<option value="season">season</option>
				<option value="team">team</option>
				<option value="umpire">umpire</option>	
			</select>
			<div>
				<input id="simple" type="button" value="select" onclick="selectq();"/>
			</div>
			<div>
				<input id="simple" type="button" value="insert"  onclick="insert();"/>
			</div>
			<div>
				<input id="simple" type="button" value="update"  onclick="update();"/>
			</div>
		</div>
		<hr>
	</header>
	<div id="showSearch"></div>
	<form id="labnol" method="get" action="https://www.google.com/search">
		<div class="speech">
			<input type="text" name="q" id="transcript" placeholder="Speak" hidden="hidden"/>
		</div>
	</form>
</body>
<script  type="text/javascript" src="sql.js"></script>
</html>