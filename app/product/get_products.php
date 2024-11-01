<?
include(ROOT_DIR."app/config/Directories.php");
$db = new DatabaseConnect();
$conn = $db->connectDB();

//this variable wil hold product data from db
$productList - [];

try {
    $sql  = "SELECT * FROM `products`"; //select statement here
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $productList = $stmt->fetchAll();
        
} catch (PDOException $e){
    echo "Connection Failed: " . $e->getMessage();
    $db = null;
    }
?>