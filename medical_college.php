<?php if(!isset($_SESSION)){
	session_start();
	}  
?>

<?php include('header.php'); ?>

<div class="Medical college">
		<h2 class="text-center" style="background-color:#272327;color: #fff;">Public Medical College</h2>
        <?php
        include('config.php');
        $query= "SELECT * FROM medicalcollege";
        $result = $conn->query($query);
        if ($result->num_rows > 0) 
        echo "<table border='1' align='center' cellpadding='32'>
							<tr>
								
								<th>No.</th>
								
								<th>NAME</th>
								<th>ACCRONYM</th>
								<th>ESTABLISHED</th>
								<th>LOCATION</th>

								<th>WEBSITE</th>
								
								
							</tr>";
    {
        // OUTPUT DATA OF EACH ROW
        while($row = $result->fetch_assoc())
        {
            echo "<tr>";
            // echo "<td>".$row['doctor_id']."</td>";
            echo "<td>".$row['No.']."</td>";
            
            echo "<td>".$row['Name']."</td>";
            echo "<td>".$row['Acronym']."</td>";
            echo "<td>".$row['Established']."</td>";
            echo "<td>".$row['Location']."</td>";
            
            echo "<td>".$row['website']."</td>";
            
            echo "</tr>";
        }
        echo "</table>" ;
    } 

  
   $conn->close();
  
?>

</div>
<?php include('footer.php'); ?>


	
	</div><!--  containerFluid Ends -->




	<script src="js/bootstrap.min.js"></script>


 
			



	
</body>
</html>



