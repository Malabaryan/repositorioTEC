<html>
<body>
<h1>A simple example</h1>
This is normal HTML
 
<?php

 $db_host = "localhost";
 $db_username = "root";
 $db_password = "basesProgra2@";
 $db_database = "myRepository";

$mysqli = mysqli_connect($db_host, $db_username, $db_password,$db_database) ;

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$query = "SELECT CURRENT_USER();";
$query = "SELECT * FROM TEST;";



  if ($mysqli->multi_query($query)) {
    do {
        /* store first result set */
        if ($result = $mysqli->use_result()) {
            while ($row = $result->fetch_row()) {
                printf("%s\n", $row[0]);
            }
            $result->close();
        }
        /* print divider */
        if ($mysqli->more_results()) {
            printf("-----------------\n");
        }
    } while ($mysqli->next_result());
}



$mysqli->close();

?>
 
</body>
</html>