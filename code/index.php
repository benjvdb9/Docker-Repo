<html>
        <head>
                <link rel="icon" href="https://www.pngall.com/wp-content/uploads/5/Linux-Logo-PNG-Pic.png" type="image/x-icon" />
                <title>Cloud-Project</title>
        </head>
        <body>
                <h1>List of Intec Students</h1>

                <?php
                $servername = "backend";
                $username = "root";
                $password = "intec-123";
                $dbname = "Intec";

                // Create connection
                $conn = new mysqli($servername, $username, $password, $dbname);

                // Check connection
                if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
                }

                $sql = "SELECT * FROM students";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                        // output data of each row
                        while($row = $result->fetch_assoc()) {
                          echo "Name: " . $row["f_name"]. " " . $row["l_name"]. "<br>";
                        }
                      } else {
                        echo "0 results";
                      }
                      $conn->close();
                ?>
        </body>
</html>


