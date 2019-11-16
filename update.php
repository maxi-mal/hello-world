<?php 

require_once 'actions/db_connect.php';

if ($_GET['author_ID']) {
   $id = $_GET['author_ID']; 

   $sql = "SELECT * FROM author WHERE author_ID = {$id}";
   $result = $connect->query($sql);

   $data = $result->fetch_assoc();

   $connect->close();
}
?>

<!DOCTYPE html>
<html>
<head>
   <title >Edit Author</title>

   <style type= "text/css">
       fieldset {
           margin : auto;
           margin-top: 100px;
            width: 50%;
       }

       table  tr th {
           padding-top: 20px;
       }
   </style>

</head>
<body>

<fieldset>
   <legend>Update Author</legend>

   <form action="actions/a_update.php"  method="post">
       <table  cellspacing="0" cellpadding= "0">
           <tr>
               <th>First Name</th>
               <td><input type="text"  name="first_name" placeholder ="First Name" value="<?php echo $data['first_name'] ?>"  /></td>
           </tr >    
           <tr>
               <th>Last Name</th>
               <td><input type= "text" name="last_name"  placeholder="Last Name" value ="<?php echo $data['last_name'] ?>" /></td >
           </tr>
           <tr>
               <input type= "hidden" name= "id" value= "<?php echo $data['id']?>" />
               <td><button  type= "submit">Save Changes</button ></td>
               <td><a  href= "index.php"><button type="button" >Back</button ></a ></td >
           </tr>
       </table>
   </form >

</fieldset >

</body >
</html >

