<!DOCTYPE html>
<html>
<head>
   <title>PHP CRUD  |  Add Author</title>

   <style type= "text/css">
       fieldset {
           margin: auto;
            margin-top: 100px;
           width: 50% ;
       }

       table tr th  {
           padding-top: 20px;
       }
</style>

</head>
<body>

<fieldset >
   <legend>Add Author</legend>

   <form  action="actions/a_create.php" method= "post">
       <table cellspacing= "0" cellpadding="0">
           <tr>
               <th>First Name</th >
               <td><input  type="text" name="first_name"  placeholder="First Name" /></td >
           </tr>    
           <tr>
               <th>Last Name</th>
               <td><input  type="text" name= "last_name" placeholder="Last Name" /></td>
           </tr>
           <tr>
               <td><button type ="submit">Insert author</button></td>
               <td ><a href= "index.php"><button  type="button">Back</ button></a></td>
           </tr >
       </table>
   </form>

</fieldset >

</body>
</html>