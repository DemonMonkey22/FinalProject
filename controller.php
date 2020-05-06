<?php
if(isset($_POST["action"])){
    if($_POST["action"] == 'addNew'){
        $data = array(
            'author'     => $_POST["author"],
            'quote'      => $_POST["quote"],
            'category'      => $_POST["category"]
        );
        $client = curl_init('http://api.ruvictor.com/apiHandler.php?action=addNew');
        curl_setopt($client, CURLOPT_POST, true);
        curl_setopt($client, CURLOPT_POSTFIELDS, $data);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        curl_close($client);
 
    }
}

?>