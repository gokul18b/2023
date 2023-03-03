<?php
 //include("connection.php");



   function addProperty(){
    include("connection.php");




      $title = $_POST['title'];
      $detail = $_POST['detail'];
      $type = $_POST['type'];
      $price = $_POST['price'];
      $address = $_POST['address'];
      $bed = $_POST['bed'];
      $live = $_POST['live'];
      $park = $_POST['park'];
      $kit = $_POST['kit'];
      $ptype = $_POST['ptype'];
      $space = $_POST['space'];


      $sql = "INSERT INTO `properties` (`property_id`, `property_title`, `property_details`, `delivery_type`, `availablility`, `price`, `property_address`, `property_img`, `bed_room`, `liv_room`, `parking`, `kitchen`, `utility`, `property_type`, `floor_space`, `agent_id`) VALUES (NULL, '$title', '$detail', '$type', '1', '$price', '$address', 'images/properties/bed-7-1.jpg', '$bed', '$live', '$park', '$kit', 'util', '$ptype', '$space', '1');";

      if (mysqli_query($link, $sql)) {
        return "New record created successfully";
    } else {
        return "Error: " . mysqli_error($link);
    }

mysqli_close($link);
      //return $title;
   }

   echo addProperty();
?>