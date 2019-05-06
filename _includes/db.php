<?php
  Class Connect {
	  protected $server = "127.0.0.1";
	  protected $user = "root";
	  protected $password = "";
    var $dbc;
     
    function __construct($which_db) {
      $this->db = $which_db;
    }
	   
	  // function or method declaration.
	  function connectMySql(){
		  $dbc = new mysqli($this->server,$this->user,$this->password, $this->db);
		   
		  //Status of connection.
		  if($dbc->connect_error) {
		  die("Not Connected: " .$dbc->connect_error);
      }
      
      else return $dbc;
	  }//end of function connectMysql.
	
  }// end of class connect. 
?>