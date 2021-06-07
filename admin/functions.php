<?php


function confirmQuery($query_result){
    global $connection;

  if(!$query_result){
        die("query failed".mysqli_error($connection));
    }

}


function insert_categories()
{


	global $connection;

	 if(isset($_POST['submit'])){
                        $cat_title=$_POST['cat_title'];
                        if($cat_title==''|| empty($cat_title)){
                            echo "This field should not be empty";
                        }
                        else{
                            //QUERY FOR INSERT INTO CATEGORIES TABLE
                            $query="INSERT INTO categories(cat_title) VALUE('{$cat_title}')";
                            $select_category_query=mysqli_query($connection,$query);
                            if(!$select_category_query){
                                die('QUERY FAILED'.mysqli_error($connection));
                            }
                   
                        }
                        
                    }
}









function findAllcategories(){

global $connection;
	 $query= "SELECT * FROM categories";
     $select_categories=mysqli_query($connection,$query);
                   

   while($row=mysqli_fetch_array($select_categories))
          {
	        $cat_id=$row['cat_id'];
            $cat_title=$row['cat_title'];
             echo "<tr>" ;
                   echo "<td>{$cat_id}</td>";

                   echo "<td>{$cat_title}</td>" ;

                   echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>" ;
                   echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>" ;


                  echo "</tr>";
                                           
                      }
}


function deleteCateories(){

global $connection;
if(isset($_GET['delete'])){

      $the_cat_id=$_GET['delete'];
       $query="DELETE FROM categories WHERE cat_id={$the_cat_id}";
        $delete_query=mysqli_query($connection,$query);
      header("Location:categories.php");
                                    }


}



?>