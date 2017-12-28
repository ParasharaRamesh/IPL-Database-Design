<html>
	<body>
	<?php
		/*error_reporting(E_ALL & ~E_NOTICE);*/
	   $dbhost = 'localhost';
	   $dbuser = 'root';
	   $dbpass = '';
	   $dbname = 'ipl league';
	   //$conn = mysql_connect($dbhost, $dbuser, $dbpass);
	   $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	   $query= $_GET["query"];
	  // mysql_select_db($dbname) or die(mysql_error());
	   if(mysqli_connect_errno())
	   {
			die("connection failed: "
        . mysqli_connect_error()
        . " (" . mysqli_connect_errno()
        . ")");
		}
		$result = mysqli_query($conn,$query);
		//$result = mysql_query($query) or die(mysql_error());
		$all_property = array();  //declare an array for saving property

		//showing property
		echo '<table class="data-table">
				<tr class="data-heading">';  //initialize table tag
		while ($property = @mysqli_fetch_field($result)) 
		{
			echo '<td>' . $property->name . '</td>';  //get field name for header
			array_push($all_property, $property->name);  //save those to array
		}
		echo '</tr>'; //end tr tag

//showing all data
		while ($row = @mysqli_fetch_array($result))
		{
			echo "<tr>";
			foreach ($all_property as $item) 
			{
				echo '<td>' . $row[$item] . '</td>'; //get items using property value
			}
				echo '</tr>';
		}
		echo "</table>";
		mysqli_close($conn);
	?>
	</body>
</html>