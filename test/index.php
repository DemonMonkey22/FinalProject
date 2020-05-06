<?php
require_once __DIR__  . '/config.php';
class API{
    function Select(){
        $db = new Connect;
        $users = array();
        $data = $db->prepare('SELECT * FROM people ORDER BY id');
        $data->execute();
        while($OutputData = $data->fetch(PDO::FETCH_ASSOC)){
            $people[$OutputData['id']]= array(
               'id'       => $OutputData['id'],
               'author'   => $OutputData['author'],
               'category' => $OutputData['category'],
               'quote'    => $OutputData['quote']
            );
        }

        return json_encode($people);


    }

}

$API = new API;
header('Content-Type: application/json');
echo $API->select();

?>