<?php 

$username = $_POST["username"];
$password = $_POST["password"];

session_start();

include('../config/DatabaseConnect.php');

if($_SERVER["REQUEST_METHOD"] == "POST"){
       
        //db connection
        $db = new DatabaseConnect();
        $conn = $db->connectDB();

        try {
            $stmt = $conn->prepare('SELECT * FROM user WHERE username = :p_username');
            $stmt->bindParam(':p_username',$username);
            $stmt->execute();
            $user = $stmt->fetchAll();

            if($user){
                if(password_verify($password,$user[0]["password"])){
                    $_SESSION = [];
                    session_regenerate_id(true);
                    $_SESSION['user_id'] = $user[0]['id'];
                    $_SESSION['username'] = $user[0]['username'];
                    $_SESSION['fullname'] = $user[0]['fullname'];
                    $_SESSION['is_admin'] = $user[0]['is_admin'];

                    header("location: /index.php");
                    exit;

                } else {
                    header("location: /login.php?");
                    $_SESSION["error"] = "Wrong Password";
                    exit;
                }
            } else {
                header("location: /login.php?");
                $_SESSION["error"] = "User Not Found";
                exit;
            }

        } catch (Exception $e){
            echo "Connection Failed: " . $e->getMessage();
        }

}
?>