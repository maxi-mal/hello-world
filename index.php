<?php require_once 'actions/db_connect.php'; ?>

<!DOCTYPE html>
<html>
<head>
   <title>PHP CRUD</title>

   <style type ="text/css">
       .manageauthor {
           width : 50%;
           margin: auto;
       }

        table {
           width: 100%;
            margin-top: 20px;
       }

   </style>

</head>
<body>

<div class ="manageAuthor">
   <a href= "create.php"><button type="button" >Add Author</button></a>
   <table  border="1" cellspacing= "0" cellpadding="0">
       <thead>
           <tr>
               <th>First Name</th>
               <th >Last Name</th>
           </tr>
       </thead>
       <tbody>
           
     <?php require_once 'actions/db_connect.php'; ?>

<!DOCTYPE html>
<html>
<head>
   <title>PHP CRUD</title>

   <style type="text/css">
       .manageAuthor {
           width : 50%;
           margin: auto;
       }

        table {
           width: 100%;
            margin-top: 20px;
       }

   </style>

</head>
<body>

<div class ="manageAuthor">
   <a href= "create.php"><button type="button" >Add author</button></a>
   <table  border="1" cellspacing= "0" cellpadding="0">
       <thead>
           <tr>
               <th>First Name</th>
               <th >Last Name</th>
           </tr>
       </thead>
       <tbody>

            <?php
           $sql = "SELECT * FROM author WHERE active = 0";
           $result = $connect->query($sql);

            if($result->num_rows > 0); 
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                       <td>" .$row['first_name']." ".$row['last_name' ]."</td>
                       <td>
                           <a href='update.php?id=" .$row['id']."'><button type='button'>Edit</button></a>
                           <a href='delete.php?id=" .$row['id']."'><button type='button'>Delete</button></a>
                       </td>
                   </tr>" ;
}
            ?>

           
       </tbody>
   </table>
</div>

</body>
</html>