<?php 

require_once 'actions/db_connect.php';

if ($_GET['author_ID']) {
   $id = $_GET['author_ID'];

   $sql = "SELECT * FROM author WHERE author_ID = {$id}" ;
   $result = $connect->query($sql);
   $data = $result->fetch_assoc();

   $connect->close();
}
?>

<!DOCTYPE html>
<html>
<head>
   <title >Delete Author</title>
</head>
<body>

<h3>Do you really want to delete this author?</h3>
<form action ="actions/a_delete.php" method="post">

   <input type="hidden" name= "id" value="<?php echo $data['id'] ?>" />
   <button type="submit">Yes, delete it!</button >
   <a href="index.php"><button type="button">No, go back!</button ></a>
</form>

</body>
</html>

<?php
?>