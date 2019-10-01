<?php 
include "config/koneksi.php";
/*$data = array();*/

$title = isset($_POST['title'])? $_POST['title'] : "";
$startdate = isset($_POST['startdate'])? $_POST['startdate'] : "";
$enddate = isset($_POST['enddate'])? $_POST['enddate'] : "";

$query = "INSERT INTO rb_kalender (title, startdate, enddate) VALUES (:title, :startdate, :enddate)";
$result = mysql_query($query);
$jajal[] =array(':title'=>$titel, 'startdate'=>$startdate, 'enddate'=>$enddate);




/*if (!$result){
      result = mysql_error($conn);
}*/

/*$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach($result as $row)
{
 $data[] = array(
  'id'   => $row["id"],
  'title'   => $row["title"],
  'startdate'   => $row["startdate"],
  'enddate'   => $row["enddate"]
 );
}

echo json_encode($data);*/


 /* $sql = mysql_query("SELECT * FROM rb_kalender ORDER BY id");

  $list = array ();
  
  $result = mysql_fetch_array($sql){
 
  foreach ($result as $row) {
  	$data [] = array(
          
          'id' 			=> $row['id'];
          'title'		=> $row['title'];
          'startdate'	=> $row['startdate'];
          'enddate'		=> $row['enddate'];      
 
  	);
*/
 /* $key=0;
  while ($row = mysql_fetch_array($sql)){

  	 $list[$key]['id']= $row['id'];
  	 $list[$key]['title']= $row['title'];
  	 $list[$key]['startdate']= $row['startdate'];
  	 $list[$key]['enddate']= $row['enddate'];

  	 $key++;*/

/* }
 echo json_encode($data);
}*/

?>