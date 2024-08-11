<?php  
if(isset($_POST['sub']))  
{  
$host="localhost";//host name  
$username="root"; //database username  
$word="";//database word  
$db_name="yop2023";//database name   
$con=mysqli_connect("$host", "$username", "$word","$db_name")or die("cannot connect");//connection string    
$cin=$_REQUEST['cin']; 
$sql="select Name,Company_Name,course,AppointedRole from studentinfo s inner join placementinfo p on s.cin=p.cin inner join company c on c.company_id=p.company_id inner join courseinfo co on co.cin=s.cin where s.cin='$cin'";
$in_ch=mysqli_query($con,$sql); 
if($in_ch)  
   {  
		echo "<table border=2 cellspacing=0 cellpadding=4>";
		while($row=mysqli_fetch_assoc($in_ch))
		{
			$b=$row['Name'];
			$c=$row['Company_Name'];
			$d=$row['course'];
			$e=$row['AppointedRole'];
			echo "<tr><td>$cin</td><td>$b</td><td>$c</td><td>$d</td><td>$e</td></tr>";
		}
		echo "</table><br><br>";  
   }  
else  
   {  
      echo'<script>alert("No results")</script>';  
   }  
}  
?>  
</body>  
</html> 