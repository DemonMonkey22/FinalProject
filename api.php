<?php
class API{
    private $connect = '';
    
    function __construct()
    {
        $this->dbConnection();
    }
    
    
    
    function dbConnection(){
        $this->connect = new PDO("mysql:host=localhost;dbname=api",'root','');

    }

    function outputData(){
        $select = $this->connect->prepare("SELECT * FROM people ORDER BY id");
        if($select->execute()){
            while($row = $select->fetch(PDO::FETCH_ASSOC)) {
                $data[] = $row;
            }       
            return $data;

        }

    }


}


?>