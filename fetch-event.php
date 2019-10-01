<?php 
include "config/koneksi.php";

$data = array();

 $query = mysql_query("
 SELECT * FROM rb_kalender ORDER BY id
 ");
 while ($row = mysql_fetch_array($query)) {
   
  $data[] = array(
   'title'  => $row['title'],
   'start' => $row['startdate'],
   'end' => $row['enddate']
  );
 }

 echo json_encode($data);



  /*$sql = mysql_query("SELECT * FROM rb_kalender ORDER BY id");

  $list = array ();
  
  $result = mysql_fetch_array($sql){
 
  foreach ($result as $row) {
  	$data [] = array(
          
          'id' 			=> $row['id'];
          'title'		=> $row['title'];
          'startdate'	=> $row['startdate'];
          'enddate'		=> $row['enddate'];      
 
  	);*/

 /* $key=0;
  while ($row = mysql_fetch_array($sql)){

  	 $list[$key]['id']= $row['id'];
  	 $list[$key]['title']= $row['title'];
  	 $list[$key]['startdate']= $row['startdate'];
  	 $list[$key]['enddate']= $row['enddate'];

  	 $key++;*/



?>