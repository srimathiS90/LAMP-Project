<!-- 
     Document    : search.php
     Author      : Srimathi Sathyanarayanan
     Description : This page displays the search results based on the search item emeters by the user in the main page.
-->
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body style="font-family:Arial;
             border:1px solid;	         
	     width:650px;
	     margin:0 auto;">

    <h3><u><center>Search Results</center></u></h3>
    <?php  
         $title = $price = $email = $description = "";
         
         //Connect to the database
         $conn = mysqli_connect("localhost", "lamp", "1", "lamp_final_project");
         if (!$conn) {
            die ("Connection failed " . $conn->errno);
         }

         $search = $_POST['search'];

         //Retrieve the data from the database - Fetch query
         $sql = "SELECT * FROM `Posts` WHERE `Title` LIKE '$search%'";
         
         //Display error message if connection fails.       
         if (!mysqli_query($conn, $sql)) {
             echo "Failed to connect to the database :" . $sql . mysqli_error($conn);
         }  
          
         $result = mysqli_query($conn, $sql);

         // Display the output for each row retrived
         if (mysqli_num_rows($result) > 0) {
              while($row = mysqli_fetch_assoc($result)) {
                    echo "<ul><p><li>Title: ".$row['Title']."</li></p>".
                         "<p>Price/Salary: ".$row['Price']."</p>".
                         "<p>Email: ".$row['Email']."</p></ul>";
                    echo "<br>";
              }
         }
         else {
              echo "<ul>No results found";
              echo "<br></ul>";
         }
         
        //Close the database connection
        mysqli_close($conn);          
     ?>  
</body>
</html>
