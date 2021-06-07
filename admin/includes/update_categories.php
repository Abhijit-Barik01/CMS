
                    <form action="" method="post">  
                        <div class="form-group">
                            <label for="cat-title">Update Category </label>
                            <?php
                                if(isset($_GET['edit'])){
                                    $cat_id=$_GET['edit'];
                                    $query= "SELECT * FROM categories WHERE cat_id={$cat_id}";
                                         $select_categories_id=mysqli_query($connection,$query);
                   

                                        while($row=mysqli_fetch_array($select_categories_id))
                                        {

                                        $cat_id=$row['cat_id'];
                                        $cat_title=$row['cat_title'];

                                        ?>

                                        <input value="<?php if(isset($cat_title)){echo $cat_title ;} ?>"      class="form-control" type="text" name="cat_title">
                                    <?php } ?>


                          <?php  }
                          ?>
                          <?php   

                          if(isset($_POST['Update-category'])){
                                        $the_cat_title=$_POST['cat_title'];

                                        //$the_cat_id=$_POST['cat_id'];
                    $query=" UPDATE categories SET cat_title= '{$the_cat_title}' WHERE cat_id={$cat_id}";
                                        $update_query=mysqli_query($connection,$query);
                                        if(!$update_query){
                                die('QUERY FAILED'.mysqli_error($connection));
                            }
                                        
                                    }


                          ?>
                            
                            
                        </div>
                        <div class="form-group">
        
                            <input class="btn btn-primary" type="submit" name="Update-category" value="Update Category">
                        </div>


                    </form>